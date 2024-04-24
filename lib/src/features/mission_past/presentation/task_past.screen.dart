import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_assignment.screen.dart.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_file_past.screen.dart.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_free_text_past.screen.dart.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_multiple_choice_past.screen.dart.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_rating_past.screen.dart.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_sinlgle_choice_past.screen.dart.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_file.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_free_text.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_multi_choice.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_rating.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_sinlgle_choice.screen.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_shared/module_shared.dart';

import '../../../configs/theme/color.theme.dart';
import '../../../constants/constant.dart';
import '../../../constants/image.constant.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../../utils/common_utils.dart';
import '../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../mission/domain/gamification_response.remote.dart';
import '../../mission_detail/presentation/mission.detail.screen.dart';
import '../../mission_past/presentation/controller/mission_past.controller.dart';
import '../../task/presentation/controller/task.controller.dart';

class TaskPastScreen extends ConsumerStatefulWidget {
  const TaskPastScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TaskScreenState();
}

class _TaskScreenState extends ConsumerState<TaskPastScreen> {
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
      final listTask = ref.watch(listTaskPastState);
      final missionData = ref.watch(missionDataState);
      final gamificationData = ref.watch(gamificationDetailState);
      List<Widget> listWidget = [];
      int index = 0;
      for (var element in listTask) {
        if (element.taskTypeCode == TaskType.SCQ.name ||
            element.taskTypeCode == TaskType.YNQ.name) {
          listWidget.add(TaskSingleChoicePastScreen(
              index: index, taskDatum: listTask[index]));
        } else if (element.taskTypeCode == TaskType.MCQ.name) {
          listWidget.add(TaskMultipleChoicePastScreen(
              index: index, taskDatum: listTask[index]));
        } else if (element.taskTypeCode == TaskType.STX.name) {
          listWidget.add(
              TaskFreeTextPastScreen(index: index, taskDatum: listTask[index]));
        } else if (element.taskTypeCode == TaskType.RAT.name) {
          listWidget.add(
              TaskRatingPastScreen(index: index, taskDatum: listTask[index]));
        } else if (element.taskTypeCode == TaskType.ASM.name) {
          if (gamificationData
                  .chapterData?.first.missionData?.first.missionTypeName ==
              'Assignment') {
            listWidget.add(TaskAssignmentPastScreen(
                index: index, taskDatum: listTask[index]));
          } else {
            listWidget.add(
                TaskFilePastScreen(index: index, taskDatum: listTask[index]));
          }
        }
        index++;
      }
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
                      context.pop();
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
                                child:  Center(child: Text(gamificationData.missionStatus??'')),
                              ),
                            ],
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: ColorTheme.strokeTertiary,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                            ),
                            elevation: 0,
                            margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 10.h),
                                      Container(
                                          width: 16.sp,
                                          height: 20.sp,
                                          child: Icon(
                                            Icons.calendar_month,
                                            color: ColorTheme.danger500,
                                          )),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        'Submitted at',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.bold,
                                            fontColor: ColorTheme.neutral600),
                                      ),
                                      Text(
                                        CommonUtils.formattedDate(
                                            gamificationData.submittedDate ??
                                                '',
                                            withDay: true,
                                            withHourMinute: true),
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.paragraph,
                                            fontColor: ColorTheme.neutral500),
                                      ),
                                      SizedBox(height: 10.h),
                                    ],
                                  ),
                                  addVerticalDivider(),
                                  addTaskIfQuizz(gamificationData
                                          .chapterData
                                          ?.single
                                          .missionData
                                          ?.single
                                          .taskData
                                          ?.length ??
                                      0),
                                  addVerticalDivider(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 10.h),
                                      SvgPicture.asset(
                                          ImageConstant.iconDuration,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant.moduleEtamkawa),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Duration',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.bold,
                                            fontColor: ColorTheme.neutral600),
                                      ),
                                      Text(
                                        '${CommonUtils.daysBetween(DateTime.now(), DateTime.parse(gamificationData.dueDate ?? '2021-01-30T00:00:00'))} days',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.paragraph,
                                            fontColor: ColorTheme.neutral500),
                                      ),
                                      SizedBox(height: 10.h),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: listWidget,
                    )
                  ],
                ),
              ),
            );
          });
    });
  }
}
