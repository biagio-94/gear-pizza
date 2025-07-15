import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/custom_switch.dart';
import 'package:gearpizza/common/components/loading/loading_screen.dart';
import 'package:gearpizza/common/services/biometric_auth_service.dart';
import 'package:gearpizza/common/styles/colors_schemes.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/common/utils/show_error_dialog.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';
import 'package:gearpizza/features/auth/bloc/auth_state.dart';
import 'package:gearpizza/common/components/custom_button.dart';

class BiometricsChoice extends StatefulWidget {
  const BiometricsChoice({Key? key}) : super(key: key);

  @override
  State<BiometricsChoice> createState() => _BiometricsChoiceState();
}

class _BiometricsChoiceState extends State<BiometricsChoice> {
  bool isBiometricSelected = false;

  Future<void> _openBiometricSettings() async {
    try {
      AppSettings.openAppSettings(type: AppSettingsType.security);
    } catch (_) {
      AppSettings.openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
        child: MultiBlocListener(
          listeners: [
            BlocListener<LoadingBloc, LoadingState>(
              listener: (context, state) {
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
              listener: (context, state) {
                if (state.message.isNotEmpty) {
                  showErrorDialog(context, state.message);
                }
              },
            ),
          ],
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 48),
                    Text(
                      'Ciao!',
                      style: AppTextStyles.h1(context),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Attiva l’accesso rapido con la tua impronta digitale o il riconoscimento facciale.',
                      style: AppTextStyles.body(context).copyWith(
                        color: theme.colorScheme.onBackground.withOpacity(0.7),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.fingerprint,
                            size: 80,
                            color: theme.colorScheme.onPrimary,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Accesso biometrico',
                            style: AppTextStyles.h2(context).copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Usa il tuo tocco per accedere più velocemente.',
                            style: AppTextStyles.bodySmall(context),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          CustomSwitch(
                            accept: isBiometricSelected,
                            onChanged: (value) async {
                              if (value) {
                                final setup =
                                    await GetIt.instance<BiometricAuthService>()
                                        .checkBiometricSetup();
                                if (!setup) {
                                  final open = await showDialog<bool>(
                                    context: context,
                                    builder: (c) => AlertDialog(
                                      backgroundColor:
                                          theme.colorScheme.surface,
                                      title: Text(
                                        'Biometria non configurata',
                                        style: theme.textTheme.titleMedium
                                            ?.copyWith(
                                          color: theme.colorScheme.onSurface,
                                        ),
                                      ),
                                      content: Text(
                                        'Configura la biometria per proseguire.',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                          color: theme.colorScheme.onSurface,
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(c, false),
                                          child: Text(
                                            'Annulla',
                                            style: TextStyle(
                                              color: theme.colorScheme.primary,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(c, true),
                                          child: Text(
                                            'Impostazioni',
                                            style: TextStyle(
                                              color:
                                                  theme.colorScheme.secondary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                  if (open == true) _openBiometricSettings();
                                  return;
                                }
                              }
                              setState(() => isBiometricSelected = value);
                            },
                          ),
                          const SizedBox(height: 24),
                          CustomButton(
                            label: 'Attiva accesso automatico',
                            type: isDark
                                ? ButtonType.whiteFilled
                                : ButtonType.blueFilled,
                            disabled: !isBiometricSelected,
                            onPressed: () {
                              context.read<AuthBloc>().add(
                                    AuthEnableBiometric(isBiometricSelected),
                                  );
                            },
                          ),
                          const SizedBox(height: 12),
                          CustomButton(
                            label: 'Continua senza impronta',
                            type: isDark
                                ? ButtonType.whiteFilled
                                : ButtonType.blueFilled,
                            onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthSkipBiometric());
                            },
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
