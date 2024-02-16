import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';
import '../../domain/achievement_produksi_response.remote.dart';
import '../../domain/detail_hourly_grafik_response.remote.dart';
import '../../domain/download_attachment_request.remote.dart';
import '../../domain/unit_breakdown_response.remote.dart';
part 'overview_local.repository.g.dart';


@riverpod
Future<NewsResponseRemote?> getNewsLocal(
    GetNewsLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.newsResponseRemotes.filter().contentIsNotEmpty().findAll();

  return data.first;
}

@riverpod
Future<DownloadAttachmentNewsRequestRemote?> getNewsImageLocal(
    GetNewsImageLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.downloadAttachmentNewsRequestRemotes.filter().formattedNameIsNotEmpty().findAll();
  return data.first;
}

@riverpod
Future<AchievementProduksiResponseRemote?> getAchievementProduksiLocal(
    GetAchievementProduksiLocalRef ref, bool isOb) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.achievementProduksiResponseRemotes
      .filter()
      .isObEqualTo(isOb)
      .findAll();

  return data.first;
}

@riverpod
Future<List<DetailHourlyGrafikResponseRemote>> getDetailHourlyGrafikLocal(
    GetDetailHourlyGrafikLocalRef ref, bool isOb) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.detailHourlyGrafikResponseRemotes
      .filter()
      .isObEqualTo(isOb)
      .findAll();

  return data;
}

@riverpod
Future<List<UnitBreakdownResponseRemote>> getUnitBreakdownLocal(
    GetUnitBreakdownLocalRef ref, bool isOb) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.unitBreakdownResponseRemotes
      .filter()
      .isObEqualTo(isOb)
      .findAll();

  return data;
}
