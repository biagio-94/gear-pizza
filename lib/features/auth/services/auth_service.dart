import 'package:firebase_auth/firebase_auth.dart';
import 'package:gearpizza/common/services/biometric_auth_service.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/repositories/auth_repository.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';

/// A higher-level service to handle authentication flows, including biometrics.
class AuthService {
  final AuthRepository _repository;
  final BiometricAuthService _biometricService;

  AuthService({
    required AuthRepository repository,
    required BiometricAuthService biometricService,
  })  : _repository = repository,
        _biometricService = biometricService;

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
    } catch (e) {
      throw AuthServiceException(e.toString());
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
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  /// Sends a password reset email.
  Future<void> resetPassword({required String email}) async {
    try {
      await _repository.sendPasswordResetEmail(email: email);
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  /// Logs in using Google OAuth.
  Future<User> loginWithGoogle() async {
    try {
      final credential = await _repository.signInWithGoogle();
      return credential.user!;
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  /// Logs in using Facebook OAuth.
  Future<User> loginWithFacebook() async {
    try {
      final credential = await _repository.signInWithFacebook();
      return credential.user!;
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  /// Attempts biometric login. If biometrics succeed, returns the
  /// current Firebase user session without re-entering credentials.
  Future<AuthGeaPizzaUser> loginWithBiometric() async {
    try {
      // 1. Ensure device supports and is configured
      final isSupported = await _biometricService.isDeviceSupported();
      final hasSetup = await _biometricService.checkBiometricSetup();
      if (!isSupported || !hasSetup) {
        throw AuthServiceException('Biometric authentication not available');
      }

      // 2. Prompt biometric authentication
      final verified = await _biometricService.authenticateWithBiometrics();
      if (!verified) {
        throw AuthServiceException('Biometric authentication failed');
      }

      // 3. Retrieve existing Firebase user session
      final firebaseUUID = FirebaseAuth.instance.currentUser?.uid;

      if (firebaseUUID != null) {
        // 3. Retrieve existing Firebase user session
        final AuthGeaPizzaUser user =
            await getAuthuser(firebaseUUID: firebaseUUID);
        return user;
      }

      // 4. Session expired or no active session
      throw AuthServiceException('Session expired, please login manually');
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  Future<AuthGeaPizzaUser> getAuthuser({required String firebaseUUID}) async {
    try {
      return await _repository.getAuthUser();
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  /// Enables or disables biometric login and stores preference.
  Future<void> setBiometricEnabled(bool enabled) async {
    try {
      if (enabled) {
        // Before enabling, ensure device and setup
        final supported = await _biometricService.isDeviceSupported();
        final setup = await _biometricService.checkBiometricSetup();
        if (!supported || !setup) {
          throw AuthServiceException(
              'Device does not support biometric authentication or not configured');
        }
      }
      await _repository.setBiometricEnabled(enabled);
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  /// Checks if biometric login is enabled.
  Future<bool> isBiometricEnabled() async {
    try {
      return await _repository.isBiometricEnabled();
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  /// Checks if biometric login is enabled.
  Future<String?> getSavedEmail() async {
    try {
      return await _repository.getSavedEmail();
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  /// Logs out the current user and clears stored credentials.
  Future<void> logout() async {
    try {
      await _repository.signOut();
      // Clear any biometric token if needed
      await _repository.clearSavedToken();
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      throw AuthServiceException(e.toString());
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
