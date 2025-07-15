import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';
import 'package:gearpizza/features/auth/bloc/auth_state.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:lottie/lottie.dart';

class OnboardingCompletedView extends StatefulWidget {
  const OnboardingCompletedView({Key? key}) : super(key: key);

  @override
  _OnboardingCompletedViewState createState() =>
      _OnboardingCompletedViewState();
}

class _OnboardingCompletedViewState extends State<OnboardingCompletedView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this)
      ..addStatusListener((status) {
        // eventualmente navighiamo automaticamente
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goDashboard() {
    context.read<AuthBloc>().add(OnOnboardingEnd());
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        // Se non siamo ancora autenticati, mostro un loader o fallback
        if (state is! AuthAuthenticated) {
          return const Center(child: CircularProgressIndicator());
        }

        // Qui posso leggere in sicurezza `role`, è sicuramente assegnato
        final role = GetIt.instance<AuthGeaPizzaUser>().role;

        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Completato con successo!',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              Lottie.asset(
                'assets/animations/successAnimation.json',
                controller: _controller,
                repeat: false,
                onLoaded: (composition) {
                  _controller
                    ..duration = composition.duration
                    ..forward();
                },
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 32),
              CustomButton(
                label: 'ACCEDI',
                width: WideButton.extraWide,
                type: isDark ? ButtonType.whiteFilled : ButtonType.blueFilled,
                onPressed: _goDashboard,
              ),
            ],
          ),
        );
      },
    );
  }
}
