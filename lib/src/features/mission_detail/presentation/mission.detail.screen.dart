import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/task/presentation/controller/task.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';

class MissionDetailScreen extends ConsumerStatefulWidget {
  const MissionDetailScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MissionDetailScreenState();
}

class _MissionDetailScreenState extends ConsumerState<MissionDetailScreen> {
  final _scrollController = ScrollController();
  double progress = 0.0;

  @override
  void initState() {
    _scrollController.addListener(
      () {
        ref.read(isScrollProvider.notifier).state =
            _scrollController.position.pixels > 100.h;
      },
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
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final gamification = ref.watch(gamificationState.notifier).state;
        //final ctrlTask = ref.watch(taskControllerProvider.notifier);
        final missionType = gamification
            .chapterData?.single.missionData?.single.missionTypeName;
        return AsyncValueWidget(
          value: ref.watch(taskControllerProvider),
          data: (data) {
            return WillPopScope(
                onWillPop: () {
                  // context.pop();
                  // context.pop();
                  return Future.value(false);
                },
                child: Scaffold(
                    backgroundColor: ColorTheme.neutral100,
                    appBar: SharedComponentEtamkawa.appBar(
                      backgroundColor: ColorTheme.backgroundWhite,
                      titleColor: ColorTheme.textDark,
                      context: context,
                      title: EtamKawaTranslate.missionDetail,
                      brightnessIconStatusBar: Brightness.light,
                    ),
                    body: Column(children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorTheme.strokeTertiary,
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.r),
                              bottomRight: Radius.circular(10.r)),
                        ),
                        elevation: 0,
                        margin: const EdgeInsets.all(0),
                        child: Container(
                          margin: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          gamification.chapterData?.single
                                                  .chapterName ??
                                              '',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style:
                                              SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.largeH5,
                                            fontColor: ColorTheme.neutral600,
                                          ),
                                        ),
                                        Text(
                                          '${EtamKawaTranslate.mission}: ${gamification.chapterData?.single.missionData?.single.missionName ?? ''}',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2, // Adjust as needed
                                          style:
                                              SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.paragraph,
                                            fontColor: ColorTheme.neutral500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.r)),
                                        color: EtamKawaUtils()
                                            .getMissionStatusBGColorByCode(
                                                gamification.missionStatusCode
                                                    .toString())),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 4.h),
                                      child: Text(
                                        EtamKawaUtils().getMissionStatus(
                                            gamification.missionStatus ?? ''),
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.small,
                                            fontColor: EtamKawaUtils()
                                                .getMissionStatusFontColorByCode(
                                                    gamification
                                                        .missionStatusCode
                                                        .toString())),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.sp,
                              ),
                              Text(
                                '${EtamKawaTranslate.chapterGoals}:',
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.bold,
                                    fontColor: ColorTheme.neutral600),
                              ),
                              Text(
                                gamification.chapterData?.single.chapterGoal ??
                                    '',
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.paragraph,
                                    fontColor: ColorTheme.neutral500),
                              ),
                              SizedBox(
                                height: 15.sp,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${EtamKawaTranslate.focusBehaviour}: ',
                                    style: SharedComponent.textStyleCustom(
                                        typographyType: TypographyType.bold,
                                        fontColor: ColorTheme.neutral600),
                                  ),
                                  Text(
                                    gamification.chapterData?.single.missionData
                                            ?.single.competencyName ??
                                        '',
                                    style: SharedComponent.textStyleCustom(
                                        typographyType:
                                            TypographyType.paragraph,
                                        fontColor: ColorTheme.neutral500),
                                  ),
                                  const Spacer(),
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.r)),
                                        color: ColorTheme.primary100),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 4.h),
                                      child: Text(
                                        gamification
                                                .chapterData
                                                ?.single
                                                .missionData
                                                ?.single
                                                .peopleCategoryName ??
                                            '',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.paragraph,
                                            fontColor: ColorTheme.neutral500),
                                      ),
                                    ),
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
                                  child: IntrinsicHeight(
                                    child: gamification
                                                .chapterData
                                                ?.first
                                                .missionData
                                                ?.first
                                                .missionTypeName !=
                                            'Performance'
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(height: 10.h),
                                                  SvgPicture.asset(
                                                      ImageConstant.iconReward,
                                                      width: 16.sp,
                                                      height: 20.sp,
                                                      package: Constant
                                                          .moduleEtamkawa),
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    EtamKawaTranslate.rewards,
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                            typographyType:
                                                                TypographyType
                                                                    .bold,
                                                            fontColor: ColorTheme
                                                                .neutral600),
                                                  ),
                                                  Text(
                                                    '${(gamification.chapterData?.single.missionData?.single.missionReward ?? 0).toString()} total',
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                            typographyType:
                                                                TypographyType
                                                                    .paragraph,
                                                            fontColor: ColorTheme
                                                                .neutral500),
                                                  ),
                                                  SizedBox(height: 10.h),
                                                ],
                                              ),
                                              if (missionType != 'Assignment')
                                                addVerticalDivider(),
                                              if (missionType != 'Assignment')
                                                addTaskIfQuizz(gamification
                                                        .chapterData
                                                        ?.single
                                                        .missionData
                                                        ?.single
                                                        .taskData
                                                        ?.length ??
                                                    0),
                                              // addVerticalDivider(),
                                              // Column(
                                              //   mainAxisAlignment:
                                              //       MainAxisAlignment.center,
                                              //   mainAxisSize: MainAxisSize.min,
                                              //   children: [
                                              //     SizedBox(height: 10.h),
                                              //     SvgPicture.asset(
                                              //         ImageConstant.iconDuration,
                                              //         width: 16.sp,
                                              //         height: 20.sp,
                                              //         package: Constant.moduleEtamkawa),
                                              //     const SizedBox(
                                              //       height: 8,
                                              //     ),
                                              //     Text(
                                              //       EtamKawaTranslate.duration,
                                              //       style:
                                              //           SharedComponent.textStyleCustom(
                                              //               typographyType:
                                              //                   TypographyType.bold,
                                              //               fontColor:
                                              //                   ColorTheme.neutral600),
                                              //     ),
                                              //     Text(
                                              //       '${CommonUtils.daysBetween(DateTime.now(), DateTime.parse(gamification.dueDate ?? '2021-01-30T00:00:00'))} ${EtamKawaTranslate.days}',
                                              //       style:
                                              //           SharedComponent.textStyleCustom(
                                              //               typographyType:
                                              //                   TypographyType
                                              //                       .paragraph,
                                              //               fontColor:
                                              //                   ColorTheme.neutral500),
                                              //     ),
                                              //     SizedBox(height: 10.h),
                                              //   ],
                                              // ),
                                            ],
                                          ):  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            children: [
                                              gamification.missionStatusCode ==
                                                  99
                                                  ? Expanded(
                                                flex: 1,
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .center,
                                                  mainAxisSize:
                                                  MainAxisSize
                                                      .max,
                                                  children: [
                                                    SvgPicture.asset(
                                                      ImageConstant
                                                          .iconAccuracy,
                                                      width: 16.sp,
                                                      height: 20.sp,
                                                      package: Constant
                                                          .moduleEtamkawa,
                                                    ),
                                                    const SizedBox(
                                                        height: 6),
                                                    Text(
                                                      EtamKawaTranslate.gainedRewards,
                                                      textAlign:
                                                      TextAlign
                                                          .center,
                                                      style: SharedComponent
                                                          .textStyleCustom(
                                                        typographyType:
                                                        TypographyType
                                                            .bold,
                                                        fontColor:
                                                        ColorTheme
                                                            .neutral600,
                                                      ),
                                                    ),
                                                    Text(
                                                      '${(gamification.rewardGained)} total',
                                                      style: SharedComponent
                                                          .textStyleCustom(
                                                        typographyType:
                                                        TypographyType
                                                            .paragraph,
                                                        fontColor:
                                                        ColorTheme
                                                            .neutral500,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        height: 10.h),
                                                  ],
                                                ),
                                              )
                                                  : Column(),
                                              // addVerticalDivider(),
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .center,
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    SvgPicture.asset(
                                                      ImageConstant
                                                          .iconReward,
                                                      width: 16.sp,
                                                      height: 20.sp,
                                                      package: Constant
                                                          .moduleEtamkawa,
                                                    ),
                                                    const SizedBox(
                                                        height: 6),
                                                    Text(
                                                      EtamKawaTranslate
                                                          .maxRewards,
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: SharedComponent
                                                          .textStyleCustom(
                                                        typographyType:
                                                        TypographyType
                                                            .bold,
                                                        fontColor:
                                                        ColorTheme
                                                            .neutral600,
                                                      ),
                                                    ),
                                                    Text(
                                                      '${(gamification.chapterData?.single.missionData?.single.missionReward ?? 0).toString()} total',
                                                      style: SharedComponent
                                                          .textStyleCustom(
                                                        typographyType:
                                                        TypographyType
                                                            .paragraph,
                                                        fontColor:
                                                        ColorTheme
                                                            .neutral500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        addVerticalDivider(),
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Periode',
                                                style: SharedComponent
                                                    .textStyleCustom(
                                                  typographyType:
                                                  TypographyType
                                                      .bold,
                                                  fontColor:
                                                  ColorTheme.neutral600,
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              addHorizontalDivider(),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .center,
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        SvgPicture.asset(
                                                          ImageConstant
                                                              .iconStartDate,
                                                          width: 16.sp,
                                                          height: 20.sp,
                                                          package: Constant
                                                              .moduleEtamkawa,
                                                        ),
                                                        const SizedBox(
                                                            height: 6),
                                                        Text(
                                                          EtamKawaTranslate
                                                              .startDate,
                                                          textAlign:
                                                          TextAlign
                                                              .center,
                                                          style: SharedComponent
                                                              .textStyleCustom(
                                                            typographyType:
                                                            TypographyType
                                                                .bold,
                                                            fontColor:
                                                            ColorTheme
                                                                .neutral600,
                                                          ),
                                                        ),
                                                        Text(
                                                          CommonUtils.formattedDateHoursUtcToLocal(
                                                              gamification
                                                                  .startedDate!,
                                                              withHourMinute:
                                                              false),
                                                          style: SharedComponent
                                                              .textStyleCustom(
                                                            typographyType:
                                                            TypographyType
                                                                .paragraph,
                                                            fontColor:
                                                            ColorTheme
                                                                .neutral500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                    90.h, // Set this to your desired height
                                                    child: VerticalDivider(
                                                      thickness: 1.sp,
                                                      width: 1.sp,
                                                      color: ColorTheme
                                                          .strokeTertiary,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        SvgPicture.asset(
                                                          ImageConstant
                                                              .iconEndDate,
                                                          width: 16.sp,
                                                          height: 20.sp,
                                                          package: Constant
                                                              .moduleEtamkawa,
                                                        ),
                                                        const SizedBox(
                                                            height: 6),
                                                        Text(
                                                          EtamKawaTranslate
                                                              .endDate,
                                                          textAlign:
                                                          TextAlign
                                                              .center,
                                                          style: SharedComponent
                                                              .textStyleCustom(
                                                            typographyType:
                                                            TypographyType
                                                                .bold,
                                                            fontColor:
                                                            ColorTheme
                                                                .neutral600,
                                                          ),
                                                        ),
                                                        Text(
                                                          CommonUtils.formattedDateHoursUtcToLocal(
                                                              gamification
                                                                  .dueDate!,
                                                              withHourMinute:
                                                              false),
                                                          style: SharedComponent
                                                              .textStyleCustom(
                                                            typographyType:
                                                            TypographyType
                                                                .paragraph,
                                                            fontColor:
                                                            ColorTheme
                                                                .neutral500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: ColorTheme.strokeTertiary,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                            ),
                            elevation: 0,
                            margin: const EdgeInsets.all(15),
                            child: Container(
                                width: MediaQuery.sizeOf(context).width,
                                margin: const EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      EtamKawaTranslate.beforeYouStart,
                                      style: SharedComponent.textStyleCustom(
                                          typographyType: TypographyType.bold,
                                          fontColor: ColorTheme.neutral600),
                                    ),
                                    Text(
                                        gamification
                                                .chapterData
                                                ?.single
                                                .missionData
                                                ?.single
                                                .missionInstruction ??
                                            '',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.paragraph,
                                            fontColor: ColorTheme.neutral600)),
                                  ],
                                )),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorTheme.strokeTertiary,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.r),
                              topRight: Radius.circular(10.r)),
                        ),
                        elevation: 0,
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        context.goNamed(taskMissionEtamkawa,
                                            pathParameters: {
                                              'CurrentIndex': '2'
                                            },
                                            extra: {
                                              Constant.listTask: (gamification
                                                  .chapterData
                                                  ?.single
                                                  .missionData
                                                  ?.single
                                                  .taskData)
                                            });
                                      },
                                      child: Text( gamification
                                          .chapterData
                                          ?.single
                                          .missionData
                                          ?.single
                                          .missionTypeName == 'Performance'?EtamKawaTranslate.seeDetails :EtamKawaTranslate.start,
                                          style:
                                              SharedComponent.textStyleCustom(
                                                  typographyType: TypographyType
                                                      .paragraph)))),
                            ),
                          ],
                        ),
                      )
                    ])));
          },
        );
      },
    );
  }
}

Widget addHorizontalDivider() {
  return Divider(
    thickness: 1.h,
    height: 1.h,
    color: ColorTheme.strokeTertiary,
  );
}

Widget addVerticalDivider() {
  return VerticalDivider(
    width: 1.sp,
    thickness: 1.sp,
    color: ColorTheme.strokeTertiary,
  );
}

Widget addTaskIfQuizz(int totalTask) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      const SizedBox(
        height: 10,
      ),
      SvgPicture.asset(ImageConstant.iconTask,
          width: 16.sp, height: 20.sp, package: Constant.moduleEtamkawa),
      const SizedBox(
        height: 5,
      ),
      Text(
        EtamKawaTranslate.task,
        style: SharedComponent.textStyleCustom(
            typographyType: TypographyType.bold,
            fontColor: ColorTheme.neutral600),
      ),
      Text(totalTask.toString(),
          style: SharedComponent.textStyleCustom(
              typographyType: TypographyType.paragraph,
              fontColor: ColorTheme.neutral500)),
    ],
  );
}
