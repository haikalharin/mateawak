import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/overview/domain/achievement_produksi_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/detail_hourly_grafik_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/download_attachment_request.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/unit_breakdown_response.remote.dart';
import 'package:module_etamkawa/src/features/setting/domain/setting.model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../overview/domain/news_response.remote.dart';

part 'isar.repository.g.dart';

@riverpod
Future<Isar> isarInstance(IsarInstanceRef ref) async {
  final dir = await getApplicationSupportDirectory();
  final existingIsarInstance = Isar.getInstance(Constant.etamkawaIsarInstance);

  //Add other Isar Scheme here
  final isar = existingIsarInstance ??
      await Isar.open([
        SettingModelSchema,

        //Overview
        AchievementProduksiResponseRemoteSchema,
        DetailHourlyGrafikResponseRemoteSchema,
        UnitBreakdownResponseRemoteSchema,
        NewsResponseRemoteSchema,
        DownloadAttachmentNewsRequestRemoteSchema,


      ], directory: dir.path, name: Constant.etamkawaIsarInstance);

  return isar;
}
