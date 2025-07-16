import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/utils/directus_query_builder.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/auth/api/auth_endpoints.dart';
import 'package:gearpizza/features/auth/models/login_refresh_request.dart';
import 'package:gearpizza/features/auth/models/login_response.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/utils/services_setup.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final SecureStorageService _secureStorage;
  final ApiService _apiService;

  static const _tokenKey = 'firebase_token';
  static const _refreshTokenKey = 'refreshToken';

  AuthRepository({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    required SecureStorageService secureStorage,
    ApiService? apiService,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _apiService = apiService ?? GetIt.I<ApiService>(),
        _secureStorage = secureStorage;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  /// All’avvio dell’app controllo se ho un refresh token valido:
  /// - se è assente o scaduto: cancello lo storage e lancio LoginException
  /// - altrimenti invio la chiamata di refresh, aggiorno i token e restituisco l’utente
  Future<AuthGeaPizzaUser?> onStart() async {
    try {
      // 1) Leggo il refresh token dallo storage sicuro
      final String? savedRefresh = await getSavedRefreshToken();
      if (savedRefresh == null || !await isTokenValid(token: savedRefresh)) {
        // non ho un token valido → svuoto tutto e forzo il login
        await deleteSecureStorage();
        throw LoginException('Sessione scaduta, effettua nuovamente l’accesso');
      }

      // 2) Preparo il body per la chiamata di refresh
      final refreshRequest =
          LoginRefreshRequest((b) => b..refresh = savedRefresh);
      final serializedRequest = standardSerializers.serializeWith(
        LoginRefreshRequest.serializer,
        refreshRequest,
      );

      // 3) Chiamo l’endpoint di refresh
      final Response response = await _apiService.post(
        AuthEndpoints.refreshToken,
        data: serializedRequest,
      );

      // se non ho 200 OK, restituisco null
      if (response.statusCode != 200) return null;

      // deserializzo e salvo i token come prima...
      final refreshResp = standardSerializers.deserializeWith(
        LoginResponse.serializer,
        response.data,
      );
      final newAccess = refreshResp?.token;
      final newRefresh = refreshResp?.refreshToken;
      if (newAccess == null || newRefresh == null) {
        throw AuthServiceException('Refresh token: risposta incompleta');
      }
      setAccessToken(newAccess);
      setRefreshToken(newRefresh);

      // se tutto ok, restituisco l’utente
      return await getAuthUser();
    } on AuthServiceException {
      // se è già un AuthServiceException, lo rilancio così com’è
      rethrow;
    } catch (e) {
      // qualunque altra eccezione la wrappo in AuthServiceException
      throw AuthServiceException('Errore inizializzazione: $e');
    }
  }

  /// Restituisce `true` se esiste già un utente con [email].
  Future<bool> emailAlreadyExists({required String email}) async {
    try {
      final query = DirectusQueryBuilder().fields(['id']).filter({
        'email': {'_eq': email},
      }).limit(1);

      final endpoint = AuthEndpoints.getUserByEmail(queryBuilder: query);
      final resp = await _apiService.get(endpoint);

      if (resp.statusCode != 200) {
        throw Exception('Errore verifica email: ${resp.statusCode}');
      }

      // La Directus SDK/ApiService ti restituisce JSON decodificato in .data
      final data = (resp.data as Map<String, dynamic>)['data'] as List<dynamic>;
      return data.isNotEmpty;
    } catch (e) {
      throw Exception('Errore durante la verifica email: $e');
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
      throw AuthServiceException(e.message ?? 'Registration failed');
    }
  }

  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      // 1) Login a Firebase
      final cred = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // 2) Mock per impossibilità di fare get senza access token
      // In un'app reale, qui chiamerei un servizio creato a DOC su Directus per autenticarmi con idFirebase o tokenFirebase validatoa backend
      // e gestiresti i token come nel metodo _afterFirebaseLogin
      await _afterFirebaseLogin(
          email: "biagio@gearpizza.it", password: "Q]T%;mG1)R58");

      return cred;
    } on FirebaseAuthException catch (e) {
      // login Firebase fallito
      throw AuthServiceException(e.message ?? 'Login Firebase fallito');
    }
  }

  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw AuthServiceException(e.message ?? 'Reset email failed');
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) throw AuthServiceException('Sign-in aborted');
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final cred = await _firebaseAuth.signInWithCredential(credential);

      // 2) Mock per impossibilità di fare get senza access token
      // In un'app reale, qui chiamerei un servizio creato a DOC su Directus per autenticarmi con idFirebase o tokenFirebase validatoa backend
      // e gestiresti i token come nel metodo _afterFirebaseLogin
      await _afterFirebaseLogin(
          email: "biagio@gearpizza.it", password: "Q]T%;mG1)R58");
      return cred;
    } on FirebaseAuthException catch (e) {
      throw AuthServiceException(e.message ?? 'Google sign-in failed');
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    try {
      final result = await FacebookAuth.instance.login();
      if (result.status != LoginStatus.success) {
        if (result.status == LoginStatus.cancelled) {
          throw AuthServiceException('Facebook sign-in cancelled');
        } else {
          throw AuthServiceException(
              result.message ?? 'Facebook sign-in failed');
        }
      }

      final cred = await _firebaseAuth.signInWithCredential(
        FacebookAuthProvider.credential(result.accessToken!.tokenString),
      );
      // 2) Mock per impossibilità di fare get senza access token
      // In un'app reale, qui chiamerei un servizio creato a DOC su Directus per autenticarmi con idFirebase o tokenFirebase validatoa backend
      // e gestiresti i token come nel metodo _afterFirebaseLogin
      await _afterFirebaseLogin(
          email: "biagio@gearpizza.it", password: "Q]T%;mG1)R58");
      return cred;
    } on FirebaseAuthException catch (e) {
      throw AuthServiceException(e.message ?? 'Facebook sign-in failed');
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      await _googleSignIn.signOut();
      await clearSavedToken();
      await clearSavedRefreshoken();
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  Future<String?> getSavedToken() => _secureStorage.readSecureData(_tokenKey);
  Future<String?> getSavedRefreshToken() =>
      _secureStorage.readSecureData(_refreshTokenKey);

  Future<void> clearSavedToken() => _secureStorage.deleteSecureData(_tokenKey);
  Future<void> clearSavedRefreshoken() =>
      _secureStorage.deleteSecureData(_refreshTokenKey);

  Future<void> _afterFirebaseLogin({
    required String email,
    required String password,
  }) async {
    try {
      // 1) Preparo il payload per il login Directus
      final loginData = {
        'email': email,
        'password': password,
      };

      // 2) Chiamo l’endpoint Directus di login
      final Response response = await _apiService.post(
        AuthEndpoints.login, // es. '/auth/login'
        data: loginData,
      );

      // 3) Se non ho 200 OK, rollback: logout Firebase + errore
      if (response.statusCode != 200) {
        await _firebaseAuth.signOut();
        throw AuthServiceException(
          'Directus login fallito: ${response.statusCode}',
        );
      }

      // 4) Deserializzo la risposta
      final loginResp = standardSerializers.deserializeWith(
        LoginResponse.serializer,
        response.data,
      );
      final accessToken = loginResp?.token;
      final refreshToken = loginResp?.refreshToken;

      if (accessToken == null || refreshToken == null) {
        await _firebaseAuth.signOut();
        throw AuthServiceException('Login Directus: token mancanti');
      }

      // 5) Imposto i token nell’ApiService e nello storage sicuro
      setAccessToken(accessToken);
      setRefreshToken(refreshToken);
      await saveToken(accessToken);
      await saveRefreshToken(refreshToken);
    } on DioException catch (dioErr) {
      await _firebaseAuth.signOut();
      throw AuthServiceException(
        'Errore rete Directus: ${dioErr.message}',
      );
    } catch (e) {
      // qualsiasi altro errore
      await _firebaseAuth.signOut();
      throw AuthServiceException('Errore post-login: $e');
    }
  }

  void setAccessToken(String authToken) {
    _apiService.setAccessToken(authToken);
  }

  void setRefreshToken(String refreshToken) {
    _apiService.setRefreshToken(refreshToken);
  }

  Future<void> deleteSecureStorage() async {
    try {
      await _secureStorage.deleteAllSecureData();
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  Future<bool> isTokenValid({required String token}) async {
    return !JwtDecoder.isExpired(token);
  }

  Future<void> saveToken(String token) async {
    await _secureStorage.writeSecureData(_tokenKey, token);
  }

  Future<void> saveRefreshToken(String refreshToken) async {
    await _secureStorage.writeSecureData(_refreshTokenKey, refreshToken);
  }

  Future<AuthGeaPizzaUser> getAuthUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) {
      throw AuthServiceException('Nessun utente autenticato');
    }
    // Simulazione di un utente Directus, in un'app reale lo otterrei tramire currentUser salvato su tabella Users su directus

    final directusUser = DirectusUser(
      id: "123451245",
      nome: "Biagio",
      cognome: "Ferro",
      email: "ferro.biagio@gmail.com",
      dataCreazione: DateTime(12),
      dataAggiornamento: DateTime(12),
    );

    // final role = UserRoleService().fromRoleId(directusUser.ruoloId);

    final authUser = AuthGeaPizzaUser(
      firebaseUser: firebaseUser,
      directusUser: directusUser,
      role: Roles.user,
    );

    if (getIt.isRegistered<AuthGeaPizzaUser>()) {
      getIt.unregister<AuthGeaPizzaUser>();
    }
    getIt.registerSingleton<AuthGeaPizzaUser>(authUser);

    return authUser;
  }
}
