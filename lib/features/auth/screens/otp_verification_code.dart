import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/loading/loading_screen.dart';
import 'package:gearpizza/common/utils/show_error_dialog.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';
import 'package:gearpizza/features/auth/bloc/auth_state.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  StreamController<ErrorAnimationType>? _errorController;
  String _currentOtp = '';
  Timer? _timer;
  int _secondsLeft = 30;

  bool get _isResendEnabled => _secondsLeft == 0;
  bool get _isOtpComplete => _currentOtp.length == 4;

  @override
  void initState() {
    super.initState();
    _errorController = StreamController<ErrorAnimationType>();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _errorController?.close();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() => _secondsLeft = 30);
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_secondsLeft == 0) {
        t.cancel();
      } else {
        setState(() => _secondsLeft--);
      }
    });
  }

  void _submitOtp(String phoneNumber) {
    context.read<AuthBloc>().add(
          AuthVerifyOtp(
            phoneNumber: phoneNumber,
            otpCode: _currentOtp,
          ),
        );
  }

  void _onResendPressed(String phoneNumber) {
    context.read<AuthBloc>().add(
          AuthSendOtp(phoneNumber: phoneNumber),
        );
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final authState = context.watch<AuthBloc>().state;
    // Se non siamo nello stato AuthOtpSentState, torniamo una schermata vuota o di caricamento
    if (authState is! AuthOtpSentState) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    final phoneNumber = authState.phoneNumber;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Verifica OTP'),
        backgroundColor: theme.primaryColor,
      ),
      body: SafeArea(
        child: MultiBlocListener(
          listeners: [
            BlocListener<LoadingBloc, LoadingState>(
              listener: (_, state) {
                if (state.status == LoadingStatus.loading) {
                  LoadingScreen().show(
                    context: context,
                    text: state.loadingText ?? 'Attendi...',
                    showLogoAnimation: false,
                  );
                } else {
                  LoadingScreen().hide();
                }
              },
            ),
            BlocListener<ExceptionBloc, ExceptionState>(
              listener: (_, state) {
                if (state.message.isNotEmpty) {
                  showErrorDialog(context, state.message);
                }
              },
            ),
            BlocListener<AuthBloc, AuthState>(
              listener: (_, state) {
                if (state is AuthOtpSentState && state.errorMessage != null) {
                  // scuote i campi in caso di errore
                  _errorController?.add(ErrorAnimationType.shake);
                }
              },
            ),
          ],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 48),
                Text(
                  'Inserisci il codice a 4 cifre',
                  style: theme.textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Abbiamo inviato un SMS al numero $phoneNumber',
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  autoFocus: true,
                  animationType: AnimationType.fade,
                  cursorColor: theme.primaryColor,
                  keyboardType: TextInputType.number,
                  errorAnimationController: _errorController,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 60,
                    fieldWidth: 60,
                    activeFillColor: Colors.white,
                    selectedColor: theme.primaryColor,
                    activeColor: Colors.grey,
                    inactiveColor: Colors.grey[300]!,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onChanged: (value) {
                    setState(() {
                      _currentOtp = value;
                    });
                  },
                  onCompleted: (_) {
                    _submitOtp(phoneNumber);
                  },
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: _isResendEnabled
                      ? () => _onResendPressed(phoneNumber)
                      : null,
                  child: Text(
                    _isResendEnabled
                        ? 'Invia di nuovo'
                        : 'Rinvia tra $_secondsLeft s',
                    style: TextStyle(
                      color:
                          _isResendEnabled ? theme.primaryColor : Colors.grey,
                    ),
                  ),
                ),
                const Spacer(),
                CustomButton(
                  label: 'Conferma',
                  disabled: !_isOtpComplete,
                  onPressed: () => _submitOtp(phoneNumber),
                  rounded: true,
                  type: ButtonType.greenFilled,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
