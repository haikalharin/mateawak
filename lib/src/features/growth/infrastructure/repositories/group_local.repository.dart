import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/configs/services/connect_etamkawa.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/growth/domain/group_response.remote.dart';
import 'package:module_etamkawa/src/features/growth/domain/growth_additional_detail.remote.dart';
import 'package:module_etamkawa/src/features/offline_mode/infrastructure/repositories/isar.repository.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_local.repository.g.dart';

@riverpod
FutureOr<List<GroupResponseRemote>> getGroupRemote(GetGroupLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  final isConnectionAvailable = ref.read(isConnectionAvailableProvider);

  if (isConnectionAvailable) {
    final connect = ref.read(connectProvider.notifier);
    List<GroupResponseRemote> listResponse = [];
    List<GroupResponseRemote> listResponseFinal = [];
    final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final response = await connect.post(
        modul: ModuleType.etamkawaGamification,
        path: "api/leaderboard/get_group_mission_list?${Constant.apiVer}",
        body: {
          "employeeId": userModel?.employeeID,
          "groupId": null,
          "includeMission": 1
        });
    for (var element in response.result?.content) {
      final result = GroupResponseRemote.fromJson(element);
      listResponse.add(result);
    }
    final repo = isarInstance.groupResponseRemotes
        .filter()
        .groupIdIsNotNull()
        .findAll();

    await AsyncValue.guard(() => repo).then((value) async {
      for (var element in listResponse) {
        if ((value.value ?? []).isNotEmpty) {
          listResponseFinal.add(value.value!.firstWhere(
              (item) => item.groupId == element.groupId,
              orElse: () => element));
        } else {
          listResponseFinal.add(element);
        }
      }
    });

    await isarInstance.writeTxn(() async {
      await isarInstance.groupResponseRemotes
          .putAll(listResponseFinal);
    });
    final latestSyncDateIsar = await isarInstance.growthAdditionalDetailRemotes
        .filter()
        .idEqualTo(0)
        .findFirst();
    await isarInstance.writeTxn(() async {
      await isarInstance.growthAdditionalDetailRemotes.put(
          GrowthAdditionalDetailRemote(
              id: 0,
              latestSyncDateTeam: today,
              latestSyncDateLeaderboard:
                  latestSyncDateIsar?.latestSyncDateLeaderboard));
    });
    ref.keepAlive();
  }
  final data = await isarInstance.groupResponseRemotes
      .filter()
      .groupIdIsNotNull()
      .findAll();
  return data;
}

@riverpod
FutureOr<List<GroupResponseRemote>> getGroupLocal(
    GetGroupLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  final data = await isarInstance.groupResponseRemotes
      .filter()
      .groupIdIsNotNull()
      .findAll();
  return data;
}
