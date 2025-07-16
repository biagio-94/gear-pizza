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

class AuthResetPassEvent extends AuthEvent {
  const AuthResetPassEvent();
}

class AuthregisterEvent extends AuthEvent {
  const AuthregisterEvent();
}

class AuthRoleConfirmed extends AuthEvent {}
