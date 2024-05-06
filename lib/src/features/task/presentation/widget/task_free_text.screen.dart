import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/configs/theme/color.theme.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/reward_dialog.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_shared/module_shared.dart';

import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../mission/presentation/controller/mission.controller.dart';
import '../../../mission_past/presentation/controller/mission_past.controller.dart';
import '../controller/task.controller.dart';

class TaskFreeTextScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;

  const TaskFreeTextScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskFreeTextScreenState();
}

class _TaskFreeTextScreenState extends ConsumerState<TaskFreeTextScreen> {
  TextEditingController _textController = TextEditingController();

  var groupValue = 0;
  bool isInit = true;

  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrl = ref.watch(taskControllerProvider.notifier);
        final currentQuestionIndex = ref.watch(currentIndexState.notifier);
        final ctrlMainNav = ref.read(mainNavControllerProvider.notifier);
        final ctrlMission = ref.read(missionControllerProvider.notifier);
        final listSelectedOptionString = ref.read(listSelectOptionStringState);
        final currentQuestionProgress = ref.watch(currentProgressState);
        final lengthAnswer = ref.watch(listTaskState).length;
        final listTask = ref.watch(listTaskState);
        final gamificationData = ref.watch(gamificationState);
        final resultSubmit = ref.watch(resultSubmissionState);
        final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
        // _textController =
        if (ref.watch(currentTypeTaskState.notifier).state ==
            TaskType.STX.name) {
          if (isInit) {
            if (ref
                .watch(listSelectOptionStringState.notifier)
                .state
                .isNotEmpty) {
              _textController.text =
                  ref.watch(listSelectOptionStringState.notifier).state.single;
            }
          }
          isInit = false;
        }
        return Scaffold(
            backgroundColor: ColorTheme.backgroundLight,
            body: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      "${EtamKawaTranslate.task} ${currentQuestionIndex.state + 1}/${listTask.length}",
                                      style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.largeH5,
                                          fontColor: ColorTheme.textDark)),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 0, 8, 0),
                                          margin: EdgeInsets.only(right: 4.sp),
                                          decoration: BoxDecoration(
                                              color: ColorTheme.secondary100,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5.r))),
                                          child: Center(
                                              child: Container(
                                            height: 24.h,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      ColorTheme.secondary500,
                                                  size: 12.h,
                                                ),
                                                Text(
                                                  " +${listTask[currentQuestionIndex.state].taskReward}",
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .body,
                                                          fontColor: ColorTheme
                                                              .secondary500),
                                                ),
                                              ],
                                            ),
                                          )),
                                        ),
                                        Icon(
                                          Icons.info,
                                          color: ColorTheme.primary500,
                                          size: 24.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              listTask[currentQuestionIndex.state].attachmentPath != null
                                  ? Container(
                                      height: 200,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: FileImage(File(listTask[
                                                        currentQuestionIndex
                                                            .state]
                                                    .attachmentPath ??
                                                '')),
                                            fit: BoxFit.cover,
                                          ),
                                          color: ColorTheme.backgroundWhite,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                    )
                                  : Container(),
                              const SizedBox(height: 10.0),
                              Text(
                                listTask[currentQuestionIndex.state]
                                        .taskCaption ??
                                    '',
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.medium,
                                    fontColor: ColorTheme.textDark),
                              ),
                              const Divider(),
                              const SizedBox(height: 20.0),
                              SizedBox(
                                height: 150.0,
                                child: TextFormField(
                                  readOnly:
                                      (gamificationData.missionStatusCode ??
                                              0) >
                                          1,
                                  controller: _textController,
                                  maxLength: 300,
                                  textInputAction: TextInputAction.done,
                                  decoration: InputDecoration(
                                    hintText: EtamKawaTranslate.writeYourAnswer,
                                    hintStyle: SharedComponent.textStyleCustom(
                                        typographyType: TypographyType.body,
                                        fontColor: ColorTheme.textLightDark),
                                    border: const OutlineInputBorder(),
                                  ),
                                  maxLines: 10,
                                  onEditingComplete: () async {
                                    await ctrl
                                        .saveAnswer(
                                            listTask[currentQuestionIndex.state]
                                                    .taskId ??
                                                0,
                                            isLast: false,
                                            listSelectedOption:
                                                [_textController.text],
                                            type: listTask[currentQuestionIndex
                                                        .state]
                                                    .taskTypeCode ??
                                                '')
                                        .whenComplete(() async {
                                      await ctrl.putAnswerFinal();
                                    }).whenComplete(() {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    });
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      if (value.isEmpty) {
                                        ref
                                            .watch(listSelectOptionStringState
                                                .notifier)
                                            .state = [];

                                        _textController.clear();
                                      } else {
                                        ref
                                            .watch(listSelectOptionStringState
                                                .notifier)
                                            .state = [value];
                                      }
                                    });
                                  }, // Allows multiple lines of input
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorTheme.backgroundWhite,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0))),
                      padding: const EdgeInsets.all(16.0),
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              0 < currentQuestionIndex.state &&
                                      lengthAnswer != 1
                                  ? Expanded(
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.black),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                        ),
                                        onPressed: () async {
                                          await ctrl
                                              .currentQuestion(
                                                  employeeMissionId:
                                                      gamificationData
                                                              .employeeMissionId ??
                                                          0,
                                                  pagePosition:
                                                      PagePosition.PREV)
                                              .whenComplete(() {
                                            currentQuestionIndex.state--;
                                            ref
                                                .watch(currentProgressState
                                                    .notifier)
                                                .state--;
                                            if (ref
                                                        .watch(
                                                            currentTypeTaskState
                                                                .notifier)
                                                        .state ==
                                                    TaskType.STX.name ||
                                                ref
                                                        .watch(
                                                            currentTypeTaskState
                                                                .notifier)
                                                        .state ==
                                                    TaskType.ASM.name) {
                                              ref
                                                      .watch(
                                                          listSelectOptionStringState
                                                              .notifier)
                                                      .state =
                                                  ref
                                                      .watch(
                                                          listSelectOptionCurrentStringState
                                                              .notifier)
                                                      .state;
                                              ref
                                                      .watch(attachmentNameState
                                                          .notifier)
                                                      .state =
                                                  ref
                                                      .watch(
                                                          attachmentNameCurrentState
                                                              .notifier)
                                                      .state;
                                              ref
                                                      .watch(attachmentPathState
                                                          .notifier)
                                                      .state =
                                                  ref
                                                      .watch(
                                                          attachmentPathCurrentState
                                                              .notifier)
                                                      .state;
                                            } else {
                                              ref
                                                      .watch(
                                                          listSelectOptionState
                                                              .notifier)
                                                      .state =
                                                  ref
                                                      .watch(
                                                          listSelectOptionCurrentState
                                                              .notifier)
                                                      .state;
                                            }
                                          });
                                        },
                                        child: Text(
                                          EtamKawaTranslate.previous,
                                        ),
                                      ),
                                    )
                                  : Container(),
                              SizedBox(width: 8),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    if (listSelectedOptionString.isNotEmpty) {
                                      if ((currentQuestionIndex.state + 1) <
                                              lengthAnswer &&
                                          lengthAnswer != 1) {
                                        await ctrl
                                            .currentQuestion(
                                                employeeMissionId:
                                                    gamificationData
                                                            .employeeMissionId ??
                                                        0,
                                                pagePosition: PagePosition.NEXT)
                                            .whenComplete(() async {
                                          await ctrl
                                              .saveAnswer(
                                                  listTask[currentQuestionIndex
                                                              .state]
                                                          .taskId ??
                                                      0,
                                                  isLast: false,
                                                  listSelectedOption:
                                                      listSelectedOptionString,
                                                  type: listTask[
                                                              currentQuestionIndex
                                                                  .state]
                                                          .taskTypeCode ??
                                                      '')
                                              .whenComplete(() async {
                                            await ctrl
                                                .putAnswerFinal()
                                                .whenComplete(() async {
                                              currentQuestionIndex.state++;
                                              ref
                                                  .watch(currentProgressState
                                                      .notifier)
                                                  .state++;

                                              if (ref
                                                          .watch(
                                                              currentTypeTaskState
                                                                  .notifier)
                                                          .state ==
                                                      TaskType.STX.name ||
                                                  ref
                                                          .watch(
                                                              currentTypeTaskState
                                                                  .notifier)
                                                          .state ==
                                                      TaskType.ASM.name) {
                                                ref
                                                    .watch(
                                                    listSelectOptionStringState
                                                        .notifier)
                                                    .state.clear();
                                                ref
                                                        .watch(
                                                            listSelectOptionStringState
                                                                .notifier)
                                                        .state =
                                                    ref
                                                        .watch(
                                                            listSelectOptionCurrentStringState
                                                                .notifier)
                                                        .state;
                                                ref
                                                        .watch(
                                                            attachmentNameState
                                                                .notifier)
                                                        .state =
                                                    ref
                                                        .watch(
                                                            attachmentNameCurrentState
                                                                .notifier)
                                                        .state;
                                                ref
                                                        .watch(
                                                            attachmentPathState
                                                                .notifier)
                                                        .state =
                                                    ref
                                                        .watch(
                                                            attachmentPathCurrentState
                                                                .notifier)
                                                        .state;
                                              } else {
                                                ref
                                                        .watch(
                                                            listSelectOptionState
                                                                .notifier)
                                                        .state =
                                                    ref
                                                        .watch(
                                                            listSelectOptionCurrentState
                                                                .notifier)
                                                        .state;
                                              }
                                              setState(() {
                                                _textController.clear();
                                                isInit = true;
                                              });
                                            });
                                          });
                                        });
                                      } else {
                                        await ctrl
                                            .saveAnswer(
                                                listTask[currentQuestionIndex
                                                            .state]
                                                        .taskId ??
                                                    0,
                                                isLast: true,
                                                listSelectedOption:
                                                    listSelectedOptionString,
                                                type: listTask[
                                                            currentQuestionIndex
                                                                .state]
                                                        .taskTypeCode ??
                                                    '')
                                            .whenComplete(() async {
                                          if (((currentQuestionProgress) *
                                                      100) ~/
                                                  listTask.length <
                                              100) {
                                            ref
                                                .watch(currentProgressState
                                                    .notifier)
                                                .state++;
                                          }
                                          await ctrl
                                              .putAnswerFinal()
                                              .whenComplete(() async {
                                            showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (context) {
                                                return CustomDialog(
                                                    title: EtamKawaTranslate.confirmation,
                                                    content:
                                                        EtamKawaTranslate.areYouSureSubmitAnswer,
                                                    label: EtamKawaTranslate.submit,
                                                    type: DialogType.mission,
                                                    resultSubmissionState:
                                                        resultSubmit,
                                                    isConnectionAvailable:
                                                        isConnectionAvailable,
                                                    onClosed: () async => {
                                                          await ctrl
                                                              .putAnswerFinal(
                                                                  isSubmitted:
                                                                      true)
                                                              .whenComplete(
                                                                  () async {
                                                            await ctrl
                                                                .changeStatusTask()
                                                                .whenComplete(
                                                                    () async {
                                                              await ctrlMission
                                                                  .getMissionList()
                                                                  .whenComplete(
                                                                      () async {
                                                                _textController
                                                                    .clear();
                                                                isInit = true;
                                                              });
                                                            });
                                                          })
                                                        });
                                              },
                                            );
                                          });
                                        });
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                'Please write your answer')),
                                      );
                                    }
                                  },
                                  child: Text(
                                    (currentQuestionIndex.state + 1) <
                                            listTask.length
                                        ? EtamKawaTranslate.next
                                        : EtamKawaTranslate.finish,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
