import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/custom_icon_button.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/components/loading/loading_screen.dart';
import 'package:gearpizza/common/components/social_buttons.dart';
import 'package:gearpizza/common/components/custom_switch.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/common/utils/show_error_dialog.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';
import 'package:gearpizza/features/auth/bloc/auth_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _idFocusNode = FocusNode();

  late final AnimationController _animController;
  late final Animation<double> _logoAnimation;
  late final Animation<double> _fieldsAnimation;

  bool _showPasswordField = false;
  bool _bioAvailable = false;

  // Nuovi flags per lo switch
  bool isSupported = false;
  bool isActive = false;
  bool _isFirstLogin = false;
  bool isReferente = false;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..forward();

    _logoAnimation = CurvedAnimation(
      parent: _animController,
      curve: Curves.easeOut,
    );
    _fieldsAnimation = CurvedAnimation(
      parent: _animController,
      curve: Curves.easeIn,
    );

    _idFocusNode.addListener(() {
      if (!_showPasswordField && _idFocusNode.hasFocus) {
        setState(() => _showPasswordField = true);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Inizializza auth e stato biometria
      context.read<AuthBloc>().add(const AuthStarted());
      // TODO: recupera lo stato di supporto e preferenza da storage/local prefs
      // setState(() {
      //   isSupported = true;
      //   isActive = false;
      //   _isFirstLogin = false;
      //   isReferente = false;
      // });
    });
  }

  @override
  void dispose() {
    _animController.dispose();
    _idFocusNode.dispose();
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).colorScheme.brightness == Brightness.dark;

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
                        text: state.loadingText ?? 'Attendi un attimo...',
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
                  listener: (context, state) async {
                    if (state is AuthUnauthenticatedBiometricPrompt) {
                      WidgetsBinding.instance.addPostFrameCallback((_) async {
                        setState(() {
                          _bioAvailable = true;
                          _idController.text = state.email;
                          isSupported = true;
                          isActive = true;
                        });
                      });
                      context
                          .read<AuthBloc>()
                          .add(const AuthBiometricLoginRequested());
                    }
                    if (state is AuthBiometricsChoosed) {
                      setState(() {
                        _bioAvailable = state.isbioAvailable;
                        isActive = false;
                      });
                    }
                  },
                ),
              ],
              child: ListView(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
                children: [
                  FadeTransition(
                    opacity: _logoAnimation,
                    child: Center(
                      child: Image.asset(
                        'assets/icon/hyperfit_logo.png',
                        color: isDark
                            ? null
                            : Theme.of(context).colorScheme.primaryContainer,
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomTextInput(
                              controller: _idController,
                              keyboardType: TextInputType.emailAddress,
                              enabled: _bioAvailable ? false : true,
                              labelText: 'Email',
                              focusNode: _idFocusNode,
                              validator: (value) => (value?.isEmpty ?? true)
                                  ? 'Campo obbligatorio'
                                  : null,
                            ),
                            const SizedBox(height: 16),
                            if (!_bioAvailable)
                              AnimatedSize(
                                duration: const Duration(milliseconds: 300),
                                child: _showPasswordField
                                    ? FadeTransition(
                                        opacity: _fieldsAnimation,
                                        child: Column(
                                          children: [
                                            CustomTextInput(
                                              password: true,
                                              controller: _passwordController,
                                              labelText: 'Password',
                                              validator: (value) =>
                                                  (value?.isEmpty ?? true)
                                                      ? 'Campo obbligatorio'
                                                      : null,
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: TextButton(
                                                onPressed: () => context
                                                    .read<AuthBloc>()
                                                    .add(AuthResetPassEvent()),
                                                child: const Text(
                                                  'Recupera password',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                              ),
                            const SizedBox(height: 12),
                            if (!_bioAvailable) _buildLoginButton(isDark),

                            // Inserimento dello switch biometrico
                            if (isSupported && isActive && !_isFirstLogin)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomSwitch(
                                    accept: isActive,
                                    onChanged: (value) {
                                      if (isReferente) {
                                        return;
                                      }
                                      if (isActive) {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text("Attenzione"),
                                              content: const Text(
                                                "Disattivando l'accesso biometrico, dovrai accedere nuovamente utilizzando le tue credenziali. Vuoi procedere?",
                                              ),
                                              actions: [
                                                TextButton(
                                                  style: TextButton.styleFrom(
                                                    foregroundColor: Theme.of(
                                                            context)
                                                        .colorScheme
                                                        .onSurface, // testo bianco
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(),
                                                  child: const Text("Annulla"),
                                                ),
                                                TextButton(
                                                  style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        Theme.of(context)
                                                            .colorScheme
                                                            .onSurface,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    context
                                                        .read<AuthBloc>()
                                                        .add(
                                                            AuthEnableBiometric(
                                                                false));
                                                  },
                                                  child: const Text("Conferma"),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Accesso con Biometria',
                                    style: AppTextStyles.whiteTextLargeStyle,
                                  ),
                                ],
                              ),

                            if (_bioAvailable) ...[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 70),
                                  child: CustomIconButton(
                                    onPressed: () {
                                      context.read<AuthBloc>().add(
                                          const AuthBiometricLoginRequested());
                                    },
                                    icon: Icons.fingerprint,
                                    iconSize: 50,
                                  ),
                                ),
                              )
                            ] else ...[
                              const SizedBox(height: 24),
                              const Text(
                                'Oppure',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 16),
                              SocialButtonsGroup(
                                onGoogle: () => context
                                    .read<AuthBloc>()
                                    .add(const AuthGoogleSignInRequested()),
                                onFacebook: () => context
                                    .read<AuthBloc>()
                                    .add(const AuthFacebookSignInRequested()),
                                onEmail: () => context
                                    .read<AuthBloc>()
                                    .add(const AuthregisterEvent()),
                              ),
                            ],
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton(bool isDark) {
    return Center(
      child: CustomButton(
        label: 'ACCEDI',
        width: WideButton.extraWide,
        type: isDark ? ButtonType.whiteFilled : ButtonType.blueFilled,
        onPressed: _onPressedLogin,
      ),
    );
  }

  void _onPressedLogin() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState?.validate() == true) {
      context.read<AuthBloc>().add(
            AuthLoginRequested(
              email: _idController.text.trim(),
              password: _passwordController.text,
            ),
          );
    } else {
      showErrorDialog(context, 'Correggi gli errori nel form.');
    }
  }
}
