import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';


import '../controller/task.controller.dart';

class TaskMultiChoiceScreen extends ConsumerStatefulWidget {

  const TaskMultiChoiceScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskMultiChoiceScreenState();
}

class _TaskMultiChoiceScreenState
    extends ConsumerState<TaskMultiChoiceScreen> {
  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrl = ref.watch(taskControllerProvider.notifier);
        final currentQuestionIndex = ref.watch(currentIndexState.notifier);
        final listSelectOption = ref.watch(listSelectOptionState);
        final listTask = ref.watch(listTaskState);
        final currentQuestionProgress = ref.watch(currentProgressState);
        final lengthAnswer = ref.watch(listTaskState).length;
        final listSelectedOption = ref.watch(listSelectOptionState);
        return Scaffold(
            backgroundColor: ColorTheme.backgroundLight,
            body: ListView(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10.r)),
                  ),
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 200,
                              width:
                              MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/image_news.png',
                                      package: 'module_etamkawa',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  color: ColorTheme.backgroundWhite,
                                  borderRadius:
                                  const BorderRadius.all(
                                      Radius.circular(10))),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16),
                            ),
                            const SizedBox(height: 10.0),

                            Text(
                              listTask[currentQuestionIndex.state]
                                  .taskCaption ??
                                  '',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Divider(),
                            const SizedBox(height: 20.0),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount:
                              listTask[currentQuestionIndex.state]
                                  .answerData
                                  ?.length,
                              itemBuilder: (BuildContext context,
                                  int index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: listSelectOption.contains(index)  ? ColorTheme.primaryNew : ColorTheme.backgroundLight, // Border color based on selection
                                    ),
                                    borderRadius: BorderRadius.circular(8.0), // Border radius
                                  ),
                                  child:  CheckboxListTile(
                                    controlAffinity: ListTileControlAffinity.leading,
                                    title: Text(
                                        listTask[currentQuestionIndex.state]
                                            .answerData?[index].answerCaption??
                                            ''),
                                    value: listSelectOption.contains(index),
                                    onChanged: (bool? value) {
                                      setState(() {
                                        if (value != null && value) {
                                          listSelectOption.add(index);
                                        } else {
                                          listSelectOption.remove(index);
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
                            if (listSelectOption != []) {
                              setState(() async {
                                if ((currentQuestionIndex.state + 1) <
                                    lengthAnswer &&
                                    lengthAnswer != 1) {
                                 await ctrl
                                      .saveAnswer(
                                      listTask[currentQuestionIndex.state]
                                          .taskId ??
                                          0,
                                      isLast: false,
                                      listSelectedOption: listSelectedOption,
                                      type:
                                      listTask[currentQuestionIndex.state]
                                          .taskTypeCode ??
                                          '')
                                      .whenComplete(() {
                                    currentQuestionIndex.state++;
                                    ref
                                        .watch(currentProgressState.notifier)
                                        .state++;
                                    ref
                                        .read(listSelectOptionState.notifier)
                                        .state = [];
                                    ref
                                        .read(selectOptionIndexState.notifier)
                                        .state = 0;
                                  });
                                } else {
                                 await ctrl
                                      .saveAnswer(
                                      listTask[currentQuestionIndex.state]
                                          .taskId ??
                                          0,
                                      isLast: true,
                                      listSelectedOption: listSelectedOption,
                                      type:
                                      listTask[currentQuestionIndex.state]
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
                                        .read(listSelectOptionState.notifier)
                                        .state = [];
                                    ref
                                        .read(selectOptionIndexState.notifier)
                                        .state = 0;
                                    showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                        title: const Text('Quiz Finished'),
                                        content:
                                        const Text('You have completed the quiz.'),
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
                            (currentQuestionIndex.state +1) <
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
