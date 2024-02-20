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
  final response = {
    "attachmentId": 4,
    "formattedName": ImageConstant.imageNews64
  };
  final result = DownloadAttachmentNewsRequestRemote.fromJson(response);

  // final response = await ref.read(connectProvider.notifier).get(
  //   modul: ModuleType.etamkawaNews,
  //   path: "/api/attachment/download_attachment?${Constant.apiVer}",
  // );
  // final result =
  // DownloadAttachmentNewsRequestRemote.fromJson(response.result?.content);

  final isarInstance = await ref.watch(isarInstanceProvider.future);
  await isarInstance.writeTxn(() async {
    await isarInstance.downloadAttachmentNewsRequestRemotes.put(result);
  });
  // await ref.watch(getNewsRemoteProvider.future);

  ref.keepAlive();
  return result;
}

@riverpod
Future<AchievementProduksiResponseRemote> getAchievementProduksiRemote(
    GetAchievementProduksiRemoteRef ref,
    {required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas}) async {
  final isAll = areas?.contains(Constant.all);

  final userInfo = await ref.read(getUserInfosLocalProvider.future);

  final data = AchievementProduksiRequestRemote(
      siteId: userInfo?.siteId,
      roleId: userInfo?.roleId,
      areas: isAll == true
          ? [
              "TOP",
              "MIDDLE",
              "BOTTOM",
            ]
          : areas,
      material: material,
      adAccount: adAccount,
      uid: uid);

  final response = await ref.read(connectProvider.notifier).post(
        modul: ModuleType.bpsKpiperformance,
        path: "/api/overviews/achievement-produksi?${Constant.apiVer}",
        body: data.toJson(),
      );

  final result =
      AchievementProduksiResponseRemote.fromJson(response.result?.content);

  final isarInstance = await ref.watch(isarInstanceProvider.future);
  await isarInstance.writeTxn(() async {
    result.isOb = material == Constant.ob;
    await isarInstance.achievementProduksiResponseRemotes
        .filter()
        .isObEqualTo(material == Constant.ob)
        .deleteAll();

    await isarInstance.achievementProduksiResponseRemotes.put(result);
  });

  ref.keepAlive();
  return result;
}

@riverpod
Future<List<DetailHourlyGrafikResponseRemote>> getDetailHourlyGrafikRemote(
    GetDetailHourlyGrafikRemoteRef ref,
    {required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas}) async {
  final isAll = areas?.contains(Constant.all);

  final userInfo = await ref.read(getUserInfosProvider.future);

  final data = AchievementProduksiRequestRemote(
      siteId: userInfo?.siteId,
      roleId: userInfo?.roleId,
      areas: isAll == true
          ? [
              "TOP",
              "MIDDLE",
              "BOTTOM",
            ]
          : areas,
      material: material,
      adAccount: adAccount,
      uid: uid);

  final response = await ref.read(connectProvider.notifier).post(
        modul: ModuleType.bpsKpiperformance,
        path: "/api/overviews/detail-hourly-grafik?${Constant.apiVer}",
        body: data.toJson(),
      );

  final result = List<DetailHourlyGrafikResponseRemote>.from(
      response.result?.content.map((x) {
    return DetailHourlyGrafikResponseRemote.fromJson(x);
  }));

  final finalResult = result.map((e) {
    e.isOb = material == Constant.ob;
    return e;
  }).toList();

  final isarInstance = await ref.watch(isarInstanceProvider.future);
  await isarInstance.writeTxn(() async {
    await isarInstance.detailHourlyGrafikResponseRemotes
        .filter()
        .isObEqualTo(material == Constant.ob)
        .deleteAll();

    await isarInstance.detailHourlyGrafikResponseRemotes.putAll(finalResult);
  });

  ref.keepAlive();
  return result;
}

@riverpod
Future<List<UnitBreakdownResponseRemote>> getUnitBreakdownRemote(
  GetUnitBreakdownRemoteRef ref, {
  required String? material,
  required String? adAccount,
  required int? uid,
  required List<String>? areas,
}) async {
  final isAll = areas?.contains(Constant.all);

  final userInfo = await ref.read(getUserInfosProvider.future);

  final data = UnitBreakdownRequestRemote(
    siteId: userInfo?.siteId,
    roleId: userInfo?.roleId,
    areas: isAll == true
        ? [
            "TOP",
            "MIDDLE",
            "BOTTOM",
          ]
        : areas,
    material: material,
    adAccount: adAccount,
    uid: uid,
  );

  final response = await ref.read(connectProvider.notifier).post(
        modul: ModuleType.bpsKpiperformance,
        path: "/api/overviews/unit-breakdown?${Constant.apiVer}",
        body: data.toJson(),
      );

  final resultResponse = response.result?.content;
  final result = resultResponse.isNotEmpty
      ? List.generate(
          resultResponse.length,
          (index) =>
              UnitBreakdownResponseRemote.fromJson(resultResponse[index]))
      : <UnitBreakdownResponseRemote>[];

  final finalResult = result.map((e) {
    e.isOb = material == Constant.ob;
    return e;
  }).toList();

  final isarInstance = await ref.watch(isarInstanceProvider.future);
  await isarInstance.writeTxn(() async {
    await isarInstance.unitBreakdownResponseRemotes
        .filter()
        .isObEqualTo(material == Constant.ob)
        .deleteAll();

    await isarInstance.unitBreakdownResponseRemotes.putAll(finalResult);
  });

  ref.keepAlive();
  return result;
}
