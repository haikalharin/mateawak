import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/shared_component/refreshable_starter_widget.dart';

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
          final listGamification = ref.watch(listGamificationState);
          final listChapter = ref.watch(listChapterState);
          final listMissionInProgress = ref.watch(listMissionInProgressState);
          final listMissionAssigned = ref.watch(listMissionAssignedState);
          final listMissionPast = ref.watch(listMissionPastState);

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
                                    index, ctrl, listMissionInProgress);
                              },
                            ), // Tab 2 content
                            ListView.builder(
                              itemCount: listMissionAssigned.length,
                              itemBuilder: (context, index) {
                                return _buildListItem(
                                    index, ctrl, listMissionAssigned);
                              },
                            ),
                            // Tab 3 content
                            ListView.builder(
                              itemCount: listMissionPast.length,
                              itemBuilder: (context, index) {
                                return _buildListItem(
                                    index, ctrl, listMissionPast);
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

  Widget _buildListItem(
      int index, MissionController ctrl, List<MissionDatum> listData) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(listData[index].name ?? ''),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(listData[index].description ?? ''),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
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
