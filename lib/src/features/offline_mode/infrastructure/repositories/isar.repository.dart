import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/overview/domain/achievement_produksi_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/detail_hourly_grafik_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/unit_breakdown_response.remote.dart';
import 'package:module_etamkawa/src/features/setting/domain/setting.model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar.repository.g.dart';

@riverpod
Future<Isar> isarInstance(IsarInstanceRef ref) async {
  final dir = await getApplicationSupportDirectory();
  final existingIsarInstance = Isar.getInstance(Constant.bpsIsarInstance);

  //Add other Isar Scheme here
  final isar = existingIsarInstance ??
      await Isar.open([
        SettingModeEtamkawalSchema,

        //Overview
        AchievementProduksiResponseRemoteSchema,
        DetailHourlyGrafikResponseRemoteSchema,
        UnitBreakdownResponseRemoteSchema,


      ], directory: dir.path, name: Constant.bpsIsarInstance);

  return isar;
}
