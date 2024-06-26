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

import '../../../constants/function_utils.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/connection_listener_widget.dart';
import '../../../shared_component/custom_dialog.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../mission_past/presentation/controller/mission_past.controller.dart';

class MissionPastDetailScreen extends ConsumerStatefulWidget {
  const MissionPastDetailScreen({super.key, this.employeeMissionId});

  final int? employeeMissionId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MissionPastDetailScreenState();
}

class _MissionPastDetailScreenState
    extends ConsumerState<MissionPastDetailScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final gamification = ref.watch(gamificationDetailState.notifier).state;
        final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
        return AsyncValueWidget(
          value: ref.watch(taskControllerProvider),
          data: (data) {
            return WillPopScope(
                onWillPop: () {
                  ref.refresh(missionPastControllerProvider);
                  context.pop();
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
                        onBack: () {
                          ref.read(isFromHistory.notifier).state = true;
                          ref.refresh(missionPastControllerProvider);
                          context.pop();
                        }),
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
                                          maxLines: 5, // Adjust as needed
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
                                                          .toString()))),
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
                                                    ImageConstant.iconAccuracy,
                                                    width: 16.sp,
                                                    height: 20.sp,
                                                    package: Constant
                                                        .moduleEtamkawa),
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Text(
                                                  EtamKawaTranslate.successRate,
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .bold,
                                                          fontColor: ColorTheme
                                                              .neutral600),
                                                ),
                                                Text(
                                                  '${(gamification.accuracy ?? 0).toString()}%',
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
                                            addVerticalDivider(),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 10.h),
                                                SizedBox(
                                                    width: 16.sp,
                                                    height: 20.sp,
                                                    child: Icon(
                                                      Icons.calendar_month,
                                                      color:
                                                          ColorTheme.danger500,
                                                    )),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  EtamKawaTranslate.submittedAt,
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .bold,
                                                          fontColor: ColorTheme
                                                              .neutral600),
                                                ),
                                                Text(
                                                  CommonUtils.formattedDateHoursUtcToLocal(
                                                      gamification
                                                              .submittedDate ??
                                                          '2022-04-30T12:00:00',
                                                      withDay: true,
                                                      withHourMinute: true),
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
                                          ],
                                        )
                                      : Row(
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
                                                  addVerticalDivider(),
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
                                              flex: 1,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(height: 10.h),
                                                  Text(
                                                    'Periode',
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                      typographyType:
                                                          TypographyType
                                                              .paragraph,
                                                      fontColor:
                                                          ColorTheme.neutral600,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10.h),
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
                                                            100, // Set this to your desired height
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
                                        DateTime dueDate = DateTime.parse(
                                            CommonUtils
                                                .formattedDateHoursUtcToLocalForCheck(
                                                    gamification.dueDate ??
                                                        '2024-00-00T00:00:00'));
                                        int different = calculateDifferenceDate(
                                            dueDate, DateTime.now());
                                        if (different > 0) {
                                          context.goNamed(
                                              taskMissionPastEtamkawa,
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
                                        } else {
                                          showDialog(
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (context) {
                                              return CustomDialog(
                                                  title: 'Info',
                                                  content: EtamKawaTranslate
                                                      .beforeToDetailPast,
                                                  label: EtamKawaTranslate.back,
                                                  type: DialogType.info,
                                                  isConnectionAvailable:
                                                      isConnectionAvailable);
                                            },
                                          );
                                        }
                                      },
                                      child: Text(
                                          EtamKawaTranslate.answerDetails,
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

Widget addVerticalDivider() {
  return VerticalDivider(
    thickness: 1.sp,
    width: 1.sp,
    color: ColorTheme.strokeTertiary,
  );
}

Widget addHorizontalDivider() {
  return Divider(
    thickness: 1.h,
    height: 1.h,
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
