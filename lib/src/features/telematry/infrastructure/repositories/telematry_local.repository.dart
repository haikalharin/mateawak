import 'package:module_etamkawa/src/features/offline_mode/infrastructure/repositories/isar.repository.dart';
import 'package:module_etamkawa/src/features/telematry/domain/user_infos_response.remote.dart';
import 'package:module_etamkawa/src/features/telematry/presentation/controller/telematry.controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'telematry_local.repository.g.dart';

@riverpod
Future<UserInfosResponseRemote?> getUserInfosLocal(
    GetUserInfosLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.userInfosResponseRemotes.get(1);

  ref.read(userRoleProvider.notifier).state = data?.roleId == 34
      ? USERROLE.operator
      : data?.roleId == 32 || data?.roleId == 36
          ? USERROLE.foremanSupervisor
          : USERROLE.superintendentSitemanager;
  return data;
}
