// auth_event.dart
import 'package:flutter/foundation.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

/// App start
class AuthStarted extends AuthEvent {
  const AuthStarted();
}

/// Login with email/password
class AuthLoginRequested extends AuthEvent {
  final String email;
  final String password;
  const AuthLoginRequested({required this.email, required this.password});
}

/// Enable/disable biometric
class AuthEnableBiometric extends AuthEvent {
  final bool enable;
  const AuthEnableBiometric(this.enable);
}

/// Biometric login
class AuthBiometricLoginRequested extends AuthEvent {
  const AuthBiometricLoginRequested();
}

/// Register
class AuthRegisterRequested extends AuthEvent {
  final String email;
  final String password;
  const AuthRegisterRequested({required this.email, required this.password});
}

/// Password reset
class AuthPasswordResetRequested extends AuthEvent {
  final String email;
  const AuthPasswordResetRequested({required this.email});
}

/// Google sign-in
class AuthGoogleSignInRequested extends AuthEvent {
  const AuthGoogleSignInRequested();
}

/// Facebook sign-in
class AuthFacebookSignInRequested extends AuthEvent {
  const AuthFacebookSignInRequested();
}

/// Logout
class AuthLoggedOut extends AuthEvent {
  const AuthLoggedOut();
}

class AuthSkipBiometric extends AuthEvent {
  const AuthSkipBiometric();
}

class AuthResetPassEvent extends AuthEvent {
  const AuthResetPassEvent();
}

class AuthregisterEvent extends AuthEvent {
  const AuthregisterEvent();
}

class AuthRoleConfirmed extends AuthEvent {}

class OnOnboardingEnd extends AuthEvent {}
