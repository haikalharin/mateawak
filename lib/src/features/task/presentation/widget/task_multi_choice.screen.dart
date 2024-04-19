import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../configs/theme/color.theme.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../mission/presentation/controller/mission.controller.dart';
import '../controller/task.controller.dart';

class TaskMultiChoiceScreen extends ConsumerStatefulWidget {
  const TaskMultiChoiceScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskMultiChoiceScreenState();
}

class _TaskMultiChoiceScreenState extends ConsumerState<TaskMultiChoiceScreen> {
  // int currentQuestionIndex = 0;
  List<int> listData = [];
  bool isInit =true;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrl = ref.watch(taskControllerProvider.notifier);
        final ctrlMainNav = ref.read(mainNavControllerProvider.notifier);
        final ctrlMission = ref.read(missionControllerProvider.notifier);
        final currentQuestionIndex = ref.watch(currentIndexState.notifier);
        final listSelectedOption = ref.watch(listSelectOptionState.notifier);
        final listTask = ref.watch(listTaskState);
        final currentQuestionProgress = ref.watch(currentProgressState);
        final gamificationData = ref.watch(gamificationState);
        final lengthAnswer = ref.watch(listTaskState).length;
        if(isInit) {
          isInit = false;
          listData.addAll(ref
              .watch(listSelectOptionState
              .notifier)
              .state);
        }
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
                                    "${currentQuestionIndex.state + 1}/${listTask.length}",
                                    style: SharedComponent.textStyleCustom(
                                        typographyType: TypographyType.largeH5,
                                        fontColor: ColorTheme.textDark)),
                                Container(
                                  width: 75.h,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
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
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: FileImage(File(
                                        listTask[currentQuestionIndex.state]
                                                .attachmentPath ??
                                            '')),
                                    fit: BoxFit.cover,
                                  ),
                                  color: ColorTheme.backgroundWhite,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                            ),
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
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: listTask[currentQuestionIndex.state]
                                  .answerData
                                  ?.length,
                              itemBuilder: (BuildContext context, int index) {
                                var listAnswer =
                                    listTask[currentQuestionIndex.state]
                                        .answerData;

                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: listSelectedOption.state.contains(
                                              listAnswer?[index].answerId)
                                          ? ColorTheme.primary500
                                          : ColorTheme
                                              .backgroundLight, // Border color based on selection
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Border radius
                                  ),
                                  child: CheckboxListTile(
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Text(
                                        listAnswer?[index].answerCaption ?? ''),
                                    value: ref
                                        .watch(listSelectOptionState.notifier)
                                        .state
                                        .contains(
                                            listAnswer?[index].answerId ?? 0),
                                    onChanged: (bool? value) {
                                      if ((gamificationData.missionStatusCode ??
                                              0) <=
                                          1) {
                                        setState(() {
                                          if (value != null && value) {
                                            listData.add(
                                                listAnswer?[index].answerId ??
                                                    0);
                                          } else {
                                            listData.remove(
                                                listAnswer?[index].answerId ??
                                                    0);
                                          }
                                          ref
                                              .watch(listSelectOptionState
                                                  .notifier)
                                              .state = listData;
                                        });
                                      }
                                    },
                                  ),
                                );
                              },
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
                        width: MediaQuery.of(context).size.width,
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
                                        setState(() async {
                                          ref.refresh(taskControllerProvider);
                                        await  ctrl
                                              .currentQuestion(
                                              employeeMissionId:
                                              gamificationData
                                                  .employeeMissionId ??
                                                  0,pagePosition: PagePosition.PREV).whenComplete(() {
                                            currentQuestionIndex.state--;
                                            ref
                                                .watch(currentProgressState
                                                    .notifier)
                                                .state--;
                                            if (ref
                                                .watch(currentTypeTaskState
                                                .notifier)
                                                .state ==
                                                TaskType.STX.name ||
                                                ref
                                                    .watch(currentTypeTaskState
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
                                                  .watch(listSelectOptionState
                                                  .notifier)
                                                  .state =
                                                  ref
                                                      .watch(
                                                      listSelectOptionCurrentState
                                                          .notifier)
                                                      .state;
                                            }

                                          });
                                        });
                                      },
                                      child: Text(
                                        'Previous',
                                      ),
                                    ),
                                  )
                                : Container(),
                            SizedBox(width: 8),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (listSelectedOption.state.isNotEmpty) {
                                    if ((currentQuestionIndex.state + 1) <
                                            lengthAnswer &&
                                        lengthAnswer != 1) {
                                    await  ctrl
                                          .currentQuestion(
                                          employeeMissionId:
                                          gamificationData
                                              .employeeMissionId ??
                                              0,pagePosition: PagePosition.NEXT)
                                          .whenComplete(() async {
                                        await ctrl
                                            .saveAnswer(
                                                listTask[currentQuestionIndex
                                                            .state]
                                                        .taskId ??
                                                    0,
                                                isLast: false,
                                                listSelectedOption: listData,
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
                                                .watch(
                                                currentProgressState.notifier)
                                                .state++;

                                            if (ref
                                                .watch(currentTypeTaskState
                                                .notifier)
                                                .state ==
                                                TaskType.STX.name ||
                                                ref
                                                    .watch(currentTypeTaskState
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
                                                  .watch(listSelectOptionState
                                                  .notifier)
                                                  .state =
                                                  ref
                                                      .watch(
                                                      listSelectOptionCurrentState
                                                          .notifier)
                                                      .state;
                                            }

                                            listData.clear();

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
                                              listSelectedOption: listData,
                                              type: listTask[
                                                          currentQuestionIndex
                                                              .state]
                                                      .taskTypeCode ??
                                                  '')
                                          .whenComplete(() {
                                        if (((currentQuestionProgress) * 100) ~/
                                                listTask.length <
                                            100) {
                                          ref
                                              .watch(
                                                  currentProgressState.notifier)
                                              .state++;
                                        }
                                        listData.clear();
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return CustomDialog(
                                                title:
                                                    "Are you sure want to submit your ${(gamificationData.chapterData?.single.missionData?.single.missionTypeName == "Assignment" ? "assignment" : "answers")}",
                                                content:
                                                    "Are you sure want to leave",
                                                label: "Submit",
                                                type: DialogType.mission,
                                                onClosed: () async => {
                                                      await ctrl
                                                          .putAnswerFinal()
                                                          .whenComplete(
                                                              () async {
                                                        await ctrl
                                                            .changeStatusTask()
                                                            .whenComplete(
                                                                () async {
                                                          await ctrlMission
                                                              .getMissionList()
                                                              .whenComplete(
                                                                  () {
                                                                    ref.refresh(taskControllerProvider);
                                                                  });
                                                        });
                                                      })
                                                    });
                                          },
                                        );
                                      });
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content:
                                              Text('Please select an option!')),
                                    );
                                  }
                                },
                                child: Text(
                                  (currentQuestionIndex.state + 1) <
                                          listTask.length
                                      ? 'Next'
                                      : 'Finish',
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
            ));
      },
    );
  }
}
