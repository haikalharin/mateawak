import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:module_etamkawa/src/features/telematry/infrastructure/repositories/telematry_local.repository.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';
import '../../domain/telematry_data_model.dart';
import '../../domain/user_infos_response.remote.dart';
import '../../presentation/controller/telematry.controller.dart';

part 'telematry.repositories.g.dart';

@riverpod
Future<UserInfosResponseRemote> getUserInfosRemote(
  GetUserInfosRemoteRef ref,
) async {
  final userModel = await ref.read(helperUserProvider).getUserProfile();
  final response = await ref.read(connectProvider.notifier).post(
    modul: ModuleType.bpsProfile,
    path: "/api/user-infos?${Constant.apiVer}",
    body: {'adAccount': userModel?.adAccount, 'uid': userModel?.employeeID},
  );

  final result = UserInfosResponseRemote.fromJson(response.result?.content);

  //simulate disable tab
  /* final readiness =
      result.roleAccess?.firstWhere((element) => element.tabId == 159);
  readiness!.isAuthorized = 0;
  result.roleAccess?[result.roleAccess!
      .indexWhere((element) => element.tabId == 159)] = readiness; */

  /* final prod = result.roleAccess?.firstWhere((element) => element.tabId == 160);
  prod!.isAuthorized = 0;
  result.roleAccess?[
      result.roleAccess!.indexWhere((element) => element.tabId == 160)] = prod; */

  /* final rca = result.roleAccess?.firstWhere((element) => element.tabId == 161);
  rca!.isAuthorized = 0;
  result.roleAccess?[
      result.roleAccess!.indexWhere((element) => element.tabId == 161)] = rca; */

  //simulate disable overview
  /*final overview =
      result.roleAccess?.firstWhere((element) => element.tabId == 158);
  overview!.isAuthorized = 0;
  result.roleAccess?[result.roleAccess!
      .indexWhere((element) => element.tabId == 158)] = overview; */

  //simulate disable sitelevel
  /* final sitelevelday =
      result.roleAccess?.firstWhere((element) => element.tabId == 173);
  sitelevelday!.isAuthorized = 0;
  result.roleAccess?[result.roleAccess!
      .indexWhere((element) => element.tabId == 173)] = sitelevelday;

  final sitelevelweek =
      result.roleAccess?.firstWhere((element) => element.tabId == 174);
  sitelevelweek!.isAuthorized = 0;
  result.roleAccess?[result.roleAccess!
      .indexWhere((element) => element.tabId == 174)] = sitelevelweek;

  final sitelevelmonth =
      result.roleAccess?.firstWhere((element) => element.tabId == 175);
  sitelevelmonth!.isAuthorized = 0;
  result.roleAccess?[result.roleAccess!
      .indexWhere((element) => element.tabId == 175)] = sitelevelmonth;

  final sitelevelyear =
      result.roleAccess?.firstWhere((element) => element.tabId == 176);
  sitelevelyear!.isAuthorized = 0;
  result.roleAccess?[result.roleAccess!
      .indexWhere((element) => element.tabId == 176)] = sitelevelyear; */

  ref.read(userRoleProvider.notifier).state = result.roleId == 34
      ? USERROLE.operator
      : result.roleId == 32 || result.roleId == 36
          ? USERROLE.foremanSupervisor
          : USERROLE.superintendentSitemanager;

  final isarInstance = await ref.watch(isarInstanceProvider.future);
  await isarInstance.writeTxn(() async {
    final existingUserInfo = await isarInstance.userInfosResponseRemotes.get(1);

    //keep areaAccess value
    if (existingUserInfo?.siteAccess != null) {
      result.siteAccess = existingUserInfo?.siteAccess;
    }

    //set default selected site if empty
    final isNoSelectedSite = result.siteAccess
        ?.where((element) => element.isSelected == true)
        .toList()
        .isEmpty;
    if (isNoSelectedSite == true) {
      result.siteAccess?[0].isSelected = true;
    }

    await isarInstance.userInfosResponseRemotes.clear();
    await isarInstance.userInfosResponseRemotes.put(result);
    ref.invalidate(getUserInfosLocalProvider);
  });

  return result;
}

@riverpod
Future<bool> submitTelematry(SubmitTelematryRef ref,
    {required List<TelematryDataModel> telematryData}) async {
  final response = await ref.read(connectProvider.notifier).post(
        modul: ModuleType.sharedGeneral,
        path: "/api/telementry/submit?${Constant.apiVer}",
        body: jsonEncode(telematryData),
      );

  debugPrint('responsesubmitTelematry: $response');

  return response.statusCode == 200 || (response.result?.isError == false);
}
