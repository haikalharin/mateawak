import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/notifications/domain/notification_response.remote.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';
part 'notification.repository.g.dart';

@riverpod
Future<List<NotificationResponseRemote>?> getNotificationListRemote(
    GetNotificationListRemoteRef ref,
    {required int? userId,
    required String? dateFrom,
    required String? dateTo,
    required String? feature,
    required String? notifType,
    String? search,
    String? category,
    required int isAllNotif,
    required int pageNo,
    required int pageSize}) async {
  final userInfo = await ref.read(getUserInfosProvider.future);

  final data = {
    'userId': userId,
    'dateFrom': dateFrom,
    'dateTo': dateTo,
    'feature': feature,
    if (search != null) 'search': search,
    'isAllNotif': isAllNotif,
    'notifType': notifType,
    if (category != null) 'category': category,
    'pageNo': pageNo,
    'pageSize': pageSize,
    'hourOffset': 8,
    'siteId': userInfo?.siteId,
    'roleId': userInfo?.roleId,
  };

  final response = await ref.read(connectProvider.notifier).post(
        modul: ModuleType.sharedGeneral,
        path: "/api/menuNotification?${Constant.apiVer}",
        body: data,
      );

  final result =
      List<NotificationResponseRemote>.from(response.result?.content.map((x) {
    return NotificationResponseRemote.fromJson(x);
  }));

  final finalResult = result.map((e) {
    e.pageNo = pageNo;
    e.pageSize = pageSize;
    e.notifType = notifType;
    return e;
  }).toList();

  final isarInstance = await ref.watch(isarInstanceProvider.future);
  await isarInstance.writeTxn(() async {
    await isarInstance.notificationResponseRemotes
        .filter()
        .pageNoEqualTo(pageNo)
        .pageSizeEqualTo(pageSize)
        .notifTypeEqualTo(notifType)
        .deleteAll();

    await isarInstance.notificationResponseRemotes.putAll(finalResult);
  });

  ref.keepAlive();
  return result;
}

@riverpod
Future<bool> markAsReadNotificationRemote(MarkAsReadNotificationRemoteRef ref,
    {required int employeeId,
    required String notifId,
    required int isMarkAllRead}) async {
  final userInfo = await ref.read(getUserInfosProvider.future);
  final data = {
    'employeeId': employeeId,
    'notifId': notifId,
    'isMarkAllRead': isMarkAllRead,
    'siteId': userInfo?.siteId,
    'roleId': userInfo?.roleId,
  };

  final response = await ref.read(connectProvider.notifier).post(
        modul: ModuleType.sharedGeneral,
        path: "/api/markAsReadNotification?${Constant.apiVer}",
        body: data,
      );

  debugPrint('responsemarkAsReadNotification: $response');

  return response.statusCode == 200 || (response.result?.isError == false);
}
