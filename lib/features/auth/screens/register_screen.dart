import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/components/loading/loading_screen.dart';
import 'package:gearpizza/common/utils/show_error_dialog.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitEmail() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState?.validate() == true) {
      debugPrint('Email: ${_emailController.text}');
      context.read<AuthBloc>().add(AuthLoginRequested(
            email: _emailController.text.trim(),
            password: _passwordController.text,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.read<AuthBloc>().add(AuthStarted());
          },
        ),
      ),
      body: SafeArea(
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
          ],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                // CONTENUTO PRINCIPALE
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: () => setState(() {}),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 48),
                          // Icona email
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Icon(
                                Icons.email,
                                size: 60,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Inserisci la tua e-mail',
                            style: theme.textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Hai già un account? Se non ne possiedi uno, puoi contattare il nostro team per richiedere un'utenza da ristoratore oppure accedere autonomamente scegliendo tra OTP, Google o Facebook.",
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.grey[700],
                            ),
                          ),
                          const SizedBox(height: 32),
                          CustomTextInput(
                            controller: _emailController,
                            labelText: 'E-mail',
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) => (value?.isEmpty ?? true)
                                ? 'Inserisci un\'email valida'
                                : null,
                          ),
                          CustomTextInput(
                            controller: _passwordController,
                            labelText: 'Password',
                            validator: (value) => (value == null ||
                                    value.length < 6)
                                ? 'La password deve avere almeno 6 caratteri'
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Pulsante sempre in basso
                CustomButton(
                  label: 'Continua',
                  disabled: !(_formKey.currentState?.validate() ?? false),
                  onPressed: _submitEmail,
                  rounded: true,
                  type: ButtonType.greenFilled,
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
