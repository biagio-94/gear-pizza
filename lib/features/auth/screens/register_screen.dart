import 'dart:async';
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/components/loading/loading_screen.dart';
import 'package:gearpizza/common/utils/biometric_prompt_util.dart';
import 'package:gearpizza/common/utils/show_error_dialog.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';
import 'package:gearpizza/features/auth/bloc/auth_state.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  late final AnimationController _animController;
  late final Animation<double> _fadeIn;

  bool _waitingVerification = false;
  Timer? _verificationTimer;

  void _startEmailVerificationPolling() {
    final auth = FirebaseAuth.instance;
    _verificationTimer =
        Timer.periodic(const Duration(seconds: 5), (timer) async {
      await auth.currentUser?.reload();
      final isVerified = auth.currentUser?.emailVerified ?? false;
      if (isVerified) {
        timer.cancel();
        context.read<AuthBloc>().add(
              AuthLoginRequested(
                email: _emailController.text.trim(),
                password: _passwordController.text.trim(),
              ),
            );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..forward();

    _fadeIn = CurvedAnimation(
      parent: _animController,
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    _verificationTimer?.cancel();
    _animController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: MultiBlocListener(
              listeners: [
                BlocListener<LoadingBloc, LoadingState>(
                  listener: (_, state) {
                    if (state.status == LoadingStatus.loading) {
                      LoadingScreen().show(
                        context: context,
                        text: state.loadingText ?? 'Creazione account...',
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
                  listener: (context, state) {
                    if (state is AuthEmailVerificationSent) {
                      setState(() {
                        _waitingVerification = true;
                      });
                      _startEmailVerificationPolling();
                    }
                  },
                ),
              ],
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                children: [
                  const SizedBox(height: 32),
                  FadeTransition(
                    opacity: _fadeIn,
                    child: Center(
                      child: Image.asset(
                        'assets/icon/hyperfit_logo.png',
                        width: 160,
                        height: 160,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  if (_waitingVerification)
                    Column(
                      children: const [
                        SizedBox(height: 48),
                        CircularProgressIndicator(),
                        SizedBox(height: 24),
                        Text(
                          'Siamo in attesa che verifichi la tua email...',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    )
                  else
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomTextInput(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            labelText: 'Email',
                            validator: (value) => (value?.isEmpty ?? true)
                                ? 'Campo obbligatorio'
                                : null,
                          ),
                          const SizedBox(height: 16),
                          CustomTextInput(
                            controller: _passwordController,
                            password: true,
                            labelText: 'Password',
                            validator: (value) => (value?.isEmpty ?? true)
                                ? 'Campo obbligatorio'
                                : null,
                          ),
                          const SizedBox(height: 16),
                          CustomTextInput(
                            controller: _confirmPasswordController,
                            password: true,
                            labelText: 'Conferma Password',
                            validator: (value) {
                              if (value?.isEmpty ?? true)
                                return 'Campo obbligatorio';
                              if (value != _passwordController.text) {
                                return 'Le password non coincidono';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 24),
                          Center(
                            child: CustomButton(
                              label: 'REGISTRATI',
                              width: WideButton.extraWide,
                              type: ButtonType.whiteFilled,
                              onPressed: _onRegister,
                            ),
                          ),
                          const SizedBox(height: 24),
                          TextButton(
                            onPressed: () =>
                                context.read<AuthBloc>().add(AuthStarted()),
                            child: const Text(
                              'Hai già un account? Accedi',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onRegister() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(
            AuthRegisterRequested(
              email: _emailController.text.trim(),
              password: _passwordController.text.trim(),
            ),
          );
    } else {
      showErrorDialog(context, 'Correggi gli errori nel form.');
    }
  }
}
