import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/utils/bloc_exception_helper.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/features/auth/services/auth_service.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  AuthBloc({required AuthService authService})
      : _authService = authService,
        super(const AuthInitial()) {
    on<AuthStarted>(_onStarted);
    on<AuthRegisterEmailStep>(_onEmailSet);
    on<AuthLoginRequested>(_onLoginRequested);
    on<AuthRegisterRequested>(_onRegisterRequested);
    on<AuthPasswordResetRequested>(_onPasswordResetRequested);
    on<AuthGoogleSignInRequested>(_onGoogleSignInRequested);
    on<AuthFacebookSignInRequested>(_onFacebookSignInRequested);
    on<AuthLoggedOut>(_onLoggedOut);
    on<AuthResetPassEvent>(_onGoToResetPass);
    on<AuthregisterEvent>(_onGoToRegister);
    on<AuthRoleConfirmed>(_onRoleConfirmed);
  }

  Future<void> _onStarted(AuthStarted event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Checking authentication status...',
      showLoading: () =>
          loadingBloc.showLoading('Checking authentication status...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final user = await _authService.onStart();
        if (user != null) {
          final chosen = await _authService.isRoleChosen(user.firebaseUid!);
          emit(AuthAuthenticated(user: user, isRoleChoosen: chosen));
        } else {
          emit(const AuthUnauthenticated());
        }
      },
    );
  }

  Future<void> _onEmailSet(
      AuthRegisterEmailStep event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Verifying email...',
      showLoading: () => loadingBloc.showLoading('Verifying email...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final exists =
            await _authService.emailAlreadyExists(email: event.email);
        if (exists) emit(const AuthRegisterState());
      },
    );
  }

  Future<void> _onLoginRequested(
      AuthLoginRequested event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Logging in...',
      showLoading: () => loadingBloc.showLoading('Logging in...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        await _authService.login(email: event.email, password: event.password);
        final user = await _authService.getAuthuser();
        final chosen = await _authService.isRoleChosen(user.firebaseUid!);
        emit(AuthAuthenticated(user: user, isRoleChoosen: chosen));
      },
    );
  }

  Future<void> _onRegisterRequested(
      AuthRegisterRequested event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Registering...',
      showLoading: () => loadingBloc.showLoading('Registering...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final user = await _authService.register(
          email: event.email,
          password: event.password,
        );
        await user.sendEmailVerification();
        emit(const AuthEmailVerificationSent());
      },
    );
  }

  Future<void> _onPasswordResetRequested(
      AuthPasswordResetRequested event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Sending reset email...',
      showLoading: () => loadingBloc.showLoading('Sending reset email...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        await _authService.resetPassword(email: event.email);
        emit(const AuthPasswordResetEmailSent());
      },
    );
  }

  Future<void> _onGoogleSignInRequested(
      AuthGoogleSignInRequested event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Signing in with Google...',
      showLoading: () => loadingBloc.showLoading('Signing in with Google...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        await _authService.loginWithGoogle();
        final user = await _authService.getAuthuser();
        final chosen = await _authService.isRoleChosen(user.firebaseUid!);
        emit(AuthAuthenticated(user: user, isRoleChoosen: chosen));
      },
    );
  }

  Future<void> _onFacebookSignInRequested(
      AuthFacebookSignInRequested event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Signing in with Facebook...',
      showLoading: () => loadingBloc.showLoading('Signing in with Facebook...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        await _authService.loginWithFacebook();
        final user = await _authService.getAuthuser();
        final chosen = await _authService.isRoleChosen(user.firebaseUid!);
        emit(AuthAuthenticated(user: user, isRoleChoosen: chosen));
      },
    );
  }

  Future<void> _onLoggedOut(
      AuthLoggedOut event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Logging out...',
      showLoading: () => loadingBloc.showLoading('Logging out...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        await _authService.logout();
        emit(const AuthUnauthenticated());
      },
    );
  }

  Future<void> _onGoToResetPass(
      AuthResetPassEvent event, Emitter<AuthState> emit) async {
    emit(const AuthResetPasswordState());
  }

  Future<void> _onGoToRegister(
      AuthregisterEvent event, Emitter<AuthState> emit) async {
    emit(const AuthRegisterState());
  }

  Future<void> _onRoleConfirmed(
      AuthRoleConfirmed event, Emitter<AuthState> emit) async {
    final current = state;
    if (current is AuthAuthenticated && current.user.firebaseUid != null) {
      final chosen = await _authService.isRoleChosen(current.user.firebaseUid!);
      emit(AuthAuthenticated(user: current.user, isRoleChoosen: chosen));
    }
  }
}
