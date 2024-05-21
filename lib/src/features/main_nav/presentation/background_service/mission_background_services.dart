import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:module_shared/module_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../constants/function_utils.dart';
import '../../../mission/domain/gamification_response.remote.dart';
import '../../../task/domain/answer_request.remote.dart';
import '../../../task/domain/task_datum_answer_request.remote.dart';

FutureOr<void> intializedMissionBackgroundService() async {
  log('intializedBackgroundService');
  final service = FlutterBackgroundService();
  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      autoStart: false,
      isForegroundMode: false,
    ),
    iosConfiguration: IosConfiguration(
        autoStart: false, onForeground: onStart, onBackground: onIosBackground),
  );
  await service.startService();
}

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance serviceInstance) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  await performExecution(serviceInstance);

  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance serviceInstance) async {
  DartPluginRegistrant.ensureInitialized();

  await performExecution(serviceInstance);
}

Future<void> performExecution(ServiceInstance serviceInstance) async {
  final dir = await getApplicationSupportDirectory();

  serviceInstance.on(Constant.bgMissionInit).listen((payload) async {
    try {
      final existingIsarInstance =
          Isar.getInstance(Constant.etamkawaIsarInstance);

      final isarInstance = existingIsarInstance ??
          Isar.openSync([
            NewsResponseRemoteSchema,
            GamificationResponseRemoteSchema,
            AnswerRequestRemoteSchema
          ], directory: dir.path, name: Constant.etamkawaIsarInstance);
      var isSubmitAnswer = payload?['isSubmitAnswer'] as bool;
      var isFetchMission = payload?['isFetchMission'] as bool;
      if (isSubmitAnswer == true && isFetchMission == true) {
        await submitAnswerBg(
                url: payload?['url'] as String,
                path: payload?['pathSubmitMission'] as String,
                pathImage: payload?['pathImage'] as String,
                isarInstance: isarInstance,
                accessToken: payload?['accessToken'] as String)
            .whenComplete(() async {
          await fetchMission(
              url: payload?['url'] as String,
              path: payload?['pathFetchMission'] as String,
              requestDate: payload?['requestDate'] as String,
              employeeId: payload?['employeeId'] as int,
              isarInstance: isarInstance,
              accessToken: payload?['accessToken'] as String);
        });
      } else {
        if (isFetchMission == true) {
          await fetchMission(
              url: payload?['url'] as String,
              path: payload?['pathFetchMission'] as String,
              requestDate: payload?['requestDate'] as String,
              employeeId: payload?['employeeId'] as int,
              isarInstance: isarInstance,
              accessToken: payload?['accessToken'] as String);
        }
      }
    } catch (e) {
      log('background service error: $e');
      throw Exception(e);
    }
  });
}

Future<bool> submitAnswerBg(
    {required String url,
    required String path,
    required String pathImage,
    required accessToken,
    required Isar isarInstance}) async {
  try {
    final repo = isarInstance.answerRequestRemotes
        .filter()
        .employeeMissionIdIsNotNull()
        .findAll();
    final repoGamification = isarInstance.gamificationResponseRemotes
        .filter()
        .employeeMissionIdIsNotNull()
        .findAll();
    List<bool> listSucces = [];
    await AsyncValue.guard(() => repo).then((value) async {
      for (var element in value.value ?? []) {
        AnswerRequestRemote answerRequestRemote = element;
        if (answerRequestRemote.status == 2 ||
            answerRequestRemote.status == 4) {
          for (var elementAnswer in answerRequestRemote.taskData ?? []) {
            TaskDatumAnswer taskDatumAnswer = elementAnswer;
            if (taskDatumAnswer.attachment != '' &&
                taskDatumAnswer.attachment != null) {
              final map = FormData.fromMap({
                "File":
                    await MultipartFile.fromFile(taskDatumAnswer.attachment!),
                "Group": taskDatumAnswer.taskGroup,
              });

              final response =  ConnectBackgroundService().post(
                  accessToken: accessToken,
                  url: url,
                  path: pathImage,
                  body: map);
              await AsyncValue.guard(() => response).then((value) async {
                if (value.value?.statusCode == 200) {
                  int id = 64;
                  if (value.value?.result?.content["resultData"] != null) {
                    id = int.parse(value.value?.result?.content["resultData"]);
                  }
                  taskDatumAnswer.attachmentId = id;
                }
              });
            }
          }

          final response = ConnectBackgroundService().post(
              accessToken: accessToken,
              path: path,
              url: url,
              body: answerRequestRemote.toJson());

          await AsyncValue.guard(() => response).then((value) async {

            if (value.value?.statusCode == 200) {


              // await isarInstance.writeTxn(() async {
              //   await isarInstance.answerRequestRemotes
              //       .delete(answerRequestRemote.employeeMissionId ?? 0)
              //       .whenComplete(() async {
              //     await isarInstance.gamificationResponseRemotes
              //         .delete(answerRequestRemote.employeeMissionId ?? 0);
              //   });
              // });

              await isarInstance.writeTxn(() async {
                await isarInstance.answerRequestRemotes
                    .filter()
                    .employeeMissionIdEqualTo(
                        answerRequestRemote.employeeMissionId)
                    .deleteAll()
                    .whenComplete(() async {
                  await isarInstance.gamificationResponseRemotes
                      .filter()
                      .employeeMissionIdEqualTo(
                          answerRequestRemote.employeeMissionId)
                      .deleteAll();
                });
              });
            }
            var statusSuccess = value.value?.statusCode == 200 ||
                (value.value?.result?.isError == false);
            listSucces.add(statusSuccess);
          });
        }
      }
    });

    if (isarInstance.isOpen) {
      await isarInstance.close();
    }
    if (listSucces.contains(!false)) {
      listSucces.clear();
      return true;
    } else {
      listSucces.clear();
      return false;
    }
  } on DioException {
    return false;
  } catch (e) {
    debugPrint('fetch val mission offline : success');
    return false;
  }
}

