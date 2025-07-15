// File: features/onboarding/screens/onboarding_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:gearpizza/features/onboarding/bloc/onboarding_event.dart';
import 'package:gearpizza/features/onboarding/bloc/onboarding_state.dart';
import 'package:gearpizza/features/onboarding/screens/onboarding_completed_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        if (state is OnboardingError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
        if (state is ChoosingRoleEnd) {
          // Dopo aver scelto il ruolo, ricarichiamo le domande
          context.read<OnboardingBloc>().add(LoadQuestions());
        }
      },
      builder: (context, state) {
        // Visualizza loading anche durante ChoosingRoleEnd
        if (state is ChoosingRoleEnd) {
          return const Center(child: CircularProgressIndicator());
        }

        final total =
            (state is OnboardingInProgress || state is OnboardingSubmitting)
                ? (state as dynamic).questions.length
                : 1;
        final step = state.currentStep.clamp(1, total).toInt();

        return Scaffold(
          appBar: state is! OnboardingCompleted
              ? _buildAppBar(step, total, context)
              : null,
          body: AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            switchInCurve: Curves.easeOut,
            switchOutCurve: Curves.easeIn,
            child: _buildBody(context, state),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(int step, int total, BuildContext context) {
    final percent = step / total;
    return AppBar(
      centerTitle: true,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Onboarding', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 4),
          Text(
            '$step di $total',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.85),
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(6),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: percent),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, _) => LinearProgressIndicator(
                value: value,
                minHeight: 6,
                backgroundColor:
                    Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.onPrimary),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, OnboardingState state) {
    if (state is OnboardingLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state is OnboardingCompleted) {
      return const OnboardingCompletedView();
    }

    if (state is OnboardingInProgress || state is OnboardingSubmitting) {
      final questions = (state is OnboardingInProgress)
          ? state.questions
          : (state as OnboardingSubmitting).questions;
      final answers = (state is OnboardingInProgress)
          ? state.answers
          : (state as OnboardingSubmitting).answers;
      final step = state.currentStep.clamp(1, questions.length);
      final question = questions[step - 1];
      final selected = answers[step];

      return Padding(
        key: ValueKey('step_\$step'),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: Text(
                question.text,
                key: ValueKey(question.id),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: 24),
            ...question.options.map((opt) {
              final isSel = opt.value == selected;
              return AnimatedScale(
                scale: isSel ? 1.03 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: RadioListTile<String>(
                  title: Text(opt.label),
                  value: opt.value,
                  groupValue: selected,
                  onChanged: (val) => context
                      .read<OnboardingBloc>()
                      .add(AnswerSubmitted(step, val!)),
                ),
              );
            }).toList(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (step > 1)
                  ElevatedButton.icon(
                    onPressed: () => context
                        .read<OnboardingBloc>()
                        .add(PreviousStepPressed()),
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Indietro'),
                  )
                else
                  const SizedBox(width: 120),
                ElevatedButton.icon(
                  onPressed: selected == null
                      ? null
                      : () =>
                          context.read<OnboardingBloc>().add(NextStepPressed()),
                  icon: Icon(
                    step == questions.length
                        ? Icons.check
                        : Icons.arrow_forward,
                  ),
                  label: Text(
                    step == questions.length ? 'Fine' : 'Avanti',
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    // Fallback generico
    return const Center(child: Text('Qualcosa è andato storto'));
  }
}
