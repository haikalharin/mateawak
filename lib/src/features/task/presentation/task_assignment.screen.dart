import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_shared/module_shared.dart';

import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../main_nav/presentation/controller/main_nav.controller.dart';
import 'controller/task.controller.dart';

class TaskAssignmentScreen extends ConsumerStatefulWidget {
  const TaskAssignmentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TaskAssignmentScreenState();
}

class _TaskAssignmentScreenState extends ConsumerState<TaskAssignmentScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final ctrl = ref.watch(taskControllerProvider.notifier);
      final ctrlMission = ref.read(mainNavControllerProvider.notifier);
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
                                      .fetchMissionListLocal()
                                      .whenComplete(() async {
                                  });
                                });
                              })
                            });
                  },
                );
                return Future.value(true);
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
                                onClosed: () async => {
                                      await ctrl
                                          .putAnswerFinal()
                                          .whenComplete(() async {
                                        await ctrl
                                            .changeStatusTask(isDone: false)
                                            .whenComplete(() async {
                                          await ctrlMission
                                              .fetchMissionListLocal()
                                              .whenComplete(() async {
                                          });
                                        });
                                      })
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
                              Column(
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
                        ],
                      ),
                    ),
                    const Expanded(
                            child: TaskAssignmentScreen(),
                          )
                  ],
                ),
              ),
            );
          });
    });
  }
}
