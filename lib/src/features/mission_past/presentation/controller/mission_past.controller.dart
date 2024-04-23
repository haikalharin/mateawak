
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission_past/domain/mission_past_response.remote.dart';
import 'package:module_etamkawa/src/features/mission_past/infrastructure/repositories/mission_past.repository.dart';
import 'package:module_etamkawa/src/features/validation/domain/validation_response.remote.dart';
import 'package:module_etamkawa/src/features/validation/infrastructure/repositories/validation_local.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mission_past.controller.g.dart';

final listMissionPastResponseRemoteState =
    StateProvider.autoDispose<List<MissionPastResponseRemote>>((ref) => []);


@riverpod
class MissionPastController extends _$MissionPastController {
  List<MissionPastResponseRemote> listMissionPast = [];

  @override
  FutureOr<void> build() async {
    await getMissionPastList();
  }

  Future<void> getMissionPastList() async {
    var repo = ref.read(getMissionPastListProvider.future);

    state = await AsyncValue.guard(() => repo).then((value) async {
      List<MissionPastResponseRemote> listMissionPast = [];

      debugPrint(value.toString());
      if (value.hasValue) {
        value.value?.forEach((element) async {
          listMissionPast.add(element);
        });
        ref.watch(listMissionPastResponseRemoteState.notifier).state = listMissionPast;
        listMissionPast = value.value ?? [];
      }
      return value;
    });
  }
}
