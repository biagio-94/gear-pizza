import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/centered_text_divider.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/loading/loading_screen.dart';
import 'package:gearpizza/common/components/prefix_text_input.dart';
import 'package:gearpizza/common/components/social_buttons.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/common/utils/show_error_dialog.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';
import 'package:gearpizza/features/auth/bloc/auth_state.dart';
import 'package:go_router/go_router.dart';

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
    _prefixController.dispose();
    _passwordController.dispose();
    super.dispose();
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

  void _onContinueAsGuest() {
    context.read<AuthBloc>().add(const AuthSignAsGuest());
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

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
                  listener: (context, state) {
                    if (state is AuthAuthenticated) {
                      GoRouter.of(context).pushReplacementNamed('/home');
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
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                      child: Container(
                        color: colorScheme.surface,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        child: _LoginForm(
                          formKey: _formKey,
                          prefixController: _prefixController,
                          numberController: _numberController,
                          passwordController: _passwordController,
                          onPressedLogin: _onPressedLogin,
                          onSignAsGuest: _onContinueAsGuest,
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
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    required this.formKey,
    required this.prefixController,
    required this.numberController,
    required this.passwordController,
    required this.onPressedLogin,
    required this.onSignAsGuest,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController prefixController;
  final TextEditingController numberController;
  final TextEditingController passwordController;
  final VoidCallback onPressedLogin;
  final VoidCallback onSignAsGuest;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return ListView(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  children: [
                    Text(
                      'Ti diamo il benvenuto!',
                      style: AppTextStyles.h1(context),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Iniziamo col numero di telefono',
                      style: AppTextStyles.body(context),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              PhonePrefixInput(
                prefixController: prefixController,
                numberController: numberController,
              ),
              const SizedBox(height: 24),
              CustomButton(
                label: 'Continua con SMS',
                onPressed: onPressedLogin,
                rounded: true,
                expanded: true,
                type: ButtonType.greenFilled,
              ),
              const SizedBox(height: 24),
              CustomButton(
                label: 'Inizia ad ordinare',
                onPressed: onSignAsGuest,
                rounded: true,
                expanded: true,
                type: ButtonType.yellowFilled,
              ),
              const SizedBox(height: 24),
              CenteredTextDivider(
                text: 'oppure con',
                textStyle: AppTextStyles.bodySmall(context),
                lineColor: Colors.grey,
                lineThickness: 1,
                spacing: 12,
              ),
              const SizedBox(height: 16),
              SocialButtonsGroup(
                onGoogle: () => context
                    .read<AuthBloc>()
                    .add(const AuthGoogleSignInRequested()),
                onFacebook: () => context
                    .read<AuthBloc>()
                    .add(const AuthFacebookSignInRequested()),
                onEmail: () =>
                    context.read<AuthBloc>().add(const AuthregisterEvent()),
              ),
            ],
          );
        },
      ),
    );
  }
}
