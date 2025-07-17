import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/common/services/biometric_auth_service.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/repositories/auth_repository.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';

/// A higher‑level service to handle authentication flows, including biometrics.
class AuthService {
  final AuthRepository _repository;

  AuthService({
    required AuthRepository repository,
    required BiometricAuthService biometricService,
  }) : _repository = repository;

  /// All’avvio dell’app: delego tutta la logica al repository
  Future<AuthGeaPizzaUser?> onStart() async {
    try {
      return await _repository.onStart();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  Future<bool> emailAlreadyExists({required String email}) async {
    try {
      return await _repository.emailAlreadyExists(email: email);
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs in a user with email & password.
  Future<AuthGeaPizzaUser> login({
    required String email,
    required String password,
  }) async {
    try {
      return await _repository.signInWithEmail(
        email: email,
        password: password,
      );
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs in using Google OAuth.
  Future<AuthGeaPizzaUser> loginWithGoogle() async {
    try {
      return await _repository.signInWithGoogle();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs in using Facebook OAuth.
  Future<AuthGeaPizzaUser> loginWithFacebook() async {
    try {
      return await _repository.signInWithFacebook();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  Future<AuthGeaPizzaUser> getAuthuser() async {
    try {
      return await _repository.getAuthUser();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs out the current user and clears stored credentials.
  Future<void> logout() async {
    try {
      await _repository.signOut();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  Future<bool> isRoleChosen(String uid) async {
    // Qui potremmo controllare se l'utente ha scelto un ruolo specifico
    // ad esempio verificando un campo nel database o in secure storage.
    // Per ora ritorno true come placeholder.
    // In un'app reale, questa logica dovrebbe essere implementata in modo
    // da verificare se l'utente ha completato la scelta del ruolo.
    return true;
  }

  /// Returns the current authenticated user, or null.
  User? get currentUser => _repository.currentUser;

  /// Exposes auth state change stream.
  Stream<User?> get authStateChanges => _repository.authStateChanges;
}
