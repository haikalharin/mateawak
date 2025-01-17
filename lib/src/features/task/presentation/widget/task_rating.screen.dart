import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/reward_dialog.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../module_etamkawa.dart';
import '../../../../shared_component/instruction_dialog.dart';
import '../../../../shared_component/shared_component_etamkawa.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../mission/presentation/controller/mission.controller.dart';
import '../controller/task.controller.dart';

class TaskRatingScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;

  const TaskRatingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskRatingScreenState();
}

class _TaskRatingScreenState extends ConsumerState<TaskRatingScreen> {
  var groupValue = 0;

  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrl = ref.watch(taskControllerProvider.notifier);
        // final ctrlMainNav = ref.read(mainNavControllerProvider.notifier);
        final ctrlMission = ref.read(missionControllerProvider.notifier);
        final currentQuestionIndex = ref.watch(currentIndexState.notifier);
        final listSelectedOption = ref.watch(listSelectOptionState.notifier);
        final currentQuestionProgress = ref.watch(currentProgressState);
        final lengthAnswer = ref.watch(listTaskState).length;
        final listTask = ref.watch(listTaskState);
        final gamificationData = ref.watch(gamificationState);
        final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
        final submitStatusTask = ref.watch(submitStatusTaskState.notifier);
        return Scaffold(
            backgroundColor: ColorTheme.backgroundLight,
            body: ListView(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "${EtamKawaTranslate.task} ${currentQuestionIndex.state + 1}/${listTask.length}",
                                    style: SharedComponent.textStyleCustom(
                                        typographyType: TypographyType.largeH5,
                                        fontColor: ColorTheme.textDark)),
                                Row(
                                  children: [
                                    Container(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                      margin: EdgeInsets.only(right: 4.sp),
                                      decoration: BoxDecoration(
                                          color: ColorTheme.secondary100,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.r))),
                                      child: Center(
                                          child: SizedBox(
                                        height: 24.h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: ColorTheme.secondary500,
                                              size: 12.h,
                                            ),
                                            Text(
                                                " +${listTask[currentQuestionIndex.state].taskReward}",
                                                style: SharedComponent
                                                    .textStyleCustom(
                                                        typographyType:
                                                            TypographyType.body,
                                                        fontColor: ColorTheme
                                                            .secondary500)),
                                          ],
                                        ),
                                      )),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (context) {
                                            return InstructionDialog(
                                                title: EtamKawaTranslate
                                                    .instructions,
                                                content: gamificationData
                                                        .chapterData
                                                        ?.first
                                                        .missionData
                                                        ?.first
                                                        .missionInstruction ??
                                                    '',
                                                labelButton: 'Ok');
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.info,
                                        color: ColorTheme.primary500,
                                        size: 24.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            listTask[currentQuestionIndex.state]
                                            .attachmentPath !=
                                        null &&
                                    listTask[currentQuestionIndex.state]
                                            .attachmentPath !=
                                        ''
                                ? InkWell(
                                    onTap: () {
                                      SharedComponentEtamkawa.showImage(
                                          context: context,
                                          path: listTask[currentQuestionIndex
                                                      .state]
                                                  .attachmentPath ??
                                              '');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 8, 0, 16),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        child: Image(
                                          image: FileImage(File(listTask[
                                                      currentQuestionIndex
                                                          .state]
                                                  .attachmentPath ??
                                              '')),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
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
                            Center(
                              child: RatingBar.builder(
                                initialRating: listSelectedOption
                                        .state.isNotEmpty
                                    ? listSelectedOption.state.first.toDouble()
                                    : 0.0,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) async {
                                  if ((gamificationData.missionStatusCode ??
                                          0) <=
                                      1) {
                                    await ctrl
                                        .saveAnswer(
                                            listTask[currentQuestionIndex.state]
                                                    .taskId ??
                                                0,
                                            isLast: false,
                                            listSelectedOption: [
                                              rating.toInt()
                                            ],
                                            type: listTask[currentQuestionIndex
                                                        .state]
                                                    .taskTypeCode ??
                                                '')
                                        .whenComplete(() async {
                                      await ctrl
                                          .putAnswerFinal()
                                          .whenComplete(() {
                                        if (rating != 0) {
                                          if (listSelectedOption
                                              .state.isNotEmpty) {
                                            ref
                                                .watch(listSelectOptionState
                                                    .notifier)
                                                .state
                                                .clear();
                                          }
                                          ref
                                              .watch(listSelectOptionState
                                                  .notifier)
                                              .state = [rating.toInt()];
                                        }
                                      });
                                    });
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
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
                          0 < currentQuestionIndex.state && lengthAnswer != 1
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
                                    onPressed: () {
                                      if (submitStatusTask.state !=
                                          SubmitStatus.inProgress) {
                                        submitStatusTask.state =
                                            SubmitStatus.inProgress;
                                        setState(() {
                                          ref.refresh(taskControllerProvider);
                                          ctrl
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
                                              submitStatusTask.state =
                                                  SubmitStatus.success;
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
                                              submitStatusTask.state =
                                                  SubmitStatus.success;
                                            }
                                          });
                                        });
                                      }
                                    },
                                    child: Text(
                                      EtamKawaTranslate.previous,
                                    ),
                                  ),
                                )
                              : Container(),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                if (submitStatusTask.state !=
                                    SubmitStatus.inProgress) {
                                  submitStatusTask.state =
                                      SubmitStatus.inProgress;
                                  setState(() {
                                    ref.refresh(taskControllerProvider);
                                    if (listSelectedOption.state.isNotEmpty) {
                                      if ((currentQuestionIndex.state + 1) <
                                              lengthAnswer &&
                                          lengthAnswer != 1) {
                                        ctrl
                                            .saveAnswer(
                                                listTask[currentQuestionIndex
                                                            .state]
                                                        .taskId ??
                                                    0,
                                                isLast: false,
                                                listSelectedOption:
                                                    listSelectedOption.state,
                                                type: listTask[
                                                            currentQuestionIndex
                                                                .state]
                                                        .taskTypeCode ??
                                                    '')
                                            .whenComplete(() async {
                                          await ctrl
                                              .putAnswerFinal()
                                              .whenComplete(() async {
                                            await ctrl
                                                .currentQuestion(
                                                    employeeMissionId:
                                                        gamificationData
                                                                .employeeMissionId ??
                                                            0,
                                                    pagePosition:
                                                        PagePosition.NEXT)
                                                .whenComplete(() async {
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
                                                ref.refresh(
                                                    taskControllerProvider);
                                                ref
                                                    .watch(
                                                        listSelectOptionStringState
                                                            .notifier)
                                                    .state
                                                    .clear();
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
                                                submitStatusTask.state =
                                                    SubmitStatus.success;
                                              } else {
                                                ref
                                                    .watch(listSelectOptionState
                                                        .notifier)
                                                    .state
                                                    .clear();
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
                                                submitStatusTask.state =
                                                    SubmitStatus.success;
                                              }
                                              currentQuestionIndex.state++;
                                              ref
                                                  .watch(currentProgressState
                                                      .notifier)
                                                  .state++;
                                              setState(() {});
                                            });
                                          });
                                        });
                                      } else {
                                        ctrl
                                            .saveAnswer(
                                                listTask[currentQuestionIndex
                                                            .state]
                                                        .taskId ??
                                                    0,
                                                isLast: true,
                                                listSelectedOption:
                                                    listSelectedOption.state,
                                                type: listTask[
                                                            currentQuestionIndex
                                                                .state]
                                                        .taskTypeCode ??
                                                    '')
                                            .whenComplete(() async {
                                          if (((currentQuestionProgress + 1) *
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
                                            submitStatusTask.state =
                                                SubmitStatus.success;
                                            showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (context) {
                                                return CustomDialog(
                                                    title: EtamKawaTranslate
                                                        .confirmation,
                                                    content: EtamKawaTranslate
                                                        .areYouSureSubmitAnswer,
                                                    label: EtamKawaTranslate
                                                        .submit,
                                                    type: DialogType.mission,
                                                    isConnectionAvailable:
                                                        isConnectionAvailable,
                                                    onClosed: () async {
                                                      showLoadingDialog(
                                                          context);
                                                      var status =
                                                          ctrl.putAnswerFinal(
                                                              isSubmitted:
                                                                  true);

                                                      await AsyncValue.guard(
                                                              () => status)
                                                          .then((value) async {
                                                        await ctrlMission
                                                            .getMissionList()
                                                            .whenComplete(() {
                                                          if (value.value ==
                                                              true) {
                                                            hideLoadingDialog(
                                                                context);
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            showDialog(
                                                                barrierDismissible:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return RewardDialog(
                                                                    resultSubmissionState: ref
                                                                        .watch(resultSubmissionState
                                                                            .notifier)
                                                                        .state,
                                                                    isConnectionAvailable:
                                                                        isConnectionAvailable,
                                                                  );
                                                                });
                                                          }
                                                        });
                                                      });
                                                    });
                                              },
                                            );
                                            ref.refresh(taskControllerProvider);
                                          });
                                        });
                                      }
                                    } else {
                                      submitStatusTask.state =
                                          SubmitStatus.success;
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                '${EtamKawaTranslate.pleaseSelectAnOption}!')),
                                      );
                                    }
                                  });
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
              ],
            ));
      },
    );
  }
}
