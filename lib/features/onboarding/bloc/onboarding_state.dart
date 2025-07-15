import 'package:gearpizza/features/onboarding/models/question_model.dart';

abstract class OnboardingState {
  final int currentStep;
  const OnboardingState(this.currentStep);
}

class OnboardingInitial extends OnboardingState {
  OnboardingInitial() : super(0);
}

class OnboardingLoading extends OnboardingState {
  OnboardingLoading() : super(0);
}

class OnboardingInProgress extends OnboardingState {
  final Map<int, String> answers;
  final List<Question> questions;
  OnboardingInProgress(int currentStep, this.answers, this.questions)
      : super(currentStep);
}

class OnboardingSubmitting extends OnboardingState {
  final Map<int, String> answers;
  final List<Question> questions;
  OnboardingSubmitting(int currentStep, this.answers, this.questions)
      : super(currentStep);
}

class ChoosingRoleEnd extends OnboardingState {
  ChoosingRoleEnd(super.currentStep);
}

class OnboardingCompleted extends OnboardingState {
  final int totalSteps;
  OnboardingCompleted(this.totalSteps) : super(totalSteps);
}

class OnboardingError extends OnboardingState {
  final String message;
  OnboardingError(this.message) : super(0);
}
