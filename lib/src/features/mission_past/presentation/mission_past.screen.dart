import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/features/mission_past/domain/mission_past_response.remote.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/controller/mission_past.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../module_etamkawa.dart';
import '../../../constants/constant.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/refreshable_starter_widget.dart';
import '../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../task/presentation/controller/task.controller.dart';

class MissionPastScreen extends ConsumerStatefulWidget {
  const MissionPastScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MissionPastScreenState();
}

Future<void> myAsyncMethodMoved(BuildContext context) async {
  context.goNamed(detailMissionPastEtamkawa);
}

class _MissionPastScreenState extends ConsumerState<MissionPastScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final ctrl = ref.watch(missionPastControllerProvider.notifier);
          final ctrlPastMission =
              ref.watch(missionPastControllerProvider.notifier);
          final ctrlMission = ref.watch(missionControllerProvider.notifier);
          final listMissionPast = ref.watch(listMissionPastResponseRemoteState);
          debugPrint(listMissionPast.toString());
          final ctrlTask = ref.read(taskControllerProvider.notifier);
          final gamificationDetail = ref.watch(gamificationDetailState);
          final submitStatusDetail = ref.watch(submitStatusDetailState);
          return AsyncValueWidget(
              value: ref.watch(missionPastControllerProvider),
              data: (data) {
                return Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: ColorTheme.neutral100,
                            child: RefreshableStarterWidget(
                              onRefresh: () async {
                                ctrl.getMissionPastList();
                              },
                              slivers: [
                                SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                    (context, index) {
                                      if (listMissionPast.isNotEmpty) {
                                        return _buildListItem(
                                            index,
                                            ctrl,
                                            ctrlTask,
                                            ctrlPastMission,
                                            ctrlMission,
                                            gamificationDetail,
                                            listMissionPast);
                                      } else {
                                        return Container();
                                      }
                                    },
                                    childCount: listMissionPast.length,
                                  ),
                                ),
                                SliverToBoxAdapter(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 10.0,
                                    ), // Sesuaikan margin sesuai kebutuhan
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                          child: Text(
                                            listMissionPast.isNotEmpty ? EtamKawaTranslate.allEntriesLoaded : EtamKawaTranslate.noData,
                                            style:
                                                SharedComponent.textStyleCustom(
                                              typographyType:
                                                  TypographyType.body,
                                              fontColor: ColorTheme.neutral600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    submitStatusDetail == SubmitStatus.inProgress
                        ? Container(
                            color: Colors.white.withAlpha(130),
                            child: const Center(
                                child: CircularProgressIndicator()))
                        : Container()
                  ],
                );
              });
        },
      ),
    );
  }

  Widget _buildListItem(
      int index,
      MissionPastController ctrl,
      TaskController ctrlTask,
      MissionPastController ctrlPastMission,
      MissionController ctrlMission,
      GamificationResponseRemote gamificationResponseRemote,
      List<MissionPastResponseRemote> missionPast) {
    Future<void> putCurrentAnswerFinal() async {
      ref.watch(currentTypeTaskState.notifier).state = ctrl.currentTypeTask;
      if (ctrl.currentTypeTask == TaskType.STX.name ||
          ctrl.currentTypeTask == TaskType.ASM.name) {
        ref.watch(listSelectOptionStringState.notifier).state =
            ctrl.listSelectOptionCurrentString;
        ref.watch(attachmentPathState.notifier).state = ctrl.attachment;
        ref.watch(attachmentNameState.notifier).state = ctrl.attachmentName;
      } else {
        ref.watch(listSelectOptionState.notifier).state =
            ctrl.listSelectOptionCurrent;
      }
    }

    return Consumer(
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.r)),
                                    color: EtamKawaUtils()
                                        .getMissionStatusBGColorByCode(
                                            missionPast[index]
                                                    .missionStatusCode ??
                                                '')),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 4.h),
                                  child: Text(
                                      EtamKawaUtils().getMissionStatus(
                                          missionPast[index].missionStatus!),
                                      style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.paragraph,
                                          fontColor: EtamKawaUtils()
                                              .getMissionStatusFontColorByCode(
                                                  missionPast[index]
                                                          .missionStatusCode ??
                                                      ''))),
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
                                  child: Text(
                                      '${missionPast[index].missionReward.toString()} ${EtamKawaTranslate.pts}',
                                      style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.paragraph,
                                          fontColor: ColorTheme.neutral500)
                                      //TextStyle(fontSize: 12.sp),
                                      ),
                                ),
                              ],
                            ),
                          ]),
                      Text(missionPast[index].missionName ?? '',
                          style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.largeH5,
                              fontColor: ColorTheme.neutral600)),
                      Text(missionPast[index].chapterName ?? '',
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
                                  '${EtamKawaTranslate.submittedAt}: ${CommonUtils.formattedDateHoursUtcToLocal(missionPast[index].submittedDate ?? DateTime.now().toString())}',
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
                              await ctrlPastMission
                                  .getDetailMission(
                                      employeeMissionId: missionPast[index]
                                              .employeeMissionId ??
                                          0)
                                  .whenComplete(() async {
                                await putCurrentAnswerFinal().whenComplete(() {
                                  myAsyncMethodMoved(context);
                                });
                              });
                            },
                            child: Text(EtamKawaTranslate.view,
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
