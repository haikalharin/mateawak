import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../mission/domain/gamification_response.remote.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'main_nav.repository.g.dart';

@riverpod
FutureOr <bool> fetchMission(FetchMissionRef ref) async {
  // final response = {
  //   "attachId": 120,
  //   "title": "Tentang Kami",
  //   "fileName": "btech.id",
  //   "content": Constant.htmlNews,
  // };
  // final result = NewsResponseRemote.fromJson(response);

  const response = Constant.rawMissionDummy;
  final result = GamificationResponseRemote.fromJson(response);
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  await isarInstance.writeTxn(() async {
    await isarInstance.gamificationResponseRemotes.put(result);
  });

  ref.keepAlive();
  return true;
}



