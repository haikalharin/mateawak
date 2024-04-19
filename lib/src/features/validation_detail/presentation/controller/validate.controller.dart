import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/offline_mode/infrastructure/repositories/isar.repository.dart';
import 'package:module_etamkawa/src/features/validation/domain/validation_response.remote.dart';
import 'package:module_etamkawa/src/features/validation/presentation/controller/validation.controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'validate.controller.g.dart';

final selectedValidation =
    StateProvider.autoDispose<List<ValidationResponseRemote>>((ref) => []);
final validationState = StateProvider.autoDispose<ValidationResponseRemote>(
    (ref) => ValidationResponseRemote());

@riverpod
class ValidateController extends _$ValidateController {
  @override
  FutureOr<void> build() async {}

  Future<void> changeStatusValidation(String feedback, int selectedScore, {isDone = true}) async {
    final validation = ref.watch(validationInReviewState.notifier).state[0];

    debugPrint(validation.toString());
    ValidationResponseRemote data = ValidationResponseRemote();
    var reward =
        data.chapterData?.single.missionData?.single.missionReward ?? 0;
    var finalReward = reward * selectedScore;
    data =
        validation.copyWith(missionStatusCode: 99, missionStatus: 'Validated');
    data.chapterData?.single.missionData?.single.taskData?.single
        .copyWith(feedbackComment: feedback, answerReward: finalReward);
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    await isarInstance.writeTxn(() async {
      await isarInstance.validationResponseRemotes.put(data);
    });
    ref.keepAlive();
  }
}
