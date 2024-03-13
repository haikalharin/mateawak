import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/overview/domain/download_attachment_request.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/unit_breakdown_request.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/unit_breakdown_response.remote.dart';
import 'package:module_etamkawa/src/features/telematry/infrastructure/repositories/telematry_local.repository.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';
import '../../domain/achievement_produksi_request.remote.dart';
import '../../domain/achievement_produksi_response.remote.dart';
import '../../domain/detail_hourly_grafik_response.remote.dart';

part 'overview.repository.g.dart';

@riverpod
FutureOr<NewsResponseRemote> getNewsRemote(GetNewsRemoteRef ref) async {
  final connect = ref.read(connectProvider.notifier);
  // final response = {
  //   "attachId": 120,
  //   "title": "Tentang Kami",
  //   "fileName": "btech.id",
  //   "content": Constant.htmlNews,
  // };
  // final result = NewsResponseRemote.fromJson(response);

  final response = await connect.get(
    modul: ModuleType.etamkawaNews,
    path: "/api/news/get_last_news?${Constant.apiVer}",
  );
  final result = NewsResponseRemote.fromJson(response.result?.content);
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  await isarInstance.writeTxn(() async {
    await isarInstance.newsResponseRemotes.put(result);
  });

  ref.keepAlive();
  return result;
}

@riverpod
Future<DownloadAttachmentNewsRequestRemote> getNewsImageRemote(
    GetNewsImageRemoteRef ref,
    {int? id}) async {

  final response = await ref.read(connectProvider.notifier).post(
      modul: ModuleType.etamkawaNews,
      path: "/api/attachment/download_attachment?${Constant.apiVer}",
      body: {
        "attachmentId": id
      }
  );
  final result =
  DownloadAttachmentNewsRequestRemote.fromJson(
      {
        "attachmentId": id,
        "formattedName": response.result?.content
      }
  );

  final isarInstance = await ref.watch(isarInstanceProvider.future);
  await isarInstance.writeTxn(() async {
    await isarInstance.downloadAttachmentNewsRequestRemotes.put(result);
  });

  ref.keepAlive();
  return result;
}

