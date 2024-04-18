import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_file.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_free_text.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_multi_choice.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_rating.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_sinlgle_choice.screen.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_shared/module_shared.dart';

import '../../../configs/theme/color.theme.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../mission/domain/gamification_response.remote.dart';
import 'controller/task.controller.dart';

class TaskScreen extends ConsumerStatefulWidget {
  const TaskScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TaskScreenState();
}

class _TaskScreenState extends ConsumerState<TaskScreen> {
  final _scrollController = ScrollController();
  double progress = 0.0;

  @override
  void initState() {
    _scrollController.addListener(
      () {},
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
    return Consumer(builder: (context, ref, child) {
      final ctrl = ref.watch(taskControllerProvider.notifier);
      final ctrlMainNav = ref.read(mainNavControllerProvider.notifier);
      final ctrlMission = ref.read(missionControllerProvider.notifier);
      final currentQuestionIndex = ref.read(currentIndexState.notifier);
      final currentQuestionProgress = ref.watch(currentProgressState);
      final listTask = ref.watch(listTaskState);
      final missionData = ref.watch(missionDataState);
      final gamificationData = ref.watch(gamificationState);

      return AsyncValueWidget(
          value: ref.watch(taskControllerProvider),
          data: (data) {
            return WillPopScope(
              onWillPop: () async {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return CustomDialog(
                        title: "Confirmation",
                        content: "Are you sure want to leave",
                        label: "Stay",
                        type: DialogType.question,
                        onClosed: () async => {
                              await ctrl
                                  .putAnswerFinal()
                                  .whenComplete(() async {
                                await ctrl
                                    .changeStatusTask(isDone: false)
                                    .whenComplete(() async {
                                  await ctrlMission
                                      .getMissionList()
                                      .whenComplete(() async {});
                                });
                              })
                            });
                  },
                );
                return Future.value(false);
              },
              child: Scaffold(
                backgroundColor: ColorTheme.backgroundLight,
                appBar: SharedComponentEtamkawa.appBar(
                    context: context,
                    title: 'Mission',
                    backgroundColor: ColorTheme.backgroundWhite,
                    titleColor: ColorTheme.textDark,
                    brightnessIconStatusBar: Brightness.light,
                    onBack: () async {
                      await showDialog(
                          context: context,
                          builder: (context) {
                            return CustomDialog(
                                title: "Confirmation",
                                content: "Are you sure want to leave",
                                label: "Stay",
                                type: DialogType.question,
                                onClosed: () async {
                                  await ctrl
                                      .putAnswerFinal()
                                      .whenComplete(() async {
                                    await ctrl
                                        .changeStatusTask(isDone: false)
                                        .whenComplete(() async {
                                      await ctrlMission
                                          .getMissionList()
                                          .whenComplete(() {
                                      });
                                    });
                                  });
                                });
                          });
                    }),
                body: Column(
                  children: [
                    const Divider(
                      height: 0.5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorTheme.backgroundWhite,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
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
                                        gamificationData.chapterData?.single
                                                .chapterName ??
                                            '',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.largeH5,
                                            fontColor:
                                                ColorTheme.textLightDark)),
                                    Text('Mission: ${missionData.missionName}',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.smallH8,
                                            fontColor:
                                                ColorTheme.textLightDark)),
                                  ],
                                ),
                              ),
                              Container(
                                width: 83,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: ColorTheme.secondary100,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.r))),
                                child: const Center(child: Text('In Progress')),
                              ),
                            ],
                          ),
                          if (gamificationData.chapterData?.single.missionData?.single.missionTypeName != "Assignment") 
                          Container(
                            margin: const EdgeInsets.only(top: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Overall progress',
                                    style: SharedComponent.textStyleCustom(
                                        typographyType: TypographyType.body,
                                        fontColor: ColorTheme.textDark)),
                                Stack(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.only(left: 8),
                                        height: 24,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: ColorTheme.bgGreenLight,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.r)),
                                        ),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('0%',
                                                style: SharedComponent
                                                    .textStyleCustom(
                                                        typographyType:
                                                            TypographyType.body,
                                                        fontColor: ColorTheme
                                                            .primary500)))),
                                    Container(
                                        height: 24,
                                        padding:
                                            const EdgeInsets.only(right: 8),
                                        width: MediaQuery.of(context)
                                                .size
                                                .width *
                                            ((currentQuestionProgress) /
                                                listTask.length),
                                        decoration: BoxDecoration(
                                          color: ColorTheme.primary500,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.r)),
                                        ),
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                                '${((currentQuestionProgress) * 100) ~/ listTask.length}%',
                                                style: SharedComponent
                                                    .textStyleCustom(
                                                        typographyType:
                                                            TypographyType.body,
                                                        fontColor: ColorTheme
                                                            .backgroundLight))))
                                  ],
                                ),
                              ],
                            ),
                          ) ,
                        ],
                      ),
                    ),
                    listTask[currentQuestionIndex.state].taskTypeCode ==
                                TaskType.SCQ.name ||
                            listTask[currentQuestionIndex.state].taskTypeCode ==
                                TaskType.YNQ.name
                        ? const Expanded(
                            child: TaskSingleChoiceScreen(),
                          )
                        : Container(),
                    listTask[currentQuestionIndex.state].taskTypeCode ==
                            TaskType.MCQ.name
                        ? const Expanded(
                            child: TaskMultiChoiceScreen(),
                          )
                        : Container(),
                    listTask[currentQuestionIndex.state].taskTypeCode ==
                            TaskType.STX.name
                        ? const Expanded(
                            child: TaskFreeTextScreen(),
                          )
                        : Container(),
                    listTask[currentQuestionIndex.state].taskTypeCode ==
                            TaskType.RAT.name
                        ? const Expanded(
                            child: TaskRatingScreen(),
                          )
                        : Container(),
                    listTask[currentQuestionIndex.state].taskTypeCode ==
                            TaskType.ASM.name
                        ? const Expanded(
                            child: TaskFileScreen(),
                          )
                        : Container(),
                  ],
                ),
              ),
            );
          });
    });
  }
}
