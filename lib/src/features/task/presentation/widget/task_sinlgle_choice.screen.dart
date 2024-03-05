import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/task/infrastructure/controller/task.controller.dart';

import '../../../../shared_component/refreshable_starter_widget.dart';
import '../../../mission/domain/gamification_response.remote.dart';

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
        final listTask = ref.watch(listTaskState);
        return Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: RefreshableStarterWidget(
                    // scrollController: _scrollController,
                    onRefresh: () async {},
                    slivers: [
                      SliverToBoxAdapter(
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10.0),
                                      Text(
                                        'Question ${currentQuestionIndex + 1}:',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10.0),
                                      Text(
                                        listTask[currentQuestionIndex]
                                            .question ??
                                            '',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      SizedBox(height: 20.0),
                                      ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: listTask[currentQuestionIndex]
                                            .answerData?.length,
                                        itemBuilder: (BuildContext context, int index) {
                                          return RadioListTile<String>(
                                            title: Text(listTask[currentQuestionIndex]
                                                .answerData?[index]
                                                .name ??
                                                ''),
                                            value: listTask[currentQuestionIndex]
                                                .answerData?[index].answerId ??
                                                '',
                                            groupValue: selectedOption,
                                            onChanged: (String? value) {
                                              if(value != null) {
                                                ctrl.selectOption(value,listTask[currentQuestionIndex].taskId??'');
                                              }
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed:  widget.buttonFunction,
                        child: Text(
                          currentQuestionIndex <
                              (listTask[currentQuestionIndex].answerData
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
              ],
            ));
      },
    );
  }
}
