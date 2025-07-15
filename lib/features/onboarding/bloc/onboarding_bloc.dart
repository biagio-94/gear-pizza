import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/onboarding/bloc/onboarding_event.dart';
import 'package:gearpizza/features/onboarding/bloc/onboarding_state.dart';
import 'package:gearpizza/features/onboarding/models/question_model.dart';
import 'package:gearpizza/features/onboarding/service/onboarding_service.dart';

enum Roles {
  cliente,
  trainer,
}

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final OnboardingService _service;
  final String firebaseUid;

  List<Question> _questions = [];

  OnboardingBloc(
      {required this.firebaseUid, required OnboardingService service})
      : _service = service,
        super(OnboardingInitial()) {
    on<LoadQuestions>(_onLoad);
    on<AnswerSubmitted>(_onAnswerSubmitted);
    on<NextStepPressed>(_onNext);
    on<PreviousStepPressed>(_onPrevious);
    on<RoleChosenEvent>(_onRoleChosen);
  }

  Future<void> _onLoad(
      LoadQuestions event, Emitter<OnboardingState> emit) async {
    try {
      _questions = await _service.loadQuestions(firebaseUid: firebaseUid);
      final int currentStep =
          await _service.getCurrentStep(firebaseUid: firebaseUid);
      emit(OnboardingInProgress(currentStep, {}, _questions));
    } catch (e) {
      emit(OnboardingError(e.toString()));
    }
  }

  void _onAnswerSubmitted(
      AnswerSubmitted event, Emitter<OnboardingState> emit) {
    if (state is OnboardingInProgress) {
      final current = state as OnboardingInProgress;
      final answers = Map<int, String>.from(current.answers);
      answers[event.step] = event.answer;
      emit(OnboardingInProgress(current.currentStep, answers, _questions));
    }
  }

  Future<void> _onNext(
      NextStepPressed event, Emitter<OnboardingState> emit) async {
    if (state is OnboardingInProgress) {
      final current = state as OnboardingInProgress;
      final step = current.currentStep;
      final question = _questions[step - 1];
      final answer = current.answers[step]!;
      final total = _questions.length;

      emit(OnboardingSubmitting(step, current.answers, _questions));
      await _service.answerAndNext(
        firebaseUid: firebaseUid,
        question: question,
        answer: answer,
        currentStep: step,
        totalQuestions: total,
      );

      final next = (step < total) ? step + 1 : total;
      if (next == total) {
        emit(OnboardingCompleted(total));
      } else {
        emit(OnboardingInProgress(next, current.answers, _questions));
      }
    }
  }

  void _onPrevious(PreviousStepPressed event, Emitter<OnboardingState> emit) {
    if (state is OnboardingInProgress) {
      final current = state as OnboardingInProgress;
      if (current.currentStep > 1) {
        emit(OnboardingInProgress(
            current.currentStep - 1, current.answers, _questions));
      }
    }
  }

  Future<void> _onRoleChosen(
    RoleChosenEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(OnboardingLoading());
    try {
      // 1) Salva il ruolo
      await _service.chooseRole(
        firebaseUid: firebaseUid,
        ruoloName: event.isPt ? Roles.trainer.name : Roles.cliente.name,
      );
      final currentStep =
          await _service.getCurrentStep(firebaseUid: firebaseUid);

      emit(ChoosingRoleEnd(currentStep));
    } catch (e) {
      emit(OnboardingError(e.toString()));
    }
  }
}
