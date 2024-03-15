import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../configs/theme/color.theme.dart';
import '../controller/task.controller.dart';

class TaskSingleChoiceScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;

  const TaskSingleChoiceScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskSingleChoiceScreenState();
}

class _TaskSingleChoiceScreenState
    extends ConsumerState<TaskSingleChoiceScreen> {
  var groupValue = 0;

  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrl = ref.watch(taskControllerProvider.notifier);
        final currentQuestionIndex = ref.watch(currentIndexState.notifier);
        final listSelectedOption = ref.watch(listSelectOptionState.notifier);
        final currentQuestionProgress = ref.watch(currentProgressState);
        final lengthAnswer = ref.watch(listTaskState).length;
        final listTask = ref.watch(listTaskState);
        final listMission = ref.watch(listMissionState);
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
                                  "${currentQuestionIndex.state + 1}/${listMission.length}",
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
                                            color:
                                                ColorThemeEtamkawa.secondary100,
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
                                                    ColorThemeEtamkawa.secondary500,
                                                size: 12.h,
                                              ),
                                              Text(
                                                " +${listTask[currentQuestionIndex.state].taskReward}",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: ColorTheme.secondary500,
                                                ),
                                              ),
                                          ],
                                        ),
                                            )),
                                      ),
                                      Icon(
                                        Icons.info,
                                        color:
                                        ColorThemeEtamkawa.primaryNew,
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
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/image_news.png',
                                      package: 'module_etamkawa',
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
                                listAnswer?.sort((a, b) =>
                                    (a.answerCaption ?? '')
                                        .compareTo(b.answerCaption ?? ''));

                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: listSelectedOption.state.contains(
                                              listAnswer?[index].answerId)
                                          ? ColorTheme.primaryNew
                                          : ColorTheme
                                              .backgroundLight, // Border color based on selection
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Border radius
                                  ),
                                  child: RadioListTile<int>(
                                    title: Text(
                                        listAnswer?[index].answerCaption ?? ''),
                                    value: listAnswer?[index].answerId ?? 0,
                                    groupValue:
                                        listSelectedOption.state.isNotEmpty
                                            ? listSelectedOption.state.first
                                            : 0,
                                    onChanged: (int? value) {
                                      setState(() {
                                        if (value != null) {
                                          if (listSelectedOption
                                              .state.isNotEmpty) {
                                            listSelectedOption.state.clear();
                                          }
                                          listSelectedOption.state.add(
                                              listAnswer?[index].answerId ?? 0);
                                        }
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
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (listSelectedOption.state.isNotEmpty) {
                              setState(() {
                                if ((currentQuestionIndex.state + 1) <
                                        lengthAnswer &&
                                    lengthAnswer != 1) {
                                  ctrl
                                      .saveAnswer(
                                          listTask[currentQuestionIndex.state]
                                                  .taskId ??
                                              0,
                                          isLast: false,
                                          listSelectedOption:
                                              listSelectedOption.state,
                                          type: listTask[currentQuestionIndex
                                                      .state]
                                                  .taskTypeCode ??
                                              '')
                                      .whenComplete(() {
                                    currentQuestionIndex.state++;
                                    ref
                                        .watch(currentProgressState.notifier)
                                        .state++;
                                    ref
                                        .watch(listSelectOptionState.notifier)
                                        .state = [];
                                  });
                                } else {
                                  ctrl
                                      .saveAnswer(
                                          listTask[currentQuestionIndex.state]
                                                  .taskId ??
                                              0,
                                          isLast: true,
                                          listSelectedOption:
                                              listSelectedOption.state,
                                          type: listTask[currentQuestionIndex
                                                      .state]
                                                  .taskTypeCode ??
                                              '')
                                      .whenComplete(() {
                                    if (((currentQuestionProgress) * 100) ~/
                                            listTask.length <
                                        100) {
                                      ref
                                          .watch(currentProgressState.notifier)
                                          .state++;
                                    }

                                    ref
                                        .watch(listSelectOptionState.notifier)
                                        .state = [];
                                    showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                        title: const Text('Quiz Finished'),
                                        content: const Text(
                                            'You have completed the quiz.'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                            },
                                            child: const Text('OK'),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                                }
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Please select an option!')),
                              );
                            }
                          },
                          child: Text(
                            (currentQuestionIndex.state + 1) <
                                    (listTask[currentQuestionIndex.state]
                                                .answerData
                                                ?.length ??
                                            0) -
                                        1
                                ? 'Next'
                                : 'Finish',
                          ),
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
