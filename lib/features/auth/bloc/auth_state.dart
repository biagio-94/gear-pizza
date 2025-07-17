// auth_state.dart
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';

@immutable
abstract class AuthState extends Equatable {
  const AuthState();
  @override
  List<Object?> get props => [];
}

/// Initial
class AuthInitial extends AuthState {
  const AuthInitial();
}

/// Unauthenticated
class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();
}

/// Authenticated
class AuthAuthenticated extends AuthState {
  final AuthGeaPizzaUser user;
  final bool isRoleChoosen;
  const AuthAuthenticated({
    required this.user,
    required this.isRoleChoosen,
  });
  @override
  List<Object?> get props => [user, isRoleChoosen];
}

/// Password reset email sent
class AuthPasswordResetEmailSent extends AuthState {
  const AuthPasswordResetEmailSent();
}

/// Verification email sent after registration
class AuthEmailVerificationSent extends AuthState {
  const AuthEmailVerificationSent();
}

/// Event when user confirms their email verification link
class AuthEmailVerified extends AuthState {
  const AuthEmailVerified();
}

class AuthResetPasswordState extends AuthState {
  const AuthResetPasswordState();
}

class AuthRegisterState extends AuthState {
  final bool isEmailAlreadyRegistered;
  const AuthRegisterState({this.isEmailAlreadyRegistered = false});
  @override
  List<Object?> get props => [isEmailAlreadyRegistered];
}

class AuthOtpSentState extends AuthState {
  final String phoneNumber;
  final String? errorMessage;
  const AuthOtpSentState({required this.phoneNumber, this.errorMessage});
  @override
  List<Object?> get props => [phoneNumber];
}
