import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/constants/function_utils.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../constants/constant.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../task/domain/answer_request.remote.dart';
import '../../task/presentation/controller/task.controller.dart';

enum TypeListMission { inProgress, assigned, past }

class MissionScreen extends ConsumerStatefulWidget {
  const MissionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MissionScreenState();
}

Future<void> myAsyncMethodMoved(
    BuildContext context, GamificationResponseRemote gamification) async {
  context.goNamed(detailMissionEtamkawa);
}

class _MissionScreenState extends ConsumerState<MissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final ctrl = ref.watch(missionControllerProvider.notifier);
          final ctrlTask = ref.watch(taskControllerProvider.notifier);
          final listMissionInProgress = ref.watch(listMissionInProgressState);
          final listMissionAssigned = ref.watch(listMissionAssignedState);
          final listMissionPast = ref.watch(listMissionPastState);
          final gamificationInProgress = ref.watch(gamificationInProgressState);
          final gamificationAssigned = ref.watch(gamificationAssignedState);
          final gamificationPast = ref.watch(gamificationPastState);
          final listGamification = ref.watch(listGamificationState);

          return AsyncValueWidget(
            value: ref.watch(taskControllerProvider),
            data: (data) {
              return  Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        hintText: "Search...",
                        suffixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onFieldSubmitted: (keyword) {
                        ctrl.filterMissionList(keyword);
                      },
                    ),
                  ),
                  Expanded(
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          TabBar(
                            labelStyle: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.medium),
                            unselectedLabelColor: ColorTheme.neutral500,
                            tabs: const [
                              Tab(text: 'In Progress'),
                              Tab(text: 'Assigned'),
                              Tab(text: 'Past'),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              color: ColorTheme.neutral100,
                              child: TabBarView(
                                children: [
                                  // Tab 1 content

                                  ListView.builder(
                                    itemCount: gamificationInProgress.length,
                                    itemBuilder: (context, index) {
                                      if (gamificationInProgress.isNotEmpty) {
                                        return _buildListItem(index, ctrl, ctrlTask,
                                            gamificationInProgress);
                                      } else {
                                        return Container();
                                      }
                                    },
                                  ), // Tab 2 content
                                  ListView.builder(
                                    itemCount: gamificationAssigned.length,
                                    itemBuilder: (context, index) {
                                      if (gamificationAssigned.isNotEmpty) {
                                        return _buildListItem(index, ctrl, ctrlTask,
                                            gamificationAssigned);
                                      } else {
                                        return Container();
                                      }
                                    },
                                  ),
                                  // Tab 3 content
                                  ListView.builder(
                                    itemCount: gamificationPast.length,
                                    itemBuilder: (context, index) {
                                      if (gamificationPast.isNotEmpty) {
                                        return _buildListItem(index, ctrl, ctrlTask,
                                            gamificationPast);
                                      } else {
                                        return Container();
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
          );
        },
      ),
    );
  }

  Widget _buildListItem(int index, MissionController ctrl,
      TaskController ctrlTask, List<GamificationResponseRemote> gamification) {
    Future<void> putData() async {
      List<MissionDatum> listMission = [];
      ref.watch(missionDataState.notifier).state =
          gamification[index].chapterData?.single.missionData?.single ??
              MissionDatum();
      ref.watch(gamificationState.notifier).state = gamification[index];
      for (var element in gamification) {
        listMission.add(
            element.chapterData?.single.missionData?.single ?? MissionDatum());
      }
      ref.watch(listMissionState.notifier).state = listMission;
      List<TaskDatum> listTask = (gamification[index]
              .chapterData
              ?.single
              .missionData
              ?.single
              .taskData ??
          []);
      ref.watch(listTaskState.notifier).state = listTask;

    }

    Future<void> putCurrentAnswerFinal() async {
      ref
          .read(currentTypeTaskState.notifier)
          .state = ctrlTask.currentTypeTask;
      if (ctrlTask.currentTypeTask == TaskType.STX.name) {
        ref
            .watch(listSelectOptionStringState.notifier)
            .state =
            ctrlTask.listSelectOptionCurrentString;
      } else {
        ref
            .watch(listSelectOptionState.notifier)
            .state =
            ctrlTask.listSelectOptionCurrent;
      }
    }



    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return  Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: ColorTheme.strokeTertiary,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          elevation: 0,
          margin: const EdgeInsets.all(8),
          child: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5.r)),
                                    color:
                                    (gamification[index].missionStatusId == 0)
                                        ? ColorTheme.neutral300
                                        : ColorTheme.secondary100),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 4.h),
                                  child: Text(gamification[index].missionStatus!,
                                      style: SharedComponent.textStyleCustom(
                                          typographyType: TypographyType.paragraph,
                                          fontColor: (gamification[index]
                                              .missionStatusId ==
                                              0)
                                              ? ColorTheme.neutral600
                                              : ColorTheme.secondary500)),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(ImageConstant.iconReward,
                                    width: 16.sp,
                                    height: 16.sp,
                                    package: Constant.moduleEtamkawa),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                                  child: Text(
                                      '${gamification[index].chapterData?.single.missionData?.single.missionReward.toString()} pts',
                                      style: SharedComponent.textStyleCustom(
                                          typographyType: TypographyType.paragraph,
                                          fontColor: ColorTheme.neutral500)
                                    //TextStyle(fontSize: 12.sp),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                      Text(gamification[index].chapterData![0].chapterName!,
                          style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.largeH5,
                              fontColor: ColorTheme.neutral600)
                        // TextStyle(
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 16.sp,
                        //     color: ColorTheme.neutral600),
                      ),
                      Text(
                          'Mission: ${gamification[index].chapterData?.single.missionData?.single.missionName ?? ''}',
                          style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.paragraph,
                              fontColor: ColorTheme.neutral500)
                        //TextStyle(fontSize: 12.sp)
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(ImageConstant.iconCalendar,
                                width: 16.sp,
                                height: 16.sp,
                                package: Constant.moduleEtamkawa),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                  'Due: ${CommonUtils.formattedDateHours(gamification[index].dueDate ?? DateTime.now().toString())}',
                                  style: SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.small,
                                      fontColor: ColorTheme.neutral500)
                                //TextStyle(fontSize: 11.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 7),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorTheme.neutral0,
                              foregroundColor: ColorTheme.primary500,
                              side: BorderSide(
                                color: ColorTheme.primary500,
                              ),
                            ),
                            onPressed: () async {
                              if (gamification[index].missionStatusId == 1) {
                                await ctrlTask
                                    .putDetailMissionData(
                                    missionDatum: gamification[index]
                                        .chapterData
                                        ?.single
                                        .missionData
                                        ?.single ??
                                        MissionDatum(),
                                    listGamification: gamification,
                                    gamificationResponseRemote:
                                    gamification[index])
                                    .whenComplete(() async {
                                  await putData().whenComplete(() async {
                                    ref.refresh(taskControllerProvider);
                                    await ctrlTask
                                        .currentQuestion(
                                        employeeMissionId: gamification[index]
                                            .employeeMissionId ??
                                            0)
                                        .whenComplete(() async {
                                      await putCurrentAnswerFinal().whenComplete(() {
                                        myAsyncMethodMoved(
                                            context, gamification[index]);
                                      });


                                    });
                                  });
                                });
                              } else {
                                await ctrlTask
                                    .putDetailMissionData(
                                    missionDatum: gamification[index]
                                        .chapterData
                                        ?.single
                                        .missionData
                                        ?.single ??
                                        MissionDatum(),
                                    listGamification: gamification,
                                    gamificationResponseRemote:
                                    gamification[index])
                                    .whenComplete(() async {
                                  await putData().whenComplete(() async {
                                    myAsyncMethodMoved(
                                        context, gamification[index]);
                                  });
                                });
                              }
                            },
                            child: Text("View",
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.paragraph)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


}
