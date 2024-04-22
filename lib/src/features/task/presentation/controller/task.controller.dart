import 'package:flutter/foundation.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/task_datum_answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/infrastructure/task_local.repository.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../shared_component/connection_listener_widget.dart';
import '../../../../utils/common_utils.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../mission/presentation/controller/mission.controller.dart';

part 'task.controller.g.dart';

enum TaskType { MCQ, SCQ, YNQ, STX, RAT, ASM, DEFAULT }

enum PagePosition { NEXT, PREV, CURRENT }

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
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

@riverpod
class TaskController extends _$TaskController {
  List<GamificationResponseRemote> listGamification = [];
  List<int> listSelectOptionPrev = [];
  List<TaskDatumAnswerRequestRemote> listTaskAnswer = [];
  var index = 0;
  var answer = '';
  var currentTypeTask = '';
  var currentTaskId = 0;
  var attachment = '';
  var attachmentName = '';
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

  Future<void> putAnswerFinal({bool isSubmitted = false}) async {
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final today =
        CommonUtils.formatDateRequestParam(DateTime.now().toUtc().toString());
    List<TaskDatumAnswer> listData = [];
    var repo = ref.watch(getAnswerLocalProvider.future);
    final gamification = ref.watch(gamificationState.notifier).state;
    await AsyncValue.guard(() => repo).then((dataAnswer) async {
      for (var element in dataAnswer.value ?? []) {
        listData.add(TaskDatumAnswer(
            taskId: element.taskId,
            answer: element.answer,
            attachmentName: element.attachmentName,
            attachment: element.attachment));
      }

      var taskAnswer = AnswerRequestRemote(
          employeeMissionId: gamification.employeeMissionId,
          submittedDate: today,
          status: gamification.missionStatusCode,
          taskData: listData);
      final isConnectionAvailable = ref.read(isConnectionAvailableProvider);
      if (isConnectionAvailable) {
        if (isSubmitted) {
          await ref.watch(
              submitMissionProvider(answerRequestRemote: taskAnswer).future);
        } else {
          await ref.watch(
              putAnswerFinalLocalProvider(answerRequestRemote: taskAnswer)
                  .future);
        }
      } else {
        await ref.watch(
            putAnswerFinalLocalProvider(answerRequestRemote: taskAnswer)
                .future);
      }
    });
  }

  Future<void> changeStatusTask({isDone = true}) async {
    final gamification = ref.read(gamificationState.notifier).state;

    GamificationResponseRemote data = GamificationResponseRemote();

    if (isDone) {
      data = gamification.copyWith(
          missionStatusCode: 2, missionStatus: 'Submitted');
    } else {
      if ((gamification.missionStatusCode ?? 0) < 1) {
        data = gamification.copyWith(
            missionStatusCode: 1, missionStatus: 'In Progress');
      }
    }
    await ref
        .watch(changeStatusTaskLocalProvider(task: data).future)
        .whenComplete(() async {
      await deleteAnswer(listTaskAnswer);
    });
  }

  Future<void> putTaskAnswer(TaskDatumAnswerRequestRemote value) async {
    await ref
        .watch(putTaskAnswerLocalProvider(taskAnswer: value).future)
        .whenComplete(() {
      ref.watch(answerState.notifier).state.add(TaskDatumAnswer(
          taskId: value.taskId,
          answer: value.answer,
          attachmentName: value.attachmentName,
          attachment: value.attachment));
    });
  }

  Future<void> deleteAnswer(
      List<TaskDatumAnswerRequestRemote> listTaskAnswer) async {
    await ref
        .watch(deleteAnswerLocalProvider(listTaskAnswer: listTaskAnswer).future)
        .whenComplete(() {
      listTaskAnswer.clear();
      ref.watch(answerState.notifier).state.clear();
    });
  }

