abstract class OnboardingEvent {}

class OnbInitialState extends OnboardingEvent {}

class LoadQuestions extends OnboardingEvent {}

class AnswerSubmitted extends OnboardingEvent {
  final int step;
  final String answer;
  AnswerSubmitted(this.step, this.answer);
}

class NextStepPressed extends OnboardingEvent {}

class RoleChosenEvent extends OnboardingEvent {
  final bool isPt;
  RoleChosenEvent({required this.isPt});
}

class PreviousStepPressed extends OnboardingEvent {}
