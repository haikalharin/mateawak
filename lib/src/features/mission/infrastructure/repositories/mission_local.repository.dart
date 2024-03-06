import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'mission_local.repository.g.dart';

@riverpod
FutureOr<List<GamificationResponseRemote>> getMissionLocal(GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  // final connect = ref.read(connectProvider.notifier);
  const List<GamificationResponseRemote> listResponse =[];
  const response =Constant.rawMissionDummy;
  for (var element in response) {
    final result = GamificationResponseRemote.fromJson(element);
    await isarInstance.writeTxn(() async {
      await isarInstance.gamificationResponseRemotes.put(result);
    });
    listResponse.add(result);
  }


  // final response = await connect.get(
  //   modul: ModuleType.etamkawaNews,
  //   path: "/api/news/get_last_news?${Constant.apiVer}",
  // );
  // final result = NewsResponseRemote.fromJson(response.result?.content);


  ref.keepAlive();

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .chapterDataIsNotEmpty()
      .findAll();

  return data;
}


