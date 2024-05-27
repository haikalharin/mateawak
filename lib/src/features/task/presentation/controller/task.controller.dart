import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/features/task/domain/answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/result_submission_request.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/task_datum_answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/infrastructure/task_local.repository.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/function_utils.dart';
import '../../../../shared_component/connection_listener_widget.dart';
import '../../../../utils/common_utils.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'task.controller.g.dart';

enum TaskType { MCQ, SCQ, YNQ, STX, RAT, ASM, DEFAULT }

enum PagePosition { NEXT, PREV, CURRENT }

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final submitStatusTaskState = StateProvider.autoDispose<SubmitStatus>((ref) {
  return SubmitStatus.initial;
});
final currentIndexState = StateProvider.autoDispose<int>((ref) => 0);
final currentProgressState = StateProvider.autoDispose<int>((ref) => 0);

final currentTypeTaskState = StateProvider.autoDispose<String>((ref) => '');

final selectOptionState = StateProvider.autoDispose<int>((ref) => 0);

final listSelectOptionState = StateProvider.autoDispose<List<int>>((ref) => []);

final listSelectOptionCurrentState =
    StateProvider.autoDispose<List<int>>((ref) => []);

final listSelectOptionCurrentStringState =
    StateProvider.autoDispose<List<String>>((ref) => []);

final listSelectOptionStringState =
    StateProvider.autoDispose<List<String>>((ref) => []);

final selectOptionIndexState = StateProvider.autoDispose<int>((ref) => 0);

final answerState =
    StateProvider.autoDispose<List<TaskDatumAnswer>>((ref) => []);
final answerCurrentState =
    StateProvider.autoDispose<List<TaskDatumAnswer>>((ref) => []);

final answerFinalState = StateProvider.autoDispose<AnswerRequestRemote>(
    (ref) => AnswerRequestRemote());

final listTaskState = StateProvider.autoDispose<List<TaskDatum>>((ref) => []);

final listMissionState =
    StateProvider.autoDispose<List<MissionDatum>>((ref) => []);

// final attachmentBase64State = StateProvider.autoDispose<String>((ref) => '');

final attachmentPathCurrentState =
    StateProvider.autoDispose<String>((ref) => '');
final attachmentPathState = StateProvider.autoDispose<String>((ref) => '');

final attachmentNameCurrentState =
    StateProvider.autoDispose<String>((ref) => '');
final attachmentNameState = StateProvider.autoDispose<String>((ref) => '');

final missionDataState =
    StateProvider.autoDispose<MissionDatum>((ref) => MissionDatum());

final gamificationState = StateProvider.autoDispose<GamificationResponseRemote>(
    (ref) => GamificationResponseRemote());

final resultSubmissionState =
    StateProvider.autoDispose<ResultSubmissionRequestRemote>(
        (ref) => ResultSubmissionRequestRemote());

@riverpod
class TaskController extends _$TaskController {
  List<GamificationResponseRemote> listGamification = [];
  List<int> listSelectOptionPrev = [];
  List<TaskDatumAnswerRequestRemote> listTaskAnswer = [];
  var index = 0;
  var currentTypeTask = '';
  var currentTaskId = 0;
  var attachment = '';
  var attachmentName = '';
  var taskGroup = '';
  List<int> listSelectOptionCurrent = [];
  List<String> listSelectOptionCurrentString = [];

  @override
  FutureOr<void> build() async {}

  Future<List<TaskDatumAnswerRequestRemote>> fetchAnswerData() async {
    return await ref.watch(getAnswerLocalProvider.future);
  }

  Future<void> changeCurrentIndex() async {
    var index = ref.watch(currentIndexState);
    ref.watch(currentIndexState.notifier).state = index++;
  }

  Future<void> selectOption(int value) async {
    if (value != 0) {
      ref.watch(selectOptionState.notifier).state = value;
    }
  }

  Future<List<TaskDatumAnswerRequestRemote>> getTaskAnswer() async {
    return await ref.watch(getAnswerLocalProvider.future);
  }

  Future<List<TaskDatumAnswer>> getAnswerFinal(
      {required int employeeMissionId}) async {
    return await ref.watch(
        getAnswerFinalLocalProvider(employeeMissionId: employeeMissionId)
            .future);
  }

  Future<void> putCurrentAnswerFinal() async {
    if (ref.read(currentTypeTaskState.notifier).state == TaskType.STX.name) {
      ref.watch(listSelectOptionStringState.notifier).state =
          ref.read(listSelectOptionCurrentStringState.notifier).state;
      state = const AsyncValue.data(null);
    } else {
      ref.watch(listSelectOptionState.notifier).state =
          ref.read(listSelectOptionCurrentState.notifier).state;
      state = const AsyncValue.data(null);
    }
  }

