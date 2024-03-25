import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../configs/theme/color.theme.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
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

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrl = ref.watch(taskControllerProvider.notifier);
        final ctrlMission = ref.read(mainNavControllerProvider.notifier);
        final currentQuestionIndex = ref.watch(currentIndexState.notifier);
        final listSelectedOption = ref.watch(listSelectOptionState.notifier);
        final listTask = ref.watch(listTaskState);
        final currentQuestionProgress = ref.watch(currentProgressState);
        final lengthAnswer = ref
            .watch(listTaskState)
            .length;

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
                                  "${currentQuestionIndex.state + 1}/${listTask
                                      .length}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: ColorTheme.textDark,
                                  ),
                                ),
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
                                                    color: ColorTheme
                                                        .secondary500,
                                                    size: 12.h,
                                                  ),
                                                  Text(
                                                    " +${listTask[currentQuestionIndex
                                                        .state].taskReward}",
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color:
                                                      ColorTheme.secondary500,
                                                    ),
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
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              decoration: BoxDecoration(
                                  image:  DecorationImage(
                                    image: FileImage(
                                        File(listTask[currentQuestionIndex.state].attachmentPath??'')
                                    ),
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
                              style: const TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w500),
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
                                      setState(() {
                                        if (value != null && value) {
                                          listData.add(
                                              listAnswer?[index].answerId ?? 0);
                                        } else {
                                          listData.remove(
                                              listAnswer?[index].answerId ?? 0);
                                        }
                                        ref
                                            .watch(
                                            listSelectOptionState.notifier)
                                            .state = listData;
                                      });
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
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
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
                                  setState(() {
                                    ctrl.prevQuestion().whenComplete(() {
                                      currentQuestionIndex.state--;
                                      ref
                                          .watch(currentProgressState
                                          .notifier)
                                          .state--;
                                      if (ref
                                          .watch(previousTypeTaskState
                                          .notifier)
                                          .state ==
                                          TaskType.STX.name) {
                                        ref
                                            .watch(
                                            listSelectOptionStringState
                                                .notifier)
                                            .state =
                                            ref
                                                .watch(
                                                listSelectOptionPrevStringState
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
                                                listSelectOptionPrevState
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
                                      ctrl
                                          .nextQuestion(isLast: false)
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
                                            .whenComplete(() {
                                          currentQuestionIndex.state++;
                                          ref
                                              .watch(
                                              currentProgressState.notifier)
                                              .state++;
                                          if (ref
                                              .watch(nextTypeTaskState
                                              .notifier)
                                              .state ==
                                              TaskType.STX.name) {
                                            ref
                                                .watch(
                                                listSelectOptionStringState
                                                    .notifier)
                                                .state =
                                                ref
                                                    .watch(
                                                    listSelectOptionNextStringState
                                                        .notifier)
                                                    .state;
                                          } else {
                                            ref
                                                .watch(listSelectOptionState
                                                .notifier)
                                                .state =
                                                ref
                                                    .watch(
                                                    listSelectOptionNextState
                                                        .notifier)
                                                    .state;
                                          }
                                          listData.clear();
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
                                          builder: (_) =>
                                              AlertDialog(
                                                title: const Text(
                                                    'Quiz Finished'),
                                                content: const Text(
                                                    'You have completed the quiz.'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () async {
                                                      await ctrl
                                                          .putAnswerFinal()
                                                          .whenComplete(() async {
                                                        await ctrl
                                                            .changeStatusTask()
                                                            .whenComplete(() async {
                                                          await ctrlMission
                                                              .fetchMissionListLocal()
                                                              .whenComplete(() {
                                                            Navigator.pop(
                                                                context);
                                                            Navigator.pop(
                                                                context);
                                                            Navigator.pop(
                                                                context);
                                                          });


                                                        });
                                                      });
                                                    },
                                                    child: const Text('OK'),
                                                  )
                                                ],
                                              ),
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