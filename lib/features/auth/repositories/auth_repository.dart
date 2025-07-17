import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/common/utils/exception_handler.dart'; // contiene mapDioExceptionToCustomException(), mapFirebaseExceptionToCustomException()
import 'package:gearpizza/features/auth/models/login_refresh_request.dart';
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'package:gearpizza/common/models/login200_response_data.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/utils/directus_query_builder.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/auth/api/auth_endpoints.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final SecureStorageService _secureStorage;
  final ApiService _apiService;

  static const _tokenKey = 'firebase_token';
  static const _refreshTokenKey = 'refreshToken';
  static const _refreshTokenExpiryKey = 'refreshTokenExpiry';

  AuthRepository({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    required SecureStorageService secureStorage,
    ApiService? apiService,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _apiService = apiService ?? GetIt.I<ApiService>(),
        _secureStorage = secureStorage;

  // ────────────────────────────────────────────────────────────────
  // 1) STORAGE: Salvataggio e recupero token + scadenza
  // ────────────────────────────────────────────────────────────────

  Future<void> saveToken(String token) async {
    await _secureStorage.writeSecureData(_tokenKey, token);
  }

  Future<void> saveRefreshToken(String refreshToken) async {
    await _secureStorage.writeSecureData(_refreshTokenKey, refreshToken);
  }

  Future<void> saveRefreshExpiry(String isoExpiryDate) async {
    await _secureStorage.writeSecureData(_refreshTokenExpiryKey, isoExpiryDate);
  }

  Future<String?> getSavedToken() => _secureStorage.readSecureData(_tokenKey);

  Future<String?> getSavedRefreshToken() =>
      _secureStorage.readSecureData(_refreshTokenKey);

  Future<String?> getSavedRefreshExpiry() =>
      _secureStorage.readSecureData(_refreshTokenExpiryKey);

  Future<void> deleteSecureStorage() async {
    await _secureStorage.deleteAllSecureData();
  }

  Future<void> clearRefreshData() async {
    await _secureStorage.deleteSecureData(_refreshTokenKey);
    await _secureStorage.deleteSecureData(_refreshTokenExpiryKey);
  }

  // ────────────────────────────────────────────────────────────────
  // 2) VALIDAZIONE: Controllo validità dei token
  // ────────────────────────────────────────────────────────────────

  bool isJwtValid(String token) {
    try {
      return !JwtDecoder.isExpired(token);
    } on FormatException {
      return false;
    }
  }

  Future<bool> isRefreshValid() async {
    final isoExpiry = await getSavedRefreshExpiry();
    if (isoExpiry == null) return false;
    final expiryDate = DateTime.tryParse(isoExpiry);
    if (expiryDate == null) return false;
    return DateTime.now().isBefore(expiryDate);
  }

  // ────────────────────────────────────────────────────────────────
  // 3) INITIALIZATION: onStart all’avvio dell’app
  // ────────────────────────────────────────────────────────────────

  Future<AuthGeaPizzaUser?> onStart() async {
    try {
      final savedRefresh = await getSavedRefreshToken();
      if (savedRefresh == null || !await isRefreshValid()) {
        await deleteSecureStorage();
        return null;
      }

      final refreshRequest =
          LoginRefreshRequest((b) => b..refresh = savedRefresh);
      final serializedRequest = standardSerializers.serializeWith(
        LoginRefreshRequest.serializer,
        refreshRequest,
      );

      final response = await _apiService.post(
        AuthEndpoints.refreshToken,
        data: serializedRequest,
      );

      if (response.statusCode != 200) return null;

      final raw = response.data;
      final Map<String, dynamic> json =
          raw is String ? jsonDecode(raw) : Map<String, dynamic>.from(raw);
      final dataJson = Map<String, dynamic>.from(json['data'] as Map);

      final Login200ResponseData data = standardSerializers.deserializeWith(
        Login200ResponseData.serializer,
        dataJson,
      )!;

      final newAccess = data.accessToken;
      final newRefresh = data.refreshToken;
      final expiresMs = data.expires;

      if (newAccess == null || newRefresh == null || expiresMs == null) {
        throw AuthServiceException('Refresh token: risposta incompleta');
      }

      setAccessToken(newAccess);
      setRefreshToken(newRefresh);
      await saveToken(newAccess);
      await saveRefreshToken(newRefresh);

      final newExpiry = DateTime.now().add(Duration(milliseconds: expiresMs));
      await saveRefreshExpiry(newExpiry.toIso8601String());

      return await getAuthUser();
    } on DioException catch (e) {
      // mappo l'errore Dio in un'eccezione custom
      throw mapDioExceptionToCustomException(e);
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      // generica
      throw GenericAuthException(e.toString());
    }
  }

  // ────────────────────────────────────────────────────────────────
  // 4) POST‑LOGIN: Dopo login Firebase → Directus + salvataggio token
  // ────────────────────────────────────────────────────────────────

  Future<void> _afterFirebaseLogin({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _apiService.post(
        AuthEndpoints.login,
        data: {'email': email, 'password': password},
      );

      if (response.statusCode != 200) {
        await _firebaseAuth.signOut();
        throw UnauthorizedException();
      }

      final raw = response.data;
      final Map<String, dynamic> json =
          raw is String ? jsonDecode(raw) : Map<String, dynamic>.from(raw);
      final dataJson = Map<String, dynamic>.from(json['data'] as Map);

      final Login200ResponseData data = standardSerializers.deserializeWith(
        Login200ResponseData.serializer,
        dataJson,
      )!;

      final accessToken = data.accessToken;
      final refreshToken = data.refreshToken;
      final expiresMs = data.expires;

      if (accessToken == null || refreshToken == null || expiresMs == null) {
        await _firebaseAuth.signOut();
        throw AuthServiceException('Login Directus: token mancanti');
      }

      setAccessToken(accessToken);
      setRefreshToken(refreshToken);
      await saveToken(accessToken);
      await saveRefreshToken(refreshToken);

      final expiryDate = DateTime.now().add(Duration(milliseconds: expiresMs));
      await saveRefreshExpiry(expiryDate.toIso8601String());
    } on DioException catch (e) {
      await _firebaseAuth.signOut();
      throw mapDioExceptionToCustomException(e);
    } on FirebaseAuthException catch (e) {
      await _firebaseAuth.signOut();
      // mappo la FirebaseAuthException in un'eccezione custom
      throw mapFirebaseExceptionToCustomException(e);
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      await _firebaseAuth.signOut();
      throw GenericAuthException(e.toString());
    }
  }

  // ────────────────────────────────────────────────────────────────
  // 5) METODI DI AUTENTICAZIONE
  // ────────────────────────────────────────────────────────────────

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  Future<bool> emailAlreadyExists({required String email}) async {
    try {
      final query = DirectusQueryBuilder().fields(['id']).filter({
        'email': {'_eq': email}
      }).limit(1);
      final resp = await _apiService.get(
        AuthEndpoints.getUserByEmail(queryBuilder: query),
      );
      if (resp.statusCode != 200) {
        throw BadRequestException('Errore verifica email: ${resp.statusCode}');
      }
      final data = (resp.data as Map<String, dynamic>)['data'] as List;
      return data.isNotEmpty;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    }
  }

  Future<UserCredential> registerWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final cred = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await cred.user!.sendEmailVerification();
      return cred;
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final cred = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _afterFirebaseLogin(email: email, password: password);
      return cred;
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw LoginException('Login Google annullato dall’utente');
      }
      final googleAuth = await googleUser.authentication;
      final cred = await _firebaseAuth.signInWithCredential(
        GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        ),
      );
      await _afterFirebaseLogin(email: cred.user!.email!, password: '');
      return cred;
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    try {
      final result = await FacebookAuth.instance.login();
      if (result.status != LoginStatus.success) {
        throw LoginException('Login Facebook annullato o fallito');
      }
      final cred = await _firebaseAuth.signInWithCredential(
        FacebookAuthProvider.credential(result.accessToken!.tokenString),
      );
      await _afterFirebaseLogin(email: cred.user!.email!, password: '');
      return cred;
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      await _googleSignIn.signOut();
      await deleteSecureStorage();
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<AuthGeaPizzaUser> getAuthUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) {
      throw NotFoundException('Nessun utente autenticato');
    }

    final directusUser = DirectusUser(
      id: 'id-demo',
      nome: 'Demo',
      cognome: 'User',
      email: firebaseUser.email!,
      dataCreazione: DateTime.now(),
      dataAggiornamento: DateTime.now(),
    );

    final authUser = AuthGeaPizzaUser(
      firebaseUser: firebaseUser,
      directusUser: directusUser,
      role: Roles.user,
    );

    if (GetIt.I.isRegistered<AuthGeaPizzaUser>()) {
      GetIt.I.unregister<AuthGeaPizzaUser>();
    }
    GetIt.I.registerSingleton<AuthGeaPizzaUser>(authUser);

    return authUser;
  }

  void setAccessToken(String token) => _apiService.setAccessToken(token);
  void setRefreshToken(String token) => _apiService.setRefreshToken(token);
}
