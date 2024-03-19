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
import '../../task/presentation/controller/task.controller.dart';

enum TypeListMission { inProgress, assigned, past }

class MissionScreen extends ConsumerStatefulWidget {
  const MissionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MissionScreenState();
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
          return Column(
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
                      const TabBar(
                        tabs: [
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
                                itemCount: listMissionInProgress.length,
                                itemBuilder: (context, index) {
                                  return _buildListItem(
                                      index,
                                      ctrl,
                                      ctrlTask,
                                      listMissionInProgress,
                                      gamificationInProgress);
                                },
                              ), // Tab 2 content
                              ListView.builder(
                                itemCount: listMissionAssigned.length,
                                itemBuilder: (context, index) {
                                  return _buildListItem(
                                      index,
                                      ctrl,
                                      ctrlTask,
                                      listMissionAssigned,
                                      gamificationAssigned);
                                },
                              ),
                              // Tab 3 content
                              ListView.builder(
                                itemCount: listMissionPast.length,
                                itemBuilder: (context, index) {
                                  return _buildListItem(index, ctrl, ctrlTask,
                                      listMissionPast, gamificationPast);
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
        },
      ),
    );
  }

  Widget _buildListItem(
      int index,
      MissionController ctrl,
      TaskController ctrlTask,
      List<MissionDatum> listData,
      GamificationResponseRemote gamification) {
    return Card(
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
                                color: (gamification.missionStatusId == 0)
                                    ? ColorTheme.neutral300
                                    : ColorTheme.secondary100),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 4.h),
                              child: Text(
                                gamification.missionStatus!,
                                style: 
                                TextStyle(
                                    fontSize: 12.sp,
                                    color: (gamification.missionStatusId == 0)
                                        ? ColorTheme.neutral600
                                        : ColorTheme.secondary500),
                              ),
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
                                '${listData[index].missionReward.toString()} pts',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ),
                          ],
                        ),
                      ]),
                  Text(
                    gamification.chapterData![0].chapterName!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: ColorTheme.neutral600),
                  ),
                  Text('Mission: ${listData[index].missionName!}',
                      style: TextStyle(fontSize: 12.sp)),
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
                            'Due: ${CommonUtils.formattedDateHours(gamification.dueDate ?? DateTime.now().toString())}',
                            style: TextStyle(fontSize: 11.sp),
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
                        onPressed: () {
                          ctrlTask.putDetailMissionData(
                              missionDatum: listData[index],
                              listMission: listData,
                              gamificationResponseRemote: gamification);
                          context.goNamed(detailMissionEtamkawa, extra: {
                            Constant.gamification: (gamification),
                          });

                          // context.goNamed(detailMissionEtamkawa);
                        },
                        child: const Text("View"),
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
  }
}
