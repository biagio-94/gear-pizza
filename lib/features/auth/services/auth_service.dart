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
  final BiometricAuthService _biometricService;

  AuthService({
    required AuthRepository repository,
    required BiometricAuthService biometricService,
  })  : _repository = repository,
        _biometricService = biometricService;

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

  /// Registers a user and returns the Firebase [User].
  Future<User> register({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _repository.registerWithEmail(
        email: email,
        password: password,
      );
      return credential.user!;
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
  Future<User> login({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _repository.signInWithEmail(
        email: email,
        password: password,
      );
      return credential.user!;
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

  /// Sends a password reset email.
  Future<void> resetPassword({required String email}) async {
    try {
      await _repository.sendPasswordResetEmail(email: email);
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
  Future<User> loginWithGoogle() async {
    try {
      final credential = await _repository.signInWithGoogle();
      return credential.user!;
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
  Future<User> loginWithFacebook() async {
    try {
      final credential = await _repository.signInWithFacebook();
      return credential.user!;
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

  /// Attempts biometric login.
  Future<AuthGeaPizzaUser> loginWithBiometric() async {
    try {
      final isSupported = await _biometricService.isDeviceSupported();
      final hasSetup = await _biometricService.checkBiometricSetup();
      if (!isSupported || !hasSetup) {
        throw BiometricLoginException();
      }

      final verified = await _biometricService.authenticateWithBiometrics();
      if (!verified) {
        throw BiometricLoginException();
      }

      final firebaseUUID = FirebaseAuth.instance.currentUser?.uid;
      if (firebaseUUID != null) {
        return await getAuthuser();
      }

      throw LoginException(
          'Sessione non valida, effettua manualmente il login');
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

  Future<bool> isOnboardingCompleted(String uid) async {
    return true;
  }

  Future<bool> isRoleChosen(String uid) async {
    return true;
  }

  /// Returns the current authenticated user, or null.
  User? get currentUser => _repository.currentUser;

  /// Exposes auth state change stream.
  Stream<User?> get authStateChanges => _repository.authStateChanges;
}
