import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:gearpizza/common/services/api_service.dart';
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

  static const _tokenKey = 'firebase_token';
  static const _refreshTokenKey = 'refreshToken';

  AuthRepository({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    required SecureStorageService secureStorage,
    ApiService? apiService,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _secureStorage = secureStorage;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

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
      final cred = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _afterFirebaseLogin(email);
      return cred;
    } on FirebaseAuthException catch (e) {
      throw AuthServiceException(e.message ?? 'Login failed');
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
      await _afterFirebaseLogin(cred.user?.email ?? '');
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
      await _afterFirebaseLogin(cred.user?.email ?? '');
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

  Future<void> _afterFirebaseLogin(String email) async {
    await _secureStorage.writeSecureData(_refreshTokenKey, email);

    // final firebaseUid = _firebaseAuth.currentUser?.uid;
    // if (firebaseUid == null) return;

    // final userExists = await _apiService.userExists(firebaseUid: firebaseUid);

    // if (!userExists) {
    //   await _apiService.createUser(
    //     firebaseUid: firebaseUid,
    //     email: email,
    //   );
    // } else {
    //   // facoltativo: aggiorna dati utente su Directus se serve
    //   // await _apiService.updateUser(...);
    // }
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

    final directusUser = DirectusUser(
      id: "123451245",
      nome: "nome",
      cognome: "cognome",
      email: "email",
      dataCreazione: DateTime(12),
      dataAggiornamento: DateTime(12),
    );

    // final role = UserRoleService().fromRoleId(directusUser.ruoloId);

    final authUser = AuthGeaPizzaUser(
      firebaseUser: firebaseUser,
      directusUser: directusUser,
      role: Roles.admin,
    );

    if (getIt.isRegistered<AuthGeaPizzaUser>()) {
      getIt.unregister<AuthGeaPizzaUser>();
    }
    getIt.registerSingleton<AuthGeaPizzaUser>(authUser);

    return authUser;
  }
}
