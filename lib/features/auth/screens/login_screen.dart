import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/loading/loading_screen.dart';
import 'package:gearpizza/common/components/prefix_text_input.dart';
import 'package:gearpizza/common/components/social_buttons.dart';
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
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _prefixController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _idFocusNode = FocusNode();

  late final AnimationController _animController;
  late final Animation<double> _logoAnimation;

  bool _showPasswordField = false;

  bool isSupported = false;
  bool isActive = false;
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

    _idFocusNode.addListener(() {
      if (!_showPasswordField && _idFocusNode.hasFocus) {
        setState(() => _showPasswordField = true);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthBloc>().add(const AuthStarted());
    });
  }

  @override
  void dispose() {
    _animController.dispose();
    _idFocusNode.dispose();
    _numberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.onPrimary,
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
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        setState(() {
                          _numberController.text = state.email;
                          isSupported = true;
                          isActive = true;
                        });
                      });
                      context
                          .read<AuthBloc>()
                          .add(const AuthBiometricLoginRequested());
                    }
                    if (state is AuthBiometricsChoosed) {
                      setState(() => isActive = false);
                    }
                  },
                ),
              ],
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  FadeTransition(
                    opacity: _logoAnimation,
                    child: Center(
                      child: Image.asset(
                        'assets/icon/gearPizzaIcon.png',
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.surface,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          child: BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: Text(
                                      'Ti diamo il benvenuto!',
                                      style: AppTextStyles.h1(context),
                                    ),
                                  ),
                                  Text(
                                    'Iniziamo col numero di telefono',
                                    style: AppTextStyles.body(context),
                                  ),
                                  const SizedBox(height: 24),
                                  PhonePrefixInput(
                                    prefixController: _prefixController,
                                    numberController: _numberController,
                                  ),
                                  const SizedBox(height: 24),
                                  CustomButton(
                                    label: 'Continua con SMS',
                                    width: WideButton.extraWide,
                                    onPressed: _onPressedLogin,
                                    rounded: true,
                                    type: ButtonType.greenFilled,
                                  ),
                                  const SizedBox(height: 24),
                                  Center(
                                    child: Text(
                                      'oppure con',
                                      style: AppTextStyles.bodySmall(context),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SocialButtonsGroup(
                                    onGoogle: () => context
                                        .read<AuthBloc>()
                                        .add(const AuthGoogleSignInRequested()),
                                    onFacebook: () => context
                                        .read<AuthBloc>()
                                        .add(
                                            const AuthFacebookSignInRequested()),
                                    onEmail: () => context
                                        .read<AuthBloc>()
                                        .add(const AuthregisterEvent()),
                                  ),
                                  const SizedBox(height: 12),
                                  Center(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Altri metodi',
                                        style: AppTextStyles.bodySmall(context)
                                            .copyWith(
                                          color: colorScheme.primary,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
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

  void _onPressedLogin() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState?.validate() == true) {
      context.read<AuthBloc>().add(
            AuthLoginRequested(
              email: _numberController.text.trim(),
              password: _passwordController.text,
            ),
          );
    } else {
      showErrorDialog(context, 'Correggi gli errori nel form.');
    }
  }
}
