import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/notifications/domain/notification_response.remote.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';
part 'notification_local.repository.g.dart';

@riverpod
Future<List<NotificationResponseRemote>?> getNotificationListLocal(
    GetNotificationListLocalRef ref,
    {required String? notifType,
    required int? pageNo,
    required int? pageSize,
    required String? category,
    required String? search}) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.notificationResponseRemotes
      .filter()
      .notifTypeEqualTo(notifType)
      .pageNoEqualTo(pageNo)
      .pageSizeEqualTo(pageSize)
      .optional(category != null, (q) => q.categoryEqualTo(category))
      .optional(search != null, (q) => q.notifTitleContains('$search'))
      .optional(search != null, (q) => q.notifDescriptionContains('$search'))
      .findAll();

  return data;
}