  Future<bool> putAnswerFinal({bool isSubmitted = false}) async {
    bool isSuccess = true;
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final today =
        CommonUtils.formatDateRequestParam(DateTime.now().toUtc().toString());
    List<TaskDatumAnswer> listData = [];
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    final gamification = ref.watch(gamificationState.notifier).state;
    final resultSubmissionNotifier = ref.watch(resultSubmissionState.notifier);
    final listTask = ref.watch(listTaskState.notifier).state;
    for (var element in listTask) {
      final repo = isarInstance.taskDatumAnswerRequestRemotes
          .filter()
          .taskIdEqualTo(element.taskId)
          .findFirst();
      await AsyncValue.guard(() => repo).then((dataAnswer) async {
        debugPrint(element.toString());
        listData.add(TaskDatumAnswer(
            taskId: dataAnswer.value?.taskId,
            answer: dataAnswer.value?.answer,
            attachmentName: dataAnswer.value?.attachmentName,
            attachment: dataAnswer.value?.attachment,
            taskGroup: dataAnswer.value?.taskGroup));
      });
    }
    var taskAnswer = AnswerRequestRemote(
        employeeMissionId: gamification.employeeMissionId,
        employeeName: userModel?.employeeName,
        submittedDate: today.substring(0, today.length - 6),
        status: gamification.missionStatusCode,
        taskData: listData);
    final isConnectionAvailable = ref.read(isConnectionAvailableProvider);
    if (isConnectionAvailable) {
      if (isSubmitted) {
        var status = 99;
        if (gamification.chapterData?.single.missionData?.single.missionTypeCode
                ?.toLowerCase() ==
            'assignment') {
          status = 3;
        }
        final result = ref.read(submitMissionProvider(
                answerRequestRemote: taskAnswer, status: status)
            .future);

        await AsyncValue.guard(() => result).then((value) async {
          Map<String, dynamic> data = value.value ?? {};
          ApiResponse apiResponse = data['response'];
          bool sendImageSuccess = data['sendImageSuccess'];
          ResultSubmissionRequestRemote result =
              ResultSubmissionRequestRemote();
          if (apiResponse.result?.content != null) {
            result = ResultSubmissionRequestRemote.fromJson(
                apiResponse.result?.content);
          }
          if (sendImageSuccess == true) {
            if (apiResponse.statusCode == 200 &&
                apiResponse.result?.isError == false) {
              resultSubmissionNotifier.state =
                  resultSubmissionNotifier.state.copyWith(
                employeeMissionId: result.employeeMissionId,
                competencyName: result.competencyName,
                rewardGained: result.rewardGained,
                accuracy: result.accuracy,
              );

              debugPrint(
                  'Reward Response from result= ${result.competencyName} ${result.accuracy} ${result.rewardGained}');
              debugPrint(
                  'Reward Response from notifier = ${resultSubmissionNotifier.state.competencyName} ${resultSubmissionNotifier.state.accuracy} ${resultSubmissionNotifier.state.rewardGained}');
              await deleteAnswer(listTaskAnswer);
            } else {
              if(apiResponse.result?.message == 'Already Submitted')
              isSuccess = false;
              Navigator.of(globalkey.currentContext!).pop();
              Navigator.of(globalkey.currentContext!).pop();
              SharedComponent.dialogPopUp(
                type: 'info',
                context: globalkey.currentContext!,
                title: 'Oops!',
                subTitle: 'Submit Failed',
                btntitleright: 'Ok',
                onpressright: () {
                  Navigator.of(globalkey.currentContext!).pop();
                  Navigator.of(globalkey.currentContext!).pop();
                  Navigator.of(globalkey.currentContext!).pop();
                },
              );
            }
          } else {
            isSuccess = false;
            Navigator.of(globalkey.currentContext!).pop();
            Navigator.of(globalkey.currentContext!).pop();
            SharedComponent.dialogPopUp(
              type: 'info',
              context: globalkey.currentContext!,
              title: 'Oops!',
              subTitle: 'Submit Failed',
              btntitleright: 'Ok',
              onpressright: () {
                Navigator.of(globalkey.currentContext!).pop();
                Navigator.of(globalkey.currentContext!).pop();
                Navigator.of(globalkey.currentContext!).pop();
              },
            );
          }
        });
      } else {
        await ref.read(
            putAnswerFinalLocalProvider(answerRequestRemote: taskAnswer)
                .future);
      }
    } else {
      await ref
          .read(putAnswerFinalLocalProvider(answerRequestRemote: taskAnswer)
              .future)
          .whenComplete(() async {
        await changeStatusTask(isDone: isSubmitted);
      });
    }
    return isSuccess;
  }

