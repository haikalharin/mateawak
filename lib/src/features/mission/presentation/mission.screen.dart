import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/controller/mission_past.controller.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/mission_past.screen.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../constants/constant.dart';
import '../../../constants/telematry.constant.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/refreshable_starter_widget.dart';
import '../../../shared_component/visibility_detector_telematry.dart';
import '../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../task/presentation/controller/task.controller.dart';
import '../../telematry/presentation/controller/telematry.controller.dart';

enum TypeListMission { inProgress, assigned, past }

class MissionScreen extends ConsumerStatefulWidget {
  const MissionScreen({super.key, this.currentIndex});

  final int? currentIndex;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MissionScreenState();
}

Future<void> myAsyncMethodMoved(
    BuildContext context, GamificationResponseRemote gamification) async {
  if ((gamification.missionStatusCode ?? 0) > 0) {
    context.goNamed(taskMissionEtamkawa, pathParameters: {'CurrentIndex': '2'});
  } else {
    context
        .goNamed(detailMissionEtamkawa, pathParameters: {'CurrentIndex': '2'});
  }
}

class _MissionScreenState extends ConsumerState<MissionScreen>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;
  List<Widget> listTab = [
    Tab(text: EtamKawaTranslate.assigned),
    Tab(text: EtamKawaTranslate.inProgress),
    Tab(text: EtamKawaTranslate.past),
  ];

  @override
  void initState() {
    super.initState();
    if (widget.currentIndex == 9) {
      _selectedIndex = 2;
    }
    _controller = TabController(length: listTab.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(activeWidgetProvider, (previous, now) {
      if (previous != now) {
        if (now != null) {
          ref
              .read(telematryControllerProvider.notifier)
              .insertInitTelematryData(now);
        }
        if (previous != null) {
          ref
              .read(telematryControllerProvider.notifier)
              .completeTelematryDataThenSend(
                  previous, GoRouterState.of(context).uri.toString());
        }
      }
    });
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final ctrl = ref.watch(missionControllerProvider.notifier);
      final ctrlTask = ref.watch(taskControllerProvider.notifier);
      final gamificationInProgress = ref.watch(gamificationInProgressState);
      final gamificationAssigned = ref.watch(gamificationAssignedState);
      final gamificationPast = ref.watch(gamificationPastState);
      final submitStatus = ref.watch(submitStatusMissionState);
      final submitStatusBgServices =
          ref.watch(submitStatusMissionBgServicesState);
      final isInit = ref.watch(isInitMissionState);
      final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
      final isFromPageHistory = ref.read(isFromHistory);
      return AsyncValueWidget(
          value: ref.watch(missionControllerProvider),
          data: (data) {
            return Scaffold(
                body: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        readOnly: _selectedIndex == 2 && isConnectionAvailable,
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                          hintText: "${EtamKawaTranslate.search}...",
                          suffixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onTap: () {
                          if (_selectedIndex == 2 && isConnectionAvailable) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text(EtamKawaTranslate.availableSoon)));
                          }
                        },
                        onChanged: (keyword) {
                          ctrl.filterMissionList(keyword);
                        },
                      ),
                    ),
                    Expanded(
                      child: DefaultTabController(
                        length: 3,
                        initialIndex: isFromPageHistory ? 2 : 0,
                        child: Column(
                          children: [
                            TabBar(
                              onTap: (index) {
                                switch (index) {
                                  case 0:
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                    submitStatus != SubmitStatus.inProgress &&
                                        submitStatusBgServices !=
                                            SubmitStatus.inProgress
                                        ? ctrl
                                        .backgroundServiceEvent(
                                        isFetchMission: true,
                                        isSubmitAnswer: true)
                                        .whenComplete(() {
                                      ref.refresh(
                                          missionControllerProvider);
                                    })
                                        : null;

                                    break;
                                  case 1:
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                    break;
                                  case 2:
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                    break;
                                }
                              },
                              labelStyle: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.medium),
                              unselectedLabelColor: ColorTheme.neutral500,
                              tabs: listTab,
                            ),
                            Expanded(
                              child: Container(
                                color: ColorTheme.neutral100,
                                child: TabBarView(
                                  children: [
                                    // Tab 1 content
                                    RefreshableStarterWidget(
                                      onRefresh: () async {
                                        submitStatus !=
                                                    SubmitStatus.inProgress &&
                                                submitStatusBgServices !=
                                                    SubmitStatus.inProgress
                                            ? ctrl.getMissionList()
                                            : null;
                                      },
                                      slivers: [
                                        SliverList(
                                          delegate: SliverChildBuilderDelegate(
                                            (context, index) {
                                              // Build items for Tab 1
                                              if (gamificationAssigned
                                                  .isNotEmpty) {
                                                return _buildListItem(
                                                    index,
                                                    ctrl,
                                                    ctrlTask,
                                                    gamificationAssigned);
                                              } else {
                                                return Container();
                                              }

                                            },
                                            childCount:
                                                gamificationAssigned.length,
                                          ),
                                        ),
                                        SliverToBoxAdapter(
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(
                                              vertical: 10.0,
                                            ),
                                            // Sesuaikan margin sesuai kebutuhan
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Center(
                                                  child: Text(
                                                    gamificationInProgress
                                                            .isNotEmpty
                                                        ? EtamKawaTranslate
                                                            .allEntriesLoaded
                                                        : EtamKawaTranslate
                                                            .noData,
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                      typographyType:
                                                          TypographyType.body,
                                                      fontColor:
                                                          ColorTheme.neutral600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Tab 2 content
                                    RefreshableStarterWidget(
                                      onRefresh: () async {
                                        ref.refresh(taskControllerProvider);
                                        ctrl.getMissionList();
                                      },
                                      slivers: [
                                        SliverList(
                                          delegate: SliverChildBuilderDelegate(
                                            (context, index) {
                                              // Build items for Tab 2
                                              if (gamificationInProgress
                                                  .isNotEmpty) {
                                                return _buildListItem(
                                                    index,
                                                    ctrl,
                                                    ctrlTask,
                                                    gamificationInProgress);
                                              } else {
                                                return Container();
                                              }
                                            },
                                            childCount:
                                                gamificationInProgress.length,
                                          ),
                                        ),
                                        SliverToBoxAdapter(
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(
                                              vertical: 10.0,
                                            ),
                                            // Sesuaikan margin sesuai kebutuhan
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Center(
                                                  child: Text(
                                                    gamificationAssigned
                                                            .isNotEmpty
                                                        ? EtamKawaTranslate
                                                            .allEntriesLoaded
                                                        : EtamKawaTranslate
                                                            .noData,
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                      typographyType:
                                                          TypographyType.body,
                                                      fontColor:
                                                          ColorTheme.neutral600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Tab 3 content
                                    isConnectionAvailable
                                        ? const MissionPastScreen()
                                        : RefreshableStarterWidget(
                                            onRefresh: () async {
                                              ctrl.getMissionList();
                                            },
                                            slivers: [
                                              SliverList(
                                                delegate:
                                                    SliverChildBuilderDelegate(
                                                  (context, index) {
                                                    // Build items for Tab 3
                                                    if (gamificationPast
                                                        .isNotEmpty) {
                                                      return _buildListItem(
                                                          index,
                                                          ctrl,
                                                          ctrlTask,
                                                          gamificationPast);
                                                    } else {
                                                      return Container();
                                                    }
                                                  },
                                                  childCount:
                                                      gamificationPast.length,
                                                ),
                                              ),
                                              SliverToBoxAdapter(
                                                child: Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10.0,
                                                  ),
                                                  // Sesuaikan margin sesuai kebutuhan
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      child: Center(
                                                        child: Text(
                                                          gamificationPast
                                                                  .isNotEmpty
                                                              ? EtamKawaTranslate
                                                                  .allEntriesLoaded
                                                              : EtamKawaTranslate
                                                                  .noData,
                                                          style: SharedComponent
                                                              .textStyleCustom(
                                                            typographyType:
                                                                TypographyType
                                                                    .body,
                                                            fontColor:
                                                                ColorTheme
                                                                    .neutral600,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
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
                ),
                submitStatus == SubmitStatus.inProgress && isInit == true
                    ? Container(
                        color: Colors.white.withAlpha(130),
                        child: const Center(child: CircularProgressIndicator()))
                    : Container()
              ],
            ));
          });
    });
  }

  Widget _buildListItem(int index, MissionController ctrl,
      TaskController ctrlTask, List<GamificationResponseRemote> gamification) {
    Future<void> putCurrentAnswerFinal() async {
      ref.watch(currentTypeTaskState.notifier).state = ctrlTask.currentTypeTask;
      if (ctrlTask.currentTypeTask == TaskType.STX.name ||
          ctrlTask.currentTypeTask == TaskType.ASM.name) {
        ref.watch(listSelectOptionStringState.notifier).state =
            ctrlTask.listSelectOptionCurrentString;
        ref.watch(attachmentPathState.notifier).state = ctrlTask.attachment;
        ref.watch(attachmentNameState.notifier).state = ctrlTask.attachmentName;
      } else {
        ref.watch(listSelectOptionState.notifier).state =
            ctrlTask.listSelectOptionCurrent;
      }
    }

    return VisibilityDetectorTelematry(
      widgetName: _selectedIndex == 0
          ? TelematryConstant.assignedMission
          : _selectedIndex == 1
              ?  TelematryConstant.inProgressMission
              : _selectedIndex == 2
                  ? TelematryConstant.pastMission
                  : '',
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.r)),
                                      color: EtamKawaUtils()
                                          .getMissionStatusBGColorByCode(
                                              gamification[index]
                                                  .missionStatusCode
                                                  .toString())),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 4.h),
                                    child: Text(
                                        EtamKawaUtils().getMissionStatus(
                                            gamification[index].missionStatus!),
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.small,
                                            fontColor: EtamKawaUtils()
                                                .getMissionStatusFontColorByCode(
                                                    gamification[index]
                                                        .missionStatusCode
                                                        .toString()))),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(3, 0, 0, 0),
                                    child: (gamification
                                                    .first.missionStatusCode ??
                                                0) <
                                            2
                                        ? Text(
                                            '${gamification[index].chapterData?.single.missionData?.single.missionReward.toString()} ${EtamKawaTranslate.pts}',
                                            style: SharedComponent
                                                .textStyleCustom(
                                                    typographyType:
                                                        TypographyType
                                                            .paragraph,
                                                    fontColor: ColorTheme
                                                        .neutral500))
                                        : Text('0 ${EtamKawaTranslate.pts}',
                                            style:
                                                SharedComponent.textStyleCustom(
                                                    typographyType:
                                                        TypographyType
                                                            .paragraph,
                                                    fontColor:
                                                        ColorTheme.neutral500)),
                                  ),
                                ],
                              ),
                            ]),
                        Text(
                            gamification[index]
                                    .chapterData
                                    ?.single
                                    .missionData
                                    ?.single
                                    .missionName ??
                                '',
                            style: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.largeH5,
                                fontColor: ColorTheme.neutral600)),
                        Text(
                            gamification[index].chapterData?[0].chapterName ??
                                '',
                            style: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.paragraph,
                                fontColor: ColorTheme.neutral500)),
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
                                    '${EtamKawaTranslate.due}: ${CommonUtils.formattedDateHoursUtcToLocal(gamification[index].dueDate ?? DateTime.now().toString())}',
                                    style: SharedComponent.textStyleCustom(
                                        typographyType: TypographyType.small,
                                        fontColor: ColorTheme.neutral500)),
                              ),
                            ],
                          ),
                        ),
                        (gamification.first.missionStatusCode ?? 0) < 2
                            ? Padding(
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
                                      if ((gamification[index]
                                                  .missionStatusCode ??
                                              0) >
                                          0) {
                                        await ctrl
                                            .putDetailMissionData(
                                                missionDatum:
                                                    gamification[index]
                                                            .chapterData
                                                            ?.single
                                                            .missionData
                                                            ?.single ??
                                                        MissionDatum(),
                                                listGamification: gamification,
                                                gamificationResponseRemote:
                                                    gamification[index])
                                            .whenComplete(() async {
                                          ref.refresh(taskControllerProvider);
                                          await ctrlTask
                                              .currentQuestion(
                                                  employeeMissionId: gamification[
                                                              index]
                                                          .employeeMissionId ??
                                                      0,
                                                  pagePosition:
                                                      PagePosition.CURRENT)
                                              .whenComplete(() async {
                                            await putCurrentAnswerFinal()
                                                .whenComplete(() {
                                              myAsyncMethodMoved(
                                                  context, gamification[index]);
                                            });
                                          });
                                        });
                                      } else {
                                        await ctrl
                                            .putDetailMissionData(
                                                missionDatum:
                                                    gamification[index]
                                                            .chapterData
                                                            ?.single
                                                            .missionData
                                                            ?.single ??
                                                        MissionDatum(),
                                                listGamification: gamification,
                                                gamificationResponseRemote:
                                                    gamification[index])
                                            .whenComplete(() async {
                                          ref.refresh(taskControllerProvider);
                                          await ctrlTask
                                              .clearData()
                                              .whenComplete(() async {
                                            myAsyncMethodMoved(
                                                context, gamification[index]);
                                          });
                                        });
                                      }
                                    },
                                    child: Text(EtamKawaTranslate.view,
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.paragraph)),
                                  ),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
