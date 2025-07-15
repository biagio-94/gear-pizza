import 'dart:ui';

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
import 'package:gearpizza/features/auth/bloc/auth_state.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      FocusScope.of(context).unfocus();
      context.read<AuthBloc>().add(
            AuthPasswordResetRequested(email: _emailController.text.trim()),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.colorScheme.brightness == Brightness.dark;

    return Scaffold(
      // Gradient background inspired by top apps
      body: Container(
        child: SafeArea(
          child: BlocListener<LoadingBloc, LoadingState>(
            listener: (_, state) {
              if (state.status == LoadingStatus.loading) {
                LoadingScreen().show(
                  context: context,
                  text: state.loadingText ?? 'Invio in corso...',
                  showLogoAnimation: false,
                );
              } else {
                LoadingScreen().hide();
              }
            },
            child: BlocListener<ExceptionBloc, ExceptionState>(
              listener: (_, state) {
                if (state.message.isNotEmpty) {
                  showErrorDialog(context, state.message);
                }
              },
              child: BlocListener<AuthBloc, AuthState>(
                listener: (_, state) {
                  if (state is AuthPasswordResetEmailSent) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        backgroundColor: theme.colorScheme.surface,
                        title: const Text('Email inviata',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        content: const Text(
                            'Controlla la tua email per resettare la password.',
                            style: TextStyle(fontSize: 16)),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              context.read<AuthBloc>().add(AuthStarted());
                            },
                            child: const Text('OK',
                                style: TextStyle(fontSize: 16)),
                          )
                        ],
                      ),
                    );
                  }
                },
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        // Frosted glass card
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.surface.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                                border: Border.all(
                                  color: theme.colorScheme.onSurface
                                      .withOpacity(0.1),
                                ),
                              ),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text('Reset Password',
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.headlineLarge!
                                            .copyWith(
                                                fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 24),
                                    // Input with icon
                                    CustomTextInput(
                                      controller: _emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      labelText: 'La tua email',
                                      validator: (value) {
                                        if (value == null ||
                                            value.trim().isEmpty) {
                                          return 'Campo obbligatorio';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 32),
                                    // Elevated style button
                                    CustomButton(
                                      label: 'Invia Email',
                                      type: isDark
                                          ? ButtonType.yellowFilled
                                          : ButtonType.greenFilled,
                                      onPressed: _submit,
                                    ),
                                    const SizedBox(height: 16),
                                    Center(
                                      child: TextButton(
                                        onPressed: () => context
                                            .read<AuthBloc>()
                                            .add(AuthStarted()),
                                        child: Text('Torna al login',
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith()),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
