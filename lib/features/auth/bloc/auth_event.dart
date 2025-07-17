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

class AuthregisterEvent extends AuthEvent {
  const AuthregisterEvent();
}

class AuthSignAsGuest extends AuthEvent {
  const AuthSignAsGuest();
}

class AuthSendOtp extends AuthEvent {
  final String phoneNumber;
  const AuthSendOtp({required this.phoneNumber});
}

class AuthVerifyOtp extends AuthEvent {
  final String phoneNumber;
  final String otpCode;
  const AuthVerifyOtp({required this.phoneNumber, required this.otpCode});
}

class AuthClearOtpError extends AuthEvent {}
