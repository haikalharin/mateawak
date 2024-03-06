import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';


import '../controller/task.controller.dart';

class TaskSingleChoiceScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;
  final Function() buttonFunction;

  const TaskSingleChoiceScreen({super.key, required this.buttonFunction});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskSingleChoiceScreenState();
}

class _TaskSingleChoiceScreenState
    extends ConsumerState<TaskSingleChoiceScreen> {
  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrl = ref.watch(taskControllerProvider.notifier);
        final currentQuestionIndex = ref.watch(currentIndexState);
        final selectedOption = ref.watch(selectOptionState);
        final selectedOptionIndex = ref.watch(selectOptionIndexState);
        final listTask = ref.watch(listTaskState);
        return Scaffold(
            backgroundColor: ColorTheme.backgroundLight,
            body: ListView(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10.r)),
                  ),
                  margin: EdgeInsets.all(8),
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
                            SizedBox(height: 10.0),
                            Text(
                              listTask[currentQuestionIndex]
                                  .name ??
                                  '',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              listTask[currentQuestionIndex]
                                  .description ??
                                  '',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            Divider(),
                            SizedBox(height: 10.0),
                            Text(
                              listTask[currentQuestionIndex]
                                  .question ??
                                  '',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 20.0),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount:
                              listTask[currentQuestionIndex]
                                  .answerData
                                  ?.length,
                              itemBuilder: (BuildContext context,
                                  int index) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 8.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: selectedOptionIndex == (index+1) ? ColorTheme.primaryNew : ColorTheme.backgroundLight, // Border color based on selection
                                    ),
                                    borderRadius: BorderRadius.circular(8.0), // Border radius
                                  ),
                                  child: RadioListTile<String>(
                                    title: Text(
                                        listTask[currentQuestionIndex]
                                            .answerData?[index]
                                            .name ??
                                            ''),
                                    value:
                                    listTask[currentQuestionIndex]
                                        .answerData?[index]
                                        .answerId ??
                                        '',
                                    groupValue: selectedOption,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        ref.watch(selectOptionIndexState.notifier).state = index+1;
                                        ctrl.selectOption(
                                            value,
                                            listTask[currentQuestionIndex]
                                                .taskId ??
                                                '');
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
                    padding: EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: widget.buttonFunction,
                          child: Text(
                            currentQuestionIndex <
                                    (listTask[currentQuestionIndex]
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
