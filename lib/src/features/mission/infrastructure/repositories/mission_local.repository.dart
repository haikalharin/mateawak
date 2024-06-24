import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/configs/services/connect_etamkawa.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_additional_detail.remote.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../constants/function_utils.dart';
import '../../../../shared_component/connection_listener_widget.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'mission_local.repository.g.dart';

@riverpod
FutureOr<List<GamificationResponseRemote>> getMissionRemote(
    GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  final isConnectionAvailable = ref.read(isConnectionAvailableProvider);

  if (isConnectionAvailable) {
    final connect = ref.read(connectProvider.notifier);
    final connectEtamkawa = ref.read(connectEtamkawaProvider.notifier);
    var dummy =      {
      "employeeMissionId": 23860000000000,
      "employeeId": 70002003,
      "missionId": 973,
      "missionStatusCode": 0,
      "missionStatus": "Assigned",
      "startedDate": "2024-06-24T00:00:00",
      "dueDate": "2024-07-24T23:59:59",
      "submittedBy": null,
      "submittedDate": null,
      "completedBy": null,
      "completedDate": null,
      "chapterData": [
        {
          "chapterId": 15900000000,
          "chapterCode": "C00063",
          "chapterName": "Chapter 63 :TEST PEFORMANCE",
          "chapterGoal": "Pengawas Produksi dapat secara aktif membentuk kegiatan dan kolaborasi sesuai struktur Tim kerja masing-masing, serta mendapatkan pengembanganan sebagai pengawas produksi dan bapak asuh yang baik, positif dan produktif",
          "missionData": [
            {
              "missionId": 9730000000,
              "chapterId": 159,
              "missionCode": "M0000973",
              "missionName": "24 Juni [ASM] [1]",
              "missionInstruction": "Langkah Kerja\n\n1. Bacalah tugas dengan seksama\n2. Lakukan tugas sesuai dengan panduan\n3. Ketika sudah selesai melakukan tugas, klik \"kirim\" untuk mendapatkan poin\n4. Tugas hanya bisa dikerjakan hingga 3 hari setelah misi didapatkan\n5. Jika membutuhkan bantuan bisa berdiskusi/bertanya dengan rekan kerja atau atasan dalam tim masing-masing.",
              "missionDuration": 1,
              "missionActiveOnDay": 1,
              "missionTypeCode": "Performance",
              "missionTypeName": "Performance",
              "missionReward": 100,
              "isMandatoryAttachment": true,
              "competencyCode": "CCL0001",
              "competencyName": "Culture & Team Leadership",
              "peopleCategoryCode": "Happy",
              "peopleCategoryName": "Happy",
              "taskData": [
                {
                  "taskId": 3460000000,
                  "missionId": 973,
                  "attachmentId": 1950,
                  "attachmentUrl": "https://digitaldevsta003.blob.core.windows.net/etamkawa-gamification/Gamification/foto potrait 1-45922.jpg?sv=2023-11-03&st=2024-06-24T08%3A14%3A27Z&se=2024-06-25T08%3A14%3A27Z&sr=b&sp=r&sig=DWXjpz%2BD%2B4jjudMBxPoV4KMkhxAhLeSUM70Gw0GDpe0%3D",
                  "taskCode": "T0003460",
                  "taskGroup": "1Rnxr8ITwuzPIvl",
                  "taskCaption": "Anda diminta untuk memulai / mengajak semua pengawas dalam tim anda (supervisor dan semua foreman di dalam struktur tim anda)untuk melakukan sesi ngobrol tatap muka (yang sedang off atau cuti dalam bergabung secara Online).\n-anda dan pengawas lainnya diminta untuk membuat kesepakatan untuk kegiatan kebersamaan dalam Tim (Contoh : masak bersama, berkumpun 1 bulan 1 kali, mengadakan sesi sharing dari LC)\n-buatlah group WA masing-masing jika dirasa dari hasil diskusi diperlukan\n\nsetelah melakukan diskusi bersama anda perlu mengirimkan laporan pada aplikasi berupa :\n1. foto pada saat melakukan diskusi\n2. sebutkan siapa saja pengawas yang mengikuti sesi tersebut. lalu\nceritakan hasil diskusi anda dan kegiatan apa yang disepakati dalam tim",
                  "taskTypeCode": "PFM",
                  "taskTypeName": "Performance",
                  "taskReward": 100,
                  "answerData": null
                }
              ]
            }
          ]
        }
      ]
    };
    final gamificationResponseRemoteDummy = GamificationResponseRemote.fromJson(dummy);
    List<GamificationResponseRemote> listResponse = [gamificationResponseRemoteDummy];
    List<GamificationResponseRemote> listResponseFinal = [];
    List<GamificationResponseRemote> listResponseAfterMerge = [];
    List<GamificationResponseRemote> listAfterCheckIsIncomplete = [];
    final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());

    // const rawMissionDummy = Constant.rawMissionDummy;
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    var latestSyncDate = ref.read(latestSyncDateState.notifier).state;
    final latestSyncDateIsar = await isarInstance
        .gamificationAdditionalDetailRemotes
        .filter()
        .idEqualTo(0)
        .findFirst();
    if (latestSyncDateIsar?.latestSyncDate != null) {
      latestSyncDate = latestSyncDateIsar!.latestSyncDate!;
    }
    debugPrint('latestsyncdate : ${latestSyncDateIsar?.latestSyncDate}');
    final response = await connect.post(
        modul: ModuleType.etamkawaGamification,
        path: "api/mission/get_employee_mission?${Constant.apiVer}",
        body: {
          "employeeId": userModel?.employeeID,
          "requestDate": latestSyncDate
          //"requestDate": '2024-03-01T03:55:58.918Z'
        });
    for (var element in response.result?.content) {
      // for (var element in rawMissionDummy) {
      final result = GamificationResponseRemote.fromJson(element);
      listResponse.add(result);
    }
    final repo = isarInstance.gamificationResponseRemotes
        .filter()
        .employeeMissionIdIsNotNull()
        .findAll();

    await AsyncValue.guard(() => repo).then((value) async {
      for (var element in listResponse) {
        if ((value.value ?? []).isNotEmpty) {
          bool exists = (value.value ?? []).any(
              (item) => item.employeeMissionId == element.employeeMissionId);

          if (!exists) {
            listResponseFinal.add(element);
          }
        } else {
          listResponseFinal.add(element);
        }
      }
    });

    listResponseAfterMerge.addAll(listResponse);
    listResponseAfterMerge.addAll(listResponseFinal);
    for (var element in listResponseFinal) {
      DateTime dueDate = DateTime.parse(
          CommonUtils.formattedDateHoursUtcToLocalForCheck(
              element.dueDate ?? '2024-00-00T00:00:00'));
      int different = calculateDifferenceDate(dueDate, DateTime.now());
      if (element.missionStatusCode != null) {
        if (different > 0 && element.missionStatusCode! < 2) {
          listAfterCheckIsIncomplete.add(GamificationResponseRemote(
              employeeMissionId: element.employeeMissionId,
              missionId: element.missionId,
              missionStatusCode: 4,
              missionStatus: 'Incomplete',
              startedDate: element.startedDate,
              dueDate: element.dueDate,
              submittedBy: element.submittedBy,
              submittedDate: element.submittedDate,
              completedBy: element.completedBy,
              completedDate: element.completedDate,
              chapterData: element.chapterData));
        } else {
          listAfterCheckIsIncomplete.add(element);
        }
        int index = 0;
        for (var element in listAfterCheckIsIncomplete) {
          List<TaskDatum> listTask =
              element.chapterData?.single.missionData?.single.taskData ?? [];
          if(element.missionStatusCode != 4){
            int indexTask = 0;
            //List<TaskDatum> taskData = [];
            for (var element in listTask) {
              File file = File('');
              if (element.attachmentUrl != null) {
                final response = connectEtamkawa.downloadImage(
                  url: element.attachmentUrl ?? '',
                );
                await AsyncValue.guard(() => response).then((value) async {
                  file = await asyncMethodSaveFile(value.value?.data);
                  listAfterCheckIsIncomplete[index]
                      .chapterData
                      ?.single
                      .missionData
                      ?.single
                      .taskData?[indexTask]
                      .attachmentPath = file.path;
                  indexTask++;
                });
              } else {
                listAfterCheckIsIncomplete[index]
                    .chapterData
                    ?.single
                    .missionData
                    ?.single
                    .taskData?[indexTask]
                    .attachmentPath = '';
                indexTask++;
              }
            }
          }


          index++;
        }
      }
    }

    await isarInstance.writeTxn(() async {
      await isarInstance.gamificationResponseRemotes
          .putAll(listAfterCheckIsIncomplete);
    });

    ref.read(latestSyncDateState.notifier).state = today;
    await isarInstance.writeTxn(() async {
      await isarInstance.gamificationAdditionalDetailRemotes.put(
          GamificationAdditionalDetailRemote(
              id: 0,
              latestSyncDate: today,
              latestSyncDateValidation:
                  latestSyncDateIsar?.latestSyncDateValidation));
    });
    ref.keepAlive();
  }

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();

  return data;
}

@riverpod
FutureOr<List<GamificationResponseRemote>> getMissionLocal(
    GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();

  return data;
}
