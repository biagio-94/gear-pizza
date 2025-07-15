import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/features/auth/services/auth_service.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  AuthBloc({required AuthService authService})
      : _authService = authService,
        super(const AuthInitial()) {
    on<AuthStarted>(_onStarted);
    on<AuthLoginRequested>(_onLoginRequested);
    on<AuthRegisterRequested>(_onRegisterRequested);
    on<AuthPasswordResetRequested>(_onPasswordResetRequested);
    on<AuthGoogleSignInRequested>(_onGoogleSignInRequested);
    on<AuthFacebookSignInRequested>(_onFacebookSignInRequested);
    on<AuthEnableBiometric>(_onEnableBiometric);
    on<AuthBiometricLoginRequested>(_onBiometricLoginRequested);
    on<AuthLoggedOut>(_onLoggedOut);
    on<AuthSkipBiometric>(_onSkipBiometric);
    on<AuthResetPassEvent>(_onGoToResetPass);
    on<AuthregisterEvent>(_onGoToRegister);
    on<AuthRoleConfirmed>(_onRoleConfirmed);
    on<OnOnboardingEnd>(_onOnbCompletato);
  }

  Future<void> _onStarted(AuthStarted event, Emitter<AuthState> emit) async {
    try {
      loadingBloc.showLoading('Checking authentication status...');
      final bool bioEnabled = await _authService.isBiometricEnabled();
      final String? email = await _authService.getSavedEmail();
      if (bioEnabled && email != null) {
        emit(AuthUnauthenticatedBiometricPrompt(email: email));
      } else {
        emit(const AuthUnauthenticated());
      }
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
      emit(const AuthFailure(error: 'Initialization failed'));
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onLoginRequested(
      AuthLoginRequested event, Emitter<AuthState> emit) async {
    try {
      loadingBloc.showLoading('Logging in...');
      await _authService.login(email: event.email, password: event.password);
      emit(const AuthWaitingBiometricChoice());
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onRegisterRequested(
    AuthRegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    try {
      loadingBloc.showLoading('Registrazione in corso…');
      // 1) registro l’utente
      final user = await _authService.register(
        email: event.email,
        password: event.password,
      );
      // 2) invio mail di verifica
      await user.sendEmailVerification();
      // 3) emetto uno stato che UI/BlocListener può intercettare
      emit(const AuthEmailVerificationSent());
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onPasswordResetRequested(
      AuthPasswordResetRequested event, Emitter<AuthState> emit) async {
    try {
      loadingBloc.showLoading('Sending password reset email...');
      await _authService.resetPassword(email: event.email);
      emit(const AuthPasswordResetEmailSent());
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onGoogleSignInRequested(
    AuthGoogleSignInRequested event,
    Emitter<AuthState> emit,
  ) async {
    try {
      loadingBloc.showLoading('Signing in with Google...');
      await _authService.loginWithGoogle();
      emit(const AuthWaitingBiometricChoice());
    } on AuthServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (e) {
      final msg = e.toString();
      exceptionBloc.throwExceptionState(msg);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onFacebookSignInRequested(
      AuthFacebookSignInRequested event, Emitter<AuthState> emit) async {
    try {
      loadingBloc.showLoading('Signing in with Facebook...');
      await _authService.loginWithFacebook();
      emit(const AuthWaitingBiometricChoice());
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onEnableBiometric(
      AuthEnableBiometric event, Emitter<AuthState> emit) async {
    try {
      await _authService.setBiometricEnabled(event.enable);

      if (!event.enable) {
        await _authService.logout();
        emit(AuthBiometricsChoosed(isbioAvailable: event.enable));
      } else {
        emit(const AuthUnauthenticated());
      }
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
      emit(const AuthFailure(error: 'Failed to update biometric setting'));
    }
  }

  Future<void> _onBiometricLoginRequested(
      AuthBiometricLoginRequested event, Emitter<AuthState> emit) async {
    try {
      loadingBloc.showLoading('Authenticating with biometrics...');
      final AuthGeaPizzaUser user = await _authService.loginWithBiometric();
      if (user.firebaseUid != null) {
        final onboardingDone =
            await _authService.isOnboardingCompleted(user.firebaseUid!);
        final isRoleChosen = await _authService.isRoleChosen(user.firebaseUid!);
        emit(AuthAuthenticated(
          user: user,
          onboardingCompletato: onboardingDone,
          isRoleChoosen: isRoleChosen,
        ));
      } else {
        exceptionBloc.throwExceptionState(
            "Errore durante l'autenticazione riprova nuovamente");
      }
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
      emit(const AuthUnauthenticated());
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onSkipBiometric(
    AuthSkipBiometric event,
    Emitter<AuthState> emit,
  ) async {
    try {
      // opzionale: forziamo la disabilitazione della biometria
      await _authService.setBiometricEnabled(false);

      // recupero l’utente corrente
      final user = FirebaseAuth.instance.currentUser;

      if (user?.uid != null) {
        final AuthGeaPizzaUser authuser =
            await _authService.getAuthuser(firebaseUUID: user!.uid);
        final onboardingDone =
            await _authService.isOnboardingCompleted(user.uid);
        final isRoleChosen = await _authService.isRoleChosen(user.uid);
        emit(AuthAuthenticated(
          user: authuser,
          onboardingCompletato: onboardingDone,
          isRoleChoosen: isRoleChosen,
        ));
      } else {
        emit(const AuthUnauthenticated());
      }
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
      emit(const AuthFailure(error: 'Errore durante lo skip biometrico'));
    }
  }

  Future<void> _onLoggedOut(
      AuthLoggedOut event, Emitter<AuthState> emit) async {
    try {
      loadingBloc.showLoading('Logging out...');
      await _authService.logout();
      emit(const AuthUnauthenticated());
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onGoToResetPass(
      AuthResetPassEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthResetPasswordState());
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onGoToRegister(
      AuthregisterEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthRegisterState());
    } catch (e) {
      exceptionBloc.throwExceptionState(e.toString());
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onRoleConfirmed(
      AuthRoleConfirmed event, Emitter<AuthState> emit) async {
    final current = state;
    if (current is AuthAuthenticated) {
      if (current.user.firebaseUid != null) {
        final isRoleChosen =
            await _authService.isRoleChosen(current.user.firebaseUid!);
        emit(
          AuthAuthenticated(
            user: current.user,
            onboardingCompletato: current.onboardingCompletato,
            isRoleChoosen: isRoleChosen,
          ),
        );
      }
    }
  }

  Future<void> _onOnbCompletato(
      OnOnboardingEnd event, Emitter<AuthState> emit) async {
    final current = state;
    if (current is AuthAuthenticated) {
      if (current.user.firebaseUid != null) {
        final isRoleChosen =
            await _authService.isRoleChosen(current.user.firebaseUid!);
        final onboardingDone =
            await _authService.isOnboardingCompleted(current.user.firebaseUid!);

        emit(
          AuthAuthenticated(
            user: current.user,
            onboardingCompletato: onboardingDone,
            isRoleChoosen: isRoleChosen,
          ),
        );
      }
    }
  }
}
