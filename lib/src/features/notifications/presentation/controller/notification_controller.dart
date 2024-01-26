import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/notifications/domain/notification_response.remote.dart';
import 'package:module_etamkawa/src/features/notifications/infrastructure/repositories/notification.repository.dart';
import 'package:module_etamkawa/src/features/notifications/infrastructure/repositories/notification_local.repository.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../widgets/dialog_congratulations_widget.dart';
part 'notification_controller.g.dart';

final selectedNotifTypeProvider =
    StateProvider.autoDispose<String>((ref) => Constant.notificationGeneral);

final searchNotifProvider = StateProvider.autoDispose<String?>((ref) => null);

final selectedNotifDayProvider =
    StateProvider.autoDispose<String>((ref) => Constant.notificationToday);

final selectedNotifFilterKategoriProvider =
    StateProvider<String?>((ref) => null);

final selectedFocusDateProvider =
    StateProvider.autoDispose<String>((ref) => Constant.dateSelectorModeDari);

final selectedDariProvider = StateProvider.autoDispose<String>((ref) =>
    CommonUtils.formattedDate(DateTime.now().toUtc().toIso8601String(),
        withDay: false));

final selectedKeProvider =
    StateProvider.autoDispose<String>((ref) => ref.watch(selectedDariProvider));

final categoryProvider = StateProvider.autoDispose<String?>((ref) => null);
final containerSelectedDariProvider =
    StateProvider.autoDispose<String>((ref) => ref.read(selectedDariProvider));
final containerSelectedKeProvider =
    StateProvider.autoDispose<String>((ref) => ref.read(selectedKeProvider));

final filterSelectedDariProvider = StateProvider<String?>((ref) {
  return CommonUtils.formattedDate(DateTime.now().toUtc().toIso8601String(),
      withDay: false);
});
final filterSelectedKeProvider = StateProvider<String?>((ref) {
  return CommonUtils.formattedDate(DateTime.now().toUtc().toIso8601String(),
      withDay: false);
});

final isErrorDateSelectedNotValidateProvider =
    StateProvider<bool>((ref) => false);

final isFilterResetProvider = StateProvider.autoDispose<bool>((ref) => false);

//pagination provider
final notificationPagePaginationProvider =
    StateProvider.autoDispose<int>((ref) {
  return 1;
});

final notificationPageLimitProvider = StateProvider.autoDispose<int>((ref) {
  return 10;
});

final notificationTotalRecordsProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});

final notificationTotalPagesProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});

@riverpod
Future<void> showDialogCongratulations(ShowDialogCongratulationsRef ref,
    {required String body, required BuildContext context}) {
  return showDialog(
    context: context,
    builder: (context) => DialogCongratulationsWidget(body: body),
  );
}

@riverpod
Future<List<NotificationResponseRemote>?> getNotificationList(
  GetNotificationListRef ref, {
  required int? userId,
  required String? dateFrom,
  required String? dateTo,
  required String? feature,
  required String? notifType,
  String? search,
  String? category,
  required int isAllNotif,
}) async {
  final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);

  final pagePagination = ref.watch(notificationPagePaginationProvider);
  final pageLimit = ref.watch(notificationPageLimitProvider);

  final result = isConnectionAvailable
      ? await ref.watch(getNotificationListRemoteProvider(
              dateFrom: dateFrom,
              dateTo: dateTo,
              feature: feature,
              isAllNotif: isAllNotif,
              notifType: notifType,
              pageNo: pagePagination,
              pageSize: pageLimit,
              userId: userId,
              category: category,
              search: search)
          .future)
      : await ref.watch(getNotificationListLocalProvider(
              notifType: notifType,
              pageNo: pagePagination,
              pageSize: pageLimit,
              category: category,
              search: search)
          .future);

  ref.read(notificationTotalRecordsProvider.notifier).state =
      CommonUtils.isEmpty(result) ? 0 : result?.first.dataCount ?? 0;
  ref.read(notificationTotalPagesProvider.notifier).state =
      CommonUtils.isEmpty(result) ? 0 : result?.first.pageCount ?? 0;

  return result;
}

@riverpod
Future<List<NotificationResponseRemote>?> getNotificationListForUnread(
  GetNotificationListForUnreadRef ref,
) async {
  final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);

  const pageNo = 1;
  const pageSize = 30;

  final userModel = await ref.read(helperUserProvider).getUserProfile();

  final result = isConnectionAvailable
      ? await ref.refresh(getNotificationListRemoteProvider(
          dateFrom: DateFormat('yyyy-MM-dd').format(
              DateTime.now().toUtc().subtract(const Duration(days: 14))),
          dateTo: DateFormat('yyyy-MM-dd').format(DateTime.now().toUtc()),
          feature: Constant.feature,
          isAllNotif: 1,
          notifType: Constant.notificationGeneral,
          pageNo: pageNo,
          pageSize: pageSize,
          userId: userModel?.employeeID ?? 0,
        ).future)
      : await ref.refresh(getNotificationListLocalProvider(
              notifType: Constant.notificationGeneral,
              pageNo: pageNo,
              pageSize: pageSize,
              category: null,
              search: null)
          .future);

  return result;
}

@riverpod
Future<bool> markAsReadNotification(MarkAsReadNotificationRef ref,
    {required int employeeId,
    required String notifId,
    required int isMarkAllRead}) async {
  final res = await ref.read(markAsReadNotificationRemoteProvider(
          employeeId: employeeId,
          isMarkAllRead: isMarkAllRead,
          notifId: notifId)
      .future);

  ref.watch(notificationRefreshKeyProvider).currentState?.show();

  return res;
}

@riverpod
GlobalKey<RefreshIndicatorState> notificationRefreshKey(
        NotificationRefreshKeyRef ref) =>
    GlobalKey<RefreshIndicatorState>();