  Future<void> clearData({isJustCurrent = false}) async {
    if (isJustCurrent) {
      ref.read(attachmentNameCurrentState.notifier).state = '';
      ref.read(attachmentPathCurrentState.notifier).state = '';
      ref.read(listSelectOptionCurrentStringState).clear();
      ref.read(listSelectOptionCurrentState).clear();
    } else {
      ref.read(attachmentNameCurrentState.notifier).state = '';
      ref.read(attachmentNameState.notifier).state = '';
      ref.read(attachmentPathCurrentState.notifier).state = '';
      ref.read(attachmentPathState.notifier).state = '';
      ref.read(listSelectOptionCurrentStringState).clear();
      ref.read(listSelectOptionStringState).clear();
      ref.read(listSelectOptionCurrentState).clear();
      ref.read(listSelectOptionState).clear();
    }
  }

  Future<void> changeStatusTask({required isDone}) async {
    final gamification = ref.read(gamificationState.notifier).state;
    final isarInstance = await ref.watch(isarInstanceProvider.future);

    GamificationResponseRemote dataTask = GamificationResponseRemote();
    AnswerRequestRemote dataAnswer = AnswerRequestRemote();
    final repo = isarInstance.answerRequestRemotes
        .filter()
        .employeeMissionIdIsNotNull()
        .findAll();
    await checkExpiredBeforeSubmitAnswer().whenComplete(() async {
      if (isDone) {
        dataTask = gamification.copyWith(
            missionStatusCode: 2, missionStatus: 'Submitted');
        await AsyncValue.guard(() => repo).then((value) async {
          if ((value.value ?? []).isNotEmpty) {
            for (var element in (value.value ?? [])) {
              AnswerRequestRemote answerRequestRemote = element;
              if (answerRequestRemote.employeeMissionId ==
                  gamification.employeeMissionId) {
                dataAnswer = answerRequestRemote.copyWith(status: 2);
              }
            }
          }
        });
      } else {
        if ((gamification.missionStatusCode ?? 0) < 1) {
          dataTask = gamification.copyWith(
              missionStatusCode: 1, missionStatus: 'In Progress');
          await AsyncValue.guard(() => repo).then((value) async {
            if ((value.value ?? []).isNotEmpty) {
              for (var element in (value.value ?? [])) {
                AnswerRequestRemote answerRequestRemote = element;
                if (answerRequestRemote.employeeMissionId ==
                    gamification.employeeMissionId) {
                  dataAnswer = answerRequestRemote.copyWith(status: 1);
                }
              }
            }
          });
        } else {
          await AsyncValue.guard(() => repo).then((value) async {
            if ((value.value ?? []).isNotEmpty) {
              for (var element in (value.value ?? [])) {
                AnswerRequestRemote answerRequestRemote = element;
                if (answerRequestRemote.employeeMissionId ==
                    gamification.employeeMissionId) {
                  dataAnswer = answerRequestRemote.copyWith(
                      status: gamification.missionStatusCode);
                }
              }
            }
          });
          dataTask = gamification;
        }
      }
    });
    ref.watch(submitStatusMissionBgServicesState.notifier).state =
        SubmitStatus.success;
    await ref
        .watch(changeStatusTaskLocalProvider(task: dataTask, answer: dataAnswer)
            .future)
        .whenComplete(() async {
      await deleteAnswer(listTaskAnswer);
    });
  }

  Future<void> putTaskAnswer(TaskDatumAnswerRequestRemote value) async {
    await ref.watch(putTaskAnswerLocalProvider(taskAnswer: value).future);
  }

  Future<void> deleteAnswer(
      List<TaskDatumAnswerRequestRemote> listTaskAnswer) async {
    await ref.watch(
        deleteAnswerLocalProvider(listTaskAnswer: listTaskAnswer).future);
  }

