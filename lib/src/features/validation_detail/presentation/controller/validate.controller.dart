import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/offline_mode/infrastructure/repositories/isar.repository.dart';
import 'package:module_etamkawa/src/features/validation/domain/validate_request.remote.dart';
import 'package:module_etamkawa/src/features/validation/domain/validation_response.remote.dart';
import 'package:module_etamkawa/src/features/validation/infrastructure/repositories/validation_local.repository.dart';
import 'package:module_etamkawa/src/features/validation/presentation/controller/validation.controller.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
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

  Future<void> changeStatusValidation(String feedback, int selectedScore,
      {isDone = true}) async {
    debugPrint('validate debug print triggered');
    final validationDetail =
        ref.watch(validationInReviewDetailState.notifier).state;
    final validation = ref
        .watch(validationInReviewState.notifier)
        .state
        .where((element) =>
            element.employeeMissionId == validationDetail.employeeMissionId)
        .first;
    final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
    final today =
        CommonUtils.formatDateRequestParam(DateTime.now().toUtc().toString());
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
    if (isConnectionAvailable) {
      var validationRequest = ValidateRequestRemote(
          comment: feedback,
          employeeMissionId: validation.employeeMissionId,
          qualitativeScore: selectedScore,
          taskId: validation
              .chapterData?.single.missionData?.single.taskData?.single.taskId,
          validationDate: today.substring(0, today.length - 6));
      debugPrint('validate print debug: $selectedScore');
      await ref.read(
          submitValidationProvider(validationRequestRemote: validationRequest)
              .future);
    }
    ref.keepAlive();
  }
}
