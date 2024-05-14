
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/validation/domain/validation_response.remote.dart';
import 'package:module_etamkawa/src/features/validation/infrastructure/repositories/validation_local.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'validation.controller.g.dart';

final indexMtdYtdSliderProvider = StateProvider.autoDispose<int>((ref) => 0);

final listValidationState =
    StateProvider.autoDispose<List<ValidationResponseRemote>>((ref) => []);
final listChapterState =
    StateProvider.autoDispose<List<ChapterValidationDatum>>((ref) => []);
final listMissionInReviewState =
    StateProvider.autoDispose<List<MissionValidationDatum>>((ref) => []);
final validationInReviewState =
    StateProvider.autoDispose<List<ValidationResponseRemote>>((ref) => []);
final validationInReviewDetailState =
    StateProvider.autoDispose<ValidationResponseRemote>((ref) => ValidationResponseRemote());
var latestSyncDateValidationState =
    StateProvider.autoDispose<String>((ref) => '2024-03-01T03:55:58.918Z');

@riverpod
class ValidationController extends _$ValidationController {
  List<ValidationResponseRemote> listValidation = [];

  @override
  FutureOr<void> build() async {
    await getValidationList();
  }

  Future<void> getValidationListLocal() async {
    var repo = ref.read(getValidationLocalProvider.future);
    
    state = await AsyncValue.guard(() => repo).then((value) async {
      List<ValidationResponseRemote> listValidationInReview = [];
      if (value.hasValue) {
        value.value?.forEach((element) async {
          listValidationInReview.add(element);
        });
        ref.watch(validationInReviewState.notifier).state =
            listValidationInReview;
        ref.watch(listValidationState.notifier).state = value.value ?? [];
      }
      return value;
    });
  }

  Future<void> getValidationList() async {
    var repo = ref.read(getValidationRemoteProvider.future);

    state = await AsyncValue.guard(() => repo).then((value) async {
      List<ValidationResponseRemote> listValidationInReview = [];

      debugPrint(value.toString());
      if (value.hasValue) {
        value.value?.forEach((element) async {
          listValidationInReview.add(element);
        });
        ref.watch(validationInReviewState.notifier).state =
            listValidationInReview;
        ref.watch(listValidationState.notifier).state = value.value ?? [];
        listValidation = value.value ?? [];
      }
      return value;
    });
  }

  Future<void> filterValidationList(String query) async {
    ref.read(getValidationLocalProvider.future);
    var repo = ref.read(getValidationLocalProvider.future);
    state = await AsyncValue.guard(() => repo).then((value) async {
      List<ValidationResponseRemote> listValidationInReview = [];
      if (value.hasValue) {
        value.value?.forEach((element) async {
          listValidationInReview.add(element);
        });

        ref.watch(validationInReviewState.notifier).state =
            listValidationInReview
                .where((element) => (element.chapterData?.single.missionData
                            ?.single.missionName ??
                        '')
                    .toLowerCase()
                    .contains(query.toLowerCase()))
                .toList();
        ref.watch(listValidationState.notifier).state = value.value ?? [];
        listValidation = value.value ?? [];
      }
      return value;
    });
  }
}