  Future<void> currentQuestion(
      {required int employeeMissionId,
      required PagePosition pagePosition,
      bool isLast = false}) async {
    List<String> listString = [];
    List<int> listInt = [];
    List<int> numbersList = [];
    List<TaskDatumAnswer> listTaskAnswer = [];
    var answer = '';
    index = await ref.watch(currentIndexState);
    int page = 0;
    if (pagePosition == PagePosition.NEXT) {
      page = 1;
    } else if (pagePosition == PagePosition.PREV) {
      page = -1;
    }
    final isarInstance = await ref.watch(isarInstanceProvider.future);

    var currentAnswer = isarInstance.answerRequestRemotes
        .filter()
        .employeeMissionIdEqualTo(employeeMissionId)
        .findAll();

    List<TaskDatumAnswerRequestRemote> dataCek = [];

    state = await AsyncValue.guard(() => currentAnswer).then((value) async {
      List<AnswerRequestRemote> list = value.value ?? [];
      if (list != []) {
        listTaskAnswer = list.first.taskData ?? [];
      }
      return value;
    });

    if (listTaskAnswer.isNotEmpty) {
      for (var element in listTaskAnswer) {
        dataCek.add(TaskDatumAnswerRequestRemote(
            taskId: element.taskId,
            answer: element.answer,
            attachmentName: element.attachmentName,
            attachment: element.attachment,
            taskGroup: element.taskGroup));
      }
    }

    currentTypeTask = !isLast
        ? ref.watch(listTaskState)[index + page].taskTypeCode ?? ''
        : '';
    currentTaskId =
        !isLast ? ref.watch(listTaskState)[index + page].taskId ?? 0 : 0;
    for (var element in dataCek) {
      await putTaskAnswer(element);
      if (element.taskId == currentTaskId) {
        answer = element.answer ?? '';
        attachment = element.attachment ?? '';
        attachmentName = element.attachmentName ?? '';
        taskGroup = element.taskGroup ?? '';
      }
    }

    if (answer != '') {
      if (currentTypeTask == TaskType.STX.name ||
          currentTypeTask == TaskType.ASM.name) {
        listString.add(answer);
        listSelectOptionCurrentString = listString;
        ref.watch(currentTypeTaskState.notifier).state = currentTypeTask;
        ref.watch(listSelectOptionCurrentStringState.notifier).state =
            listSelectOptionCurrentString;

        ref.watch(attachmentPathCurrentState.notifier).state = attachment;
        ref.watch(attachmentNameCurrentState.notifier).state = attachmentName;
      } else {
        if (currentTypeTask == TaskType.MCQ.name) {
          numbersList = answer.split(';').map(int.parse).toList();
          listInt.addAll(numbersList);
        } else {
          listInt.add(int.parse(answer != '' ? answer : '0'));
        }

        listSelectOptionCurrent = listInt;
        ref.watch(currentTypeTaskState.notifier).state = currentTypeTask;
        ref.watch(listSelectOptionCurrentState.notifier).state =
            listSelectOptionCurrent;
      }
      answer = '';
    } else {
      if (currentTypeTask == TaskType.STX.name ||
          currentTypeTask == TaskType.ASM.name) {
        listString.clear();
        listSelectOptionCurrentString = listString;
        ref.watch(currentTypeTaskState.notifier).state = currentTypeTask;
        ref.watch(listSelectOptionCurrentStringState.notifier).state =
            listSelectOptionCurrentString;

        ref.watch(attachmentPathCurrentState.notifier).state = attachment;
        ref.watch(attachmentNameCurrentState.notifier).state = attachmentName;
      } else {
        listInt.clear();

        listSelectOptionCurrent = listInt;
        ref.watch(currentTypeTaskState.notifier).state = currentTypeTask;
        ref.watch(listSelectOptionCurrentState.notifier).state =
            listSelectOptionCurrent;
      }
      answer = '';
    }
  }

  Future<void> saveAnswer(int taskId,
      {required List<dynamic>? listSelectedOption,
      String? attachment,
      String? attachmentName,
      String? taskGroup,
      required bool isLast,
      required String type}) async {
    TaskDatumAnswerRequestRemote dataAnswer = TaskDatumAnswerRequestRemote();
    String data = '';
    //var dataCek = ref.watch(answerState.notifier).state;

    if (listSelectedOption != null) {
      for (int i = 0; i < listSelectedOption.length; i++) {
        String code = listSelectedOption[i] is String
            ? listSelectedOption[i]
            : listSelectedOption[i].toString();
        data += code;
        if (listSelectedOption.length > 1) {
          if (i < listSelectedOption.length - 1) {
            data += ';';
          }
        }
      }
      dataAnswer = TaskDatumAnswerRequestRemote(
          taskId: taskId,
          answer: data,
          attachment: attachment ?? '',
          attachmentName: attachmentName ?? '',
          taskGroup: taskGroup ?? '');

      await putTaskAnswer(dataAnswer);
      if (isLast) {}
    } else {
      dataAnswer = TaskDatumAnswerRequestRemote(
          taskId: taskId,
          answer: data,
          attachment: attachment ?? '',
          attachmentName: attachmentName ?? '',
          taskGroup: taskGroup ?? '');

      await putTaskAnswer(dataAnswer);
    }
  }