  Future<void> currentQuestion(
      {required int employeeMissionId,
      required PagePosition pagePosition,
      bool isLast = false}) async {
    List<String> listString = [];
    List<int> listInt = [];
    List<int> numbersList = [];
    List<TaskDatumAnswer> listTaskAnswer = [];
    int page = 0;
    if (pagePosition == PagePosition.NEXT) {
      page = 1;
    } else if (pagePosition == PagePosition.PREV) {
      page = -1;
    }
    var currentAnswer = ref.read(
        getAnswerFinalLocalProvider(employeeMissionId: employeeMissionId)
            .future);
    List<TaskDatumAnswerRequestRemote> dataCek = [];

    state = await AsyncValue.guard(() => currentAnswer).then((value) async {
      if (value.value != null && value.value != []) {
        listTaskAnswer = value.value ?? [];
      }

      if (listTaskAnswer.isNotEmpty) {
        for (var element in listTaskAnswer) {
          dataCek.add(TaskDatumAnswerRequestRemote(
              taskId: element.taskId,
              answer: element.answer,
              attachmentName: element.attachmentName,
              attachment: element.attachment));
        }
      }
      index = await ref.watch(currentIndexState);
      currentTypeTask = !isLast
          ? ref.watch(listTaskState)[index + page].taskTypeCode ?? ''
          : '';
      currentTaskId =
          !isLast ? ref.watch(listTaskState)[index + page].taskId ?? 0 : 0;
      for (var element in dataCek) {
        await putTaskAnswer(element);
        if (element.taskId == currentTaskId) {
          // await deleteAnswer(dataCek);
          answer = element.answer ?? '';
          attachment = element.attachment ?? '';
          attachmentName = element.attachmentName ?? '';
        }
      }

      if (answer != '') {
        if (currentTypeTask == TaskType.STX.name ||
            currentTypeTask == TaskType.ASM.name) {
          listString.add(answer);
          listSelectOptionCurrentString = listString;
          ref.watch(currentTypeTaskState.notifier).state = currentTypeTask;
          ref.watch(listSelectOptionCurrentStringState.notifier).state =
              listString;

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
      }
      return value;
    });
  }

  Future<void> saveAnswer(int questionId,
      {required List<dynamic>? listSelectedOption,
      String? attachment,
      String? attachmentName,
      required bool isLast,
      required String type}) async {
    TaskDatumAnswerRequestRemote dataAnswer = TaskDatumAnswerRequestRemote();
    String data = '';
    var dataCek = ref.watch(answerState.notifier).state;

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
          taskId: questionId,
          answer: data,
          attachment: attachment ?? '',
          attachmentName: attachmentName ?? '');

      await putTaskAnswer(dataAnswer);
      if (isLast) {}
    }
  }

  Future<void> upsertItem(TaskDatumAnswer newItem) async {
    var dataCek = ref.watch(answerState.notifier).state;
    int existingIndex =
        dataCek.indexWhere((item) => item.taskId == newItem.taskId);

    if (existingIndex != -1) {
      // If the item exists, update its properties
      dataCek[existingIndex] = newItem;
    } else {
      // If the item does not exist, add it to the list
      dataCek.add(newItem);
    }
  }

  Future<void> sendAnswerBackgroundService() async {
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
      final latestSyncDate = ref.read(latestSyncDateState.notifier).state;

      backgroundServices.invoke(Constant.bgMissionInit, {
        'employeeId': userModel?.employeeID,
        'requestDate': latestSyncDate,
        'url': dotenv.env[EnvConstant.rootUrl],
        'path':
            '/${BspaceModule.getRootUrl(moduleType: ModuleType.etamkawaGamification)}/api/mission/submit_employee_mission?userAccount=${userModel?.email ?? ''}&${Constant.apiVer}',
        'accessToken': await ref.read(storageProvider.notifier).read(
              storage: TableConstant.tbMProfile,
              key: ProfileKeyConstant.keyTokenGeneral,
            )
      });

      if (isConnectionAvailable) {
        ref.read(submitStatusMissionState.notifier).state =
            SubmitStatus.success;
      } else {
        ref.watch(submitStatusMissionBgServicesState.notifier).state =
            SubmitStatus.failure;
      }
    } catch (e) {
      ref.watch(submitStatusMissionBgServicesState.notifier).state =
          SubmitStatus.failure;
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
