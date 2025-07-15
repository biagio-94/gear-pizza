// onboarding_service.dart

import 'package:gearpizza/features/onboarding/models/question_model.dart';
import 'package:gearpizza/features/onboarding/repository/onboarding_repository.dart';

class OnboardingService {
  final OnboardingRepository repo;

  OnboardingService(this.repo);

  Future<List<Question>> loadQuestions({required String firebaseUid}) {
    return repo.fetchQuestions(firebaseUid: firebaseUid);
  }

  Future<int> getCurrentStep({required String firebaseUid}) {
    return repo.getCurrentStep(firebaseUid);
  }

  Future<void> answerAndNext({
    required String firebaseUid,
    required Question question,
    required String answer,
    required int currentStep,
    required int totalQuestions,
  }) async {
    // 1) submitAnswer ora prende firebaseUid
    await repo.submitAnswer(
      firebaseUid: firebaseUid,
      questionId: question.id,
      answer: answer,
    );

    // 2) calcolo nextStep e completed
    final nextStep =
        currentStep < totalQuestions ? currentStep + 1 : totalQuestions;
    final completed = nextStep == totalQuestions;

    // 3) updateProgress prende firebaseUid
    await repo.updateProgress(
      firebaseUid: firebaseUid,
      step: nextStep,
      completed: completed,
    );
  }

  Future<void> chooseRole({
    required String firebaseUid,
    required String ruoloName,
  }) async {
    await repo.updateUserRole(firebaseUid: firebaseUid, ruoloName: ruoloName);
  }

  Future<bool> isOnboardingCompleted(String firebaseUid) =>
      repo.isCompleted(firebaseUid: firebaseUid);
}
