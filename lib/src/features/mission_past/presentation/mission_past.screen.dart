import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/mission_past/domain/mission_past_response.remote.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/controller/mission_past.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../constants/constant.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/refreshable_starter_widget.dart';
import '../../task/presentation/controller/task.controller.dart';

class MissionPastScreen extends ConsumerStatefulWidget {
  const MissionPastScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MissionPastScreenState();
}

Future<void> myAsyncMethodMoved(
    BuildContext context, MissionPastResponseRemote missionPast) async {
  //context.goNamed(detailMissionEtamkawa);
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
          final listMissionPast = ref.watch(listMissionPastResponseRemoteState);
          debugPrint(listMissionPast.toString());
          return AsyncValueWidget(
              value: ref.watch(taskControllerProvider),
              data: (data) {
                return Column(
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
                                        index, ctrl, listMissionPast);
                                  } else {
                                    return Container();
                                  }
                                },
                                childCount: listMissionPast.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }

  Widget _buildListItem(int index, MissionPastController ctrl,
      List<MissionPastResponseRemote> missionPast) {
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
                                    color:
                                        (missionPast[index].missionStatusCode ==
                                                3)
                                            ? ColorTheme.danger100
                                            : ColorTheme.primary100),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 4.h),
                                  child: Text(missionPast[index].missionStatus!,
                                      style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.paragraph,
                                          fontColor: (missionPast[index]
                                                      .missionStatusCode ==
                                                  3)
                                              ? ColorTheme.danger500
                                              : ColorTheme.primary500)),
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
                                      '${missionPast[index].missionReward.toString()} pts',
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
                                  'Submitted at: ${CommonUtils.formattedDateHours(missionPast[index].submittedDate ?? DateTime.now().toString())}',
                                  style: SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.small,
                                      fontColor: ColorTheme.neutral500)
                                  //TextStyle(fontSize: 11.sp),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      if (missionPast[index].missionStatusCode != 3)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(ImageConstant.iconValidated,
                                  width: 16.sp,
                                  height: 16.sp,
                                  package: Constant.moduleEtamkawa),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                    'Validated at: ${CommonUtils.formattedDateHours(missionPast[index].completedDate ?? DateTime.now().toString())}',
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
                              // if ((missionPast[index].missionStatusCode ?? 0) >
                              //     0) {
                              //   await ctrlTask
                              //       .putDetailMissionData(
                              //           missionDatum: missionPast[index]
                              //                   .chapterData
                              //                   ?.single
                              //                   .missionData
                              //                   ?.single ??
                              //               MissionMissionPastDatum(),
                              //           listGamification: missionPast,
                              //           gamificationResponseRemote:
                              //               missionPast[index])
                              //       .whenComplete(() async {
                              //     await putData().whenComplete(() async {
                              //       ref.refresh(taskControllerProvider);
                              //       await ctrlTask
                              //           .currentQuestion(
                              //               employeeMissionId:
                              //                   missionPast[index]
                              //                           .employeeMissionId ??
                              //                       0)
                              //           .whenComplete(() async {
                              //         await putCurrentAnswerFinal()
                              //             .whenComplete(() {
                              //           myAsyncMethodMoved(
                              //               context, missionPast[index]);
                              //         });
                              //       });
                              //     });
                              //   });
                              // } else {
                              //   await ctrlTask
                              //       .putDetailMissionData(
                              //           missionDatum: missionPast[index]
                              //                   .chapterData
                              //                   ?.single
                              //                   .missionData
                              //                   ?.single ??
                              //               MissionMissionPastDatum(),
                              //           listGamification: missionPast,
                              //           gamificationResponseRemote:
                              //               missionPast[index])
                              //       .whenComplete(() async {
                              //     await putData().whenComplete(() async {
                              //       myAsyncMethodMoved(
                              //           context, missionPast[index]);
                              //     });
                              //   });
                              // }
                              myAsyncMethodMoved(context, missionPast[index]);
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
