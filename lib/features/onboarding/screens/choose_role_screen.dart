import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';
import 'package:gearpizza/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:gearpizza/features/onboarding/bloc/onboarding_event.dart';
import 'package:gearpizza/features/onboarding/bloc/onboarding_state.dart';

class ChooseRoleScreen extends StatelessWidget {
  const ChooseRoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.headlineSmall;
    final descStyle = theme.textTheme.bodyMedium;

    return BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        if (state is ChoosingRoleEnd) {
          // 1) Ho salvato il ruolo → carico le domande
          context.read<OnboardingBloc>().add(LoadQuestions());
          // 2) Notifico anche AuthBloc che il ruolo è confermato
          context.read<AuthBloc>().add(AuthRoleConfirmed());
        }

        if (state is OnboardingInProgress) {
          // 3) Non appena le domande sono pronte → vado a /onboarding
          GoRouter.of(context).go('/onboarding');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Benvenuto in GearPizza'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Prima di iniziare, scegli il tuo ruolo',
                style: textStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Sei un Personal Trainer (PT) o un Cliente che vuole seguire un programma?',
                style: descStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<OnboardingBloc>()
                        .add(RoleChosenEvent(isPt: true));
                  },
                  child: const Text('Personal Trainer'),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.secondary,
                  ),
                  onPressed: () {
                    context
                        .read<OnboardingBloc>()
                        .add(RoleChosenEvent(isPt: false));
                  },
                  child: const Text('Cliente'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
