import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/utils/bloc_exception_helper.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
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
    on<AuthLoginRequested>(_onLoginRequested);
    on<AuthGoogleSignInRequested>(_onGoogleSignInRequested);
    on<AuthFacebookSignInRequested>(_onFacebookSignInRequested);
    on<AuthLoggedOut>(_onLoggedOut);
    on<AuthregisterEvent>(_onGoToRegister);
    on<AuthSignAsGuest>(_onSignAsGuest);
    on<AuthSendOtp>(_onSendOtp);
    on<AuthVerifyOtp>(_onVerifyOtp);
    on<AuthClearOtpError>((event, emit) {
      final current = state;
      if (current is AuthOtpSentState && current.errorMessage != null) {
        emit(current.copyWith(errorMessage: null));
      }
    });
  }

  Future<void> _onStarted(AuthStarted event, Emitter<AuthState> emit) async {
    // Doc ExceptionHandler dentro il componente BlocExceptionHelper
    await ExecutionHelper.run(
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        emit(const AuthStartLoading());
        final AuthGeaPizzaUser? user = await _authService.onStart();
        if (user != null) {
          // Passiamo true di default per isRoleChoosen in questa versione
          // in futuro potremmo voler verificare se l'utente ha scelto un ruolo ed effettuare un onboarding
          // dove il ristoratore può creare il suo profilo, pagina pagina prodotti, ecc.
          emit(AuthAuthenticated(user: user, isRoleChoosen: true));
        } else {
          emit(const AuthUnauthenticated());
        }
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
        final AuthGeaPizzaUser authuser = await _authService.login(
            email: event.email, password: event.password);
        // Passiamo true di default per isRoleChoosen in questa versione
        // in futuro potremmo voler verificare se l'utente ha scelto un ruolo ed effettuare un onboarding
        // dove il ristoratore può creare il suo profilo, pagina pagina prodotti, ecc.
        emit(AuthAuthenticated(user: authuser, isRoleChoosen: true));
      },
    );
  }

  Future<void> _onSignAsGuest(
      AuthSignAsGuest event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Logging in...',
      showLoading: () => loadingBloc.showLoading('Logging in...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final AuthGeaPizzaUser authUser = await _authService.signAsGuest();
        // Passiamo true di default per isRoleChoosen in questa versione
        // in futuro potremmo voler verificare se l'utente ha scelto un ruolo ed effettuare un onboarding
        // dove il ristoratore può creare il suo profilo, pagina pagina prodotti, ecc.
        emit(AuthAuthenticated(user: authUser, isRoleChoosen: true));
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
        final AuthGeaPizzaUser authUser = await _authService.loginWithGoogle();
        // Passiamo true di default per isRoleChoosen in questa versione
        // in futuro potremmo voler verificare se l'utente ha scelto un ruolo ed effettuare un onboarding
        // dove il ristoratore può creare il suo profilo, pagina pagina prodotti, ecc.
        emit(AuthAuthenticated(user: authUser, isRoleChoosen: true));
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
        final AuthGeaPizzaUser authUser =
            await _authService.loginWithFacebook();
        // Passiamo true di default per isRoleChoosen in questa versione
        // in futuro potremmo voler verificare se l'utente ha scelto un ruolo ed effettuare un onboarding
        // dove il ristoratore può creare il suo profilo, pagina pagina prodotti, ecc.
        emit(AuthAuthenticated(user: authUser, isRoleChoosen: true));
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

  Future<void> _onSendOtp(AuthSendOtp event, Emitter<AuthState> emit) async {
    await ExecutionHelper.run(
      loadingText: 'Sending OTP...',
      showLoading: () => loadingBloc.showLoading('Sending OTP...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        await _authService.sendOtp(phone: event.phoneNumber);
        emit(AuthOtpSentState(
          phoneNumber: event.phoneNumber,
          errorMessage: null,
        ));
      },
    );
  }

  Future<void> _onVerifyOtp(
    AuthVerifyOtp event,
    Emitter<AuthState> emit,
  ) async {
    await ExecutionHelper.run(
      loadingText: 'Verifying OTP...',
      showLoading: () => loadingBloc.showLoading('Verifying OTP...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final bool isVerified = await _authService.verifyOtp(
          phone: event.phoneNumber,
          otp: event.otpCode,
        );

        if (isVerified) {
          final AuthGeaPizzaUser authUser = await _authService.signWithOTP();
          emit(AuthAuthenticated(user: authUser, isRoleChoosen: true));
        } else {
          // Se già sei in AuthOtpSentState (hai inviato l'OTP), fai copyWith:
          final current = state;
          if (current is AuthOtpSentState) {
            emit(current.copyWith(
              errorMessage: 'OTP verification failed. Please try again.',
            ));
          } else {
            emit(AuthOtpSentState(
              phoneNumber: event.phoneNumber,
              errorMessage: 'OTP verification failed. Please try again.',
            ));
          }
        }
      },
    );
  }

  Future<void> _onGoToRegister(
      AuthregisterEvent event, Emitter<AuthState> emit) async {
    emit(const AuthRegisterState());
  }
}
