
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_free_text.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_multi_choice.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_rating.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_sinlgle_choice.screen.dart';
import 'package:module_shared/module_shared.dart';

import '../../../configs/theme/color.theme.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../mission/domain/gamification_response.remote.dart';
import 'controller/task.controller.dart';

class TaskScreen extends ConsumerStatefulWidget {
  final List<TaskDatum> listTask;

  const TaskScreen({super.key, required this.listTask});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TaskScreenState();
}

class _TaskScreenState extends ConsumerState<TaskScreen> {
  final _scrollController = ScrollController();
  double progress = 0.0;

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
        backgroundColor: ColorTheme.backgroundLight,
        appBar: SharedComponentEtamkawa.appBar(
          context: context,
          title: 'Mission',
          brightnessIconStatusBar: Brightness.light,
        ),
        body: Consumer(builder: (context, ref, child) {
          final currentQuestionIndex = ref.read(currentIndexState.notifier);
          final currentQuestionProgress = ref.watch(currentProgressState);
          final listTask = ref.watch(listTaskState);
          final missionData = ref.watch(missionDataState);

          return Column(
            children: [
              const Divider(
                height: 0.5,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                margin: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorTheme.backgroundWhite,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
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
                                  'Mission: ${missionData.missionName}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
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
                                color: ColorThemeEtamkawa.blueLight,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.r))),
                            child: const Center(child: Text('In Progress')),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Overall progress',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: ColorTheme.textLightDark,
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                    padding: const EdgeInsets.only(left: 8),
                                    height: 24,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorThemeEtamkawa.bgGreenLight,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.r)),
                                    ),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '0%',
                                          style: TextStyle(
                                              color: ColorTheme.primaryNew),
                                        ))),
                                Container(
                                    height: 24,
                                    padding: const EdgeInsets.only(right: 8),
                                    width: MediaQuery.of(context).size.width *
                                        ((currentQuestionProgress) /
                                            listTask.length),
                                    decoration: BoxDecoration(
                                      color: ColorTheme.primaryNew,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.r)),
                                    ),
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                            '${((currentQuestionProgress) * 100) ~/ listTask.length}%',
                                            style: TextStyle(
                                                color: ColorTheme
                                                    .backgroundLight))))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              listTask[currentQuestionIndex.state].taskTypeCode == 'TT0001'
                  ? const Expanded(
                      child: TaskSingleChoiceScreen(
                      ),
                    )
                  : Container(),
              listTask[currentQuestionIndex.state].taskTypeCode == 'TT0002'
                  ? const Expanded(
                      child: TaskMultiChoiceScreen(),
                    )
                  : Container(),
              listTask[currentQuestionIndex.state].taskTypeCode == 'TT0003'
                  ? const Expanded(
                child: TaskFreeTextScreen(),
              )
                  : Container(),
              listTask[currentQuestionIndex.state].taskTypeCode == 'TT0004'
                  ? const Expanded(
                child: TaskRatingScreen(),
              )
                  : Container(),
            ],
          );
        }),
      ),
    );
  }
}
