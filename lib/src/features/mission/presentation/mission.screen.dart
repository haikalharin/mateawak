import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/shared_component/refreshable_starter_widget.dart';

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
          final listGamification = ref.watch(listGamificationState);
          final listChapter = ref.watch(listChapterState);
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
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onFieldSubmitted: (keyword) {},
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(text: 'In Progress'),
                          Tab(text: 'Assigned'),
                          Tab(text: 'Past'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            // Tab 1 content

                            ListView.builder(
                              itemCount: listMissionInProgress.length,
                              itemBuilder: (context, index) {
                                return _buildListItem(
                                    index, ctrl, ctrlTask,
                                    listMissionInProgress,gamificationInProgress);
                              },
                            ), // Tab 2 content
                            ListView.builder(
                              itemCount: listMissionAssigned.length,
                              itemBuilder: (context, index) {
                                return _buildListItem(
                                    index, ctrl, ctrlTask, listMissionAssigned,gamificationAssigned);
                              },
                            ),
                            // Tab 3 content
                            ListView.builder(
                              itemCount: listMissionPast.length,
                              itemBuilder: (context, index) {
                                return _buildListItem(
                                    index, ctrl, ctrlTask, listMissionPast,gamificationPast);
                              },
                            ),
                          ],
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

  Widget _buildListItem(int index, MissionController ctrl,
      TaskController ctrlTask, List<MissionDatum> listData,
      GamificationResponseRemote gamification) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(listData[index].missionName ?? ''),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(listData[index].missionInstruction ?? ''),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        ctrlTask.putDetailMissionData(
                            missionDatum: listData[index],
                            gamificationResponseRemote:gamification);
                        context.goNamed(
                            taskMissionEtamkawa,
                            extra: {
                              Constant.listTask: (listData[index].taskData ??
                                  []),
                            }
                        );

                        // context.goNamed(detailMissionEtamkawa);
                      },
                      child: Text("Button"),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