Future<bool> fetchMission(
    {required String url,
    required String path,
    required String requestDate,
    required int employeeId,
    required isarInstance,
    required accessToken}) async {
  try {
    List<GamificationResponseRemote> listResponse = [];
    List<GamificationResponseRemote> listResponseFinal = [];
    List<GamificationResponseRemote> listResponseAfterMerge = [];
    List<GamificationResponseRemote> listAfterCheckIsIncomplete = [];

    final response = await ConnectBackgroundService().post(
      accessToken: accessToken as String,
      path: path,
      url: url,
      body: {
        "employeeId": employeeId,
        "requestDate": requestDate
//"requestDate": '2024-03-01T03:55:58.918Z'
      },
    );
    if (response.statusCode == 200) {
      log('submit data result: ${response.result}');
      for (var element in response.result?.content) {
// for (var element in rawMissionDummy) {
        final result = GamificationResponseRemote.fromJson(element);
        listResponse.add(result);
      }
// final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
// ref.watch(latestSyncDateState.notifier).state = today;

      final repo = isarInstance.gamificationResponseRemotes
          .filter()
          .employeeMissionIdIsNotNull()
          .findAll();

    debugPrint('fetch val mission offline : isar sukses');
      await AsyncValue.guard(() => repo).then((value) async {
        if (listResponse.isNotEmpty) {
          for (var element in listResponse) {
            if ((value.value ?? []).isNotEmpty) {
              bool exists = (value.value ?? []).any((item) =>
                  item.employeeMissionId == element.employeeMissionId);

              if (!exists) {
                listResponseFinal.add(element);
              }
            } else {
              listResponseFinal.add(element);
            }
          }
        }
      });
      int index = 0;
      for (var element in listResponseFinal) {
        List<TaskDatum> listTask =
            element.chapterData?.single.missionData?.single.taskData ?? [];
        int indexTask = 0;
        for (var element in listTask) {
          File file = File('');
          if (element.attachmentUrl != null) {
            final response = ConnectBackgroundService().downloadImage(
              url: element.attachmentUrl ?? '',
            );
            await AsyncValue.guard(() => response).then((value) async {
              file = await asyncMethodSaveFile(value.value?.data);
              listResponseFinal[index]
                  .chapterData
                  ?.single
                  .missionData
                  ?.single
                  .taskData?[indexTask]
                  .attachmentPath = file.path;
              indexTask++;
            });
          } else {
            listResponseFinal[index]
                .chapterData
                ?.single
                .missionData
                ?.single
                .taskData?[indexTask]
                .attachmentPath = '';
            indexTask++;
          }
        }

        index++;
      }
      listResponseAfterMerge.addAll(listResponse);
      listResponseAfterMerge.addAll(listResponseFinal);
      for (var element in listResponseAfterMerge) {
        DateTime dueDate =
            DateTime.parse(element.dueDate ?? '2024-00-00T00:00:00');
        int different = calculateDifferenceDays(dueDate, DateTime.now());
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
        }
      }

      await isarInstance.writeTxn(() async {
//await isarInstance.gamificationResponseRemotes.clear();
        await isarInstance.gamificationResponseRemotes
            .putAll(listAfterCheckIsIncomplete);
      });

// final data = await isarInstance.gamificationResponseRemotes
//     .filter()
//     .employeeMissionIdIsNotNull()
//     .findAll();

// if (isarInstance.isOpen) {
//   await isarInstance.close();
// }
//await serviceInstance.stopSelf();
      return true;
    }
    return false;
  } on DioException {
    return false;
  } catch (e) {
    debugPrint('fetch val mission offline : $e');
    return false;
  }
}

Future<void> deleteAnswer(Isar isarInstance,
    List<TaskDatumAnswerRequestRemote> listTaskAnswer) async {
  List<int> listId = [];
  for (var element in listTaskAnswer) {
    listId.add(element.taskId ?? 0);
  }
  await isarInstance.writeTxn(() async {
    await isarInstance.taskDatumAnswerRequestRemotes.deleteAll(listId);
  });
}