  Future<List<AnswerRequestRemote>> checkExpiredBeforeSubmitAnswer() async {
    ref.watch(submitStatusMissionBgServicesState.notifier).state =
        SubmitStatus.inProgress;
    try {
      final isConnectionAvailable = ref.read(isConnectionAvailableProvider);
      final backgroundServices = FlutterBackgroundService();
      final isBgServiceRunning = await backgroundServices.isRunning();
      if (!isBgServiceRunning) {
        await backgroundServices.startService();
      }
      final userModel = await ref.read(helperUserProvider).getUserProfile();
      //final latestSyncDate = ref.read(latestSyncDateState.notifier).state;
      var taskAnswer = AnswerRequestRemote();
      final today =
          CommonUtils.formatDateRequestParam(DateTime.now().toUtc().toString());
      final isarInstance = await ref.watch(isarInstanceProvider.future);
      final repo = isarInstance.gamificationResponseRemotes
          .filter()
          .employeeMissionIdIsNotNull()
          .findAll();
      var repoAnswer = isarInstance.taskDatumAnswerRequestRemotes
          .filter()
          .taskIdIsNotNull()
          .findAll();
      await AsyncValue.guard(() => repo).then((data) async {
        for (var element in data.value ?? []) {
          GamificationResponseRemote dataGamification = element;
          List<TaskDatumAnswer> listData = [];
          DateTime dueDate = DateTime.parse(
              CommonUtils.formattedDateHoursUtcToLocalForCheck(
                  dataGamification.dueDate ?? '2024-00-00T00:00:00'));
          int different = calculateDifferenceDate(dueDate, DateTime.now());

          if (different > 0 && dataGamification.missionStatusCode! < 2) {
            var taskData = (dataGamification
                .chapterData?.first.missionData?.first.taskData);
            for (var elementTaskData in taskData ?? []) {
              TaskDatum taskDatum = elementTaskData;
              await AsyncValue.guard(() => repoAnswer).then((dataAnswer) async {
                if ((dataAnswer.value ?? []).isNotEmpty) {
                  for (var element in dataAnswer.value ?? []) {
                    TaskDatumAnswerRequestRemote taskDatumAnswerRequestRemote =
                        element;
                    if (taskDatum.taskId ==
                        taskDatumAnswerRequestRemote.taskId) {
                      listData.add(TaskDatumAnswer(
                          taskId: taskDatumAnswerRequestRemote.taskId,
                          answer: taskDatumAnswerRequestRemote.answer,
                          attachmentName:
                              taskDatumAnswerRequestRemote.attachmentName,
                          attachment: taskDatumAnswerRequestRemote.attachment,
                          taskGroup: taskDatumAnswerRequestRemote.answer));
                    } else {
                      listData.add(TaskDatumAnswer(
                          taskId: taskDatum.taskId,
                          answer: '',
                          attachmentName: '',
                          attachment: '',
                          taskGroup: ''));
                    }
                  }
                } else {
                  listData.add(TaskDatumAnswer(
                      taskId: taskDatum.taskId,
                      answer: '',
                      attachmentName: '',
                      attachment: '',
                      taskGroup: ''));
                }
              });
              var data = await sortDataListTask(listData);
              taskAnswer = AnswerRequestRemote(
                  employeeMissionId: dataGamification.employeeMissionId,
                  employeeName: userModel?.employeeName,
                  submittedDate: today.substring(0, today.length - 6),
                  status: 4,
                  taskData: data);
              dataGamification.copyWith(missionStatusCode: 4);
              await isarInstance.writeTxn(() async {
                await isarInstance.gamificationResponseRemotes
                    .put(dataGamification);
              });
              await ref.watch(
                  putAnswerFinalLocalProvider(answerRequestRemote: taskAnswer)
                      .future);
            }
          }
        }

        ref.read(submitStatusMissionState.notifier).state =
            SubmitStatus.success;
      });

      final data = await isarInstance.answerRequestRemotes
          .filter()
          .employeeMissionIdIsNotNull()
          .findAll();

      return data;
    } catch (e) {
      ref.watch(submitStatusMissionBgServicesState.notifier).state =
          SubmitStatus.failure;
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  Future<List<TaskDatumAnswer>> sortDataListTask(
      List<TaskDatumAnswer>? list) async {
    List<TaskDatumAnswer> listData = [];

    for (var elementExisting in list ?? []) {
      if (listData.isNotEmpty) {
        bool exists =
            (listData).any((item) => item.taskId == elementExisting.taskId);

        if (!exists) {
          listData.add(elementExisting);
        }
      } else {
        listData.add(elementExisting);
      }
    }

    return listData;
  }
}
