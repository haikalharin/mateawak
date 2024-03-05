import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_sinlgle_choice.screen.dart';
import 'package:module_shared/module_shared.dart';

import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/refreshable_starter_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../mission/domain/gamification_response.remote.dart';
import '../infrastructure/controller/task.controller.dart';

class TaskScreen extends ConsumerStatefulWidget {
  final List<TaskDatum> listTask;

  const TaskScreen({super.key, required this.listTask});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TaskScreenState();
}

class _TaskScreenState extends ConsumerState<TaskScreen> {
  final _scrollController = ScrollController();

  // int currentQuestionIndex = 0;
  // String? selectedOption;
  double progress = 0.0;

  // List<Map<String, dynamic>> questions = [
  //   {
  //     'question': 'What is the capital of France?',
  //     'options': ['London', 'Paris', 'Berlin', 'Rome'],
  //     'correctIndex': 1,
  //   },
  //   {
  //     'question': 'Who wrote "To Kill a Mockingbird"?',
  //     'options': ['Harper Lee', 'J.K. Rowling', 'Mark Twain', 'Stephen King'],
  //     'correctIndex': 0,
  //   },
  // ];

  @override
  void initState() {
    _scrollController.addListener(
      () {
        ref.read(isScrollProvider.notifier).state =
            _scrollController.position.pixels > 100.h;
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // final List<int> _screenOccupation = [0, 0];

  @override
  Widget build(BuildContext context) {
    // final isScrolled = ref.watch(isScrollProvider);

    // final indexMenuOverview = ref.watch(indexMenuOverviewProvider);
    return WillPopScope(
      onWillPop: () {
        context.pop();
        context.pop();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: SharedComponentEtamkawa.appBar(
          context: context,
          title: 'Mission',
          brightnessIconStatusBar: Brightness.light,
        ),
        body: Consumer(builder: (context, ref, child) {
          final currentQuestionIndex = ref.read(currentIndexState.notifier);
          final selectedOption = ref.watch(selectOptionState);
          final ctrl = ref.watch(taskControllerProvider.notifier);

          return Column(
            children: [
              const Divider(
                height: 0.5,
              ),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: ColorTheme.backgroundWhite),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Intro to Etam Kawa',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  color: ColorTheme.textDark,
                                ),
                              ),
                              Text(
                                'Mission: Safety & Regulations',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.sp,
                                  color: ColorTheme.textLightDark,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 83,
                          height: 26,
                          decoration: BoxDecoration(
                              color: ColorTheme.blueLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.r))),
                          child: const Center(child: Text('In Progress')),
                        ),
                      ],
                    ),
                    LinearProgressIndicator(
                      value: (currentQuestionIndex.state + 1) /
                          widget.listTask.length,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TaskSingleChoiceScreen(
                  buttonFunction: () {
                    if (selectedOption != '') {
                      setState(() {
                        if (currentQuestionIndex.state <=
                            (widget.listTask[currentQuestionIndex.state]
                                    .answerData?.length ??
                                0)) {
                          ctrl
                              .saveAnswer(
                                  selectedOption,
                                  widget.listTask[currentQuestionIndex.state]
                                          .taskId ??
                                      '')
                              .whenComplete(() {
                            if ((currentQuestionIndex.state <
                                (widget.listTask[currentQuestionIndex.state]
                                        .answerData?.length ??
                                    0))) {
                              currentQuestionIndex.state++;
                            }
                            ref.read(selectOptionState.notifier).state = '';
                          });
                        } else {
                          ref.read(selectOptionState.notifier).state = '';
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Quiz Finished'),
                              content: Text('You have completed the quiz.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'),
                                )
                              ],
                            ),
                          );
                        }
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please select an option!')),
                      );
                    }
                  },
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
