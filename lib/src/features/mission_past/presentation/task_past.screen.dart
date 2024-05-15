import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_assignment_past.screen.dart.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_free_text_past.screen.dart.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_multiple_choice_past.screen.dart.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_rating_past.screen.dart.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/widget/task_sinlgle_choice_past.screen.dart.dart';
import 'package:module_shared/module_shared.dart';

import '../../../constants/constant.dart';
import '../../../constants/image.constant.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../../utils/common_utils.dart';
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
      // final ctrl = ref.watch(taskControllerProvider.notifier);
      // final ctrlMainNav = ref.read(mainNavControllerProvider.notifier);
      // final ctrlMission = ref.read(missionControllerProvider.notifier);
      // final currentQuestionIndex = ref.read(currentIndexState.notifier);
      // final currentQuestionProgress = ref.watch(currentProgressState);
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
            // listWidget.add(
            //     TaskFilePastScreen(index: index, taskDatum: listTask[index]));
          }
        }
        index++;
      }
      return AsyncValueWidget(
          value: ref.watch(taskControllerProvider),
          data: (data) {
            return WillPopScope(
              onWillPop: () async {
                return Future.value(true);
              },
              child: Scaffold(
                backgroundColor: ColorTheme.backgroundLight,
                appBar: SharedComponentEtamkawa.appBar(
                    context: context,
                    title: EtamKawaTranslate.mission,
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width / 1.5,
                                    child: Text(
                                        gamificationData.chapterData?.single
                                                .chapterName ??
                                            '',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.largeH5,
                                            fontColor: ColorTheme.textDark)),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Text(
                                        '${EtamKawaTranslate.mission}: ${missionData.missionName}',
                                        maxLines: 5,
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.smallH8,
                                            fontColor:
                                                ColorTheme.textLightDark)),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 4.h),
                                decoration: BoxDecoration(
                                    color: EtamKawaUtils()
                                        .getMissionStatusBGColorByCode(
                                            gamificationData.missionStatusCode
                                                .toString()),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.r))),
                                child: Center(
                                    child: Text(
                                  EtamKawaUtils().getMissionStatus(
                                      gamificationData.missionStatus ?? ''),
                                  style: SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.small,
                                      fontColor: EtamKawaUtils()
                                          .getMissionStatusFontColorByCode(
                                              gamificationData.missionStatusCode
                                                  .toString())),
                                )),
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
                                      SvgPicture.asset(ImageConstant.iconReward,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant.moduleEtamkawa),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        EtamKawaTranslate.rewards,
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.bold,
                                            fontColor: ColorTheme.neutral600),
                                      ),
                                      Text(
                                        '${(gamificationData.chapterData?.single.missionData?.single.missionReward ?? 0).toString()} total',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.paragraph,
                                            fontColor: ColorTheme.neutral500),
                                      ),
                                      SizedBox(height: 10.h),
                                    ],
                                  ),
                                  if (gamificationData
                                          .chapterData
                                          ?.single
                                          .missionData
                                          ?.single
                                          .missionTypeName !=
                                      'Assignment')
                                    addVerticalDivider(),
                                  if (gamificationData
                                          .chapterData
                                          ?.single
                                          .missionData
                                          ?.single
                                          .missionTypeName !=
                                      'Assignment')
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
                                      SizedBox(
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
                                        EtamKawaTranslate.submittedAt,
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.bold,
                                            fontColor: ColorTheme.neutral600),
                                      ),
                                      Text(
                                        CommonUtils.formattedDateHoursUtcToLocal(
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: listWidget,
                      ),
                    )
                  ],
                ),
              ),
            );
          });
    });
  }
}
