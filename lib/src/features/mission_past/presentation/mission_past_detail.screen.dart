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

import '../../../configs/theme/color.theme.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../mission/domain/gamification_response.remote.dart';
import '../../mission_past/presentation/controller/mission_past.controller.dart';

class MissionPastDetailScreen extends ConsumerStatefulWidget {
  const MissionPastDetailScreen({super.key});

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

  // final List<int> _screenOccupation = [0, 0];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final gamification = ref.watch(gamificationDetailState.notifier).state;
        final missionType = gamification
            .chapterData?.single.missionData?.single.missionTypeName;
        return AsyncValueWidget(
          value: ref.watch(taskControllerProvider),
          data: (data) {
            return WillPopScope(
                onWillPop: () {
                  context.pop();
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
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          gamification.chapterData?.single
                                                  .chapterName ??
                                              '',
                                          style:
                                              SharedComponent.textStyleCustom(
                                                  typographyType:
                                                      TypographyType.largeH5,
                                                  fontColor:
                                                      ColorTheme.neutral600),
                                        ),
                                        Text(
                                            '${EtamKawaTranslate.mission}: ${gamification.chapterData?.single.missionData?.single.missionName ?? ''}',
                                            style:
                                                SharedComponent.textStyleCustom(
                                                    typographyType:
                                                        TypographyType
                                                            .paragraph,
                                                    fontColor:
                                                        ColorTheme.neutral500)),
                                      ],
                                    ),
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.r)),
                                          color:
                                          gamification.missionStatusCode ==
                                              0
                                              ? ColorTheme.neutral300
                                              : gamification.missionStatusCode ==
                                              1
                                              ? ColorTheme.secondary100
                                              : gamification
                                              .missionStatusCode ==
                                              3 ||
                                              gamification
                                                  .missionStatusCode ==
                                                  4
                                              ? ColorTheme.danger100
                                              : ColorTheme.primary100),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w, vertical: 4.h),
                                        child: Text(
                                          gamification.missionStatus ?? '',
                                          style: SharedComponent.textStyleCustom(
                                              typographyType: TypographyType.small,
                                              fontColor: gamification
                                                  .missionStatusCode ==
                                                  0
                                                  ? ColorTheme.neutral500
                                                  : gamification
                                                  .missionStatusCode ==
                                                  1
                                                  ? ColorTheme.secondary500
                                                  : gamification
                                                  .missionStatusCode ==
                                                  3 ||
                                                  gamification
                                                      .missionStatusCode ==
                                                      4
                                                  ? ColorTheme.danger500
                                                  : ColorTheme.primary500),
                                        ),
                                      ),
                                    ),
                                  ]),
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
                                    gamification.chapterData?.single
                                            .competencyName ??
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
                                        gamification.chapterData?.single
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
                                  child: Row(
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
                                              package: Constant.moduleEtamkawa),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            EtamKawaTranslate.rewards,
                                            style:
                                                SharedComponent.textStyleCustom(
                                                    typographyType:
                                                        TypographyType.bold,
                                                    fontColor:
                                                        ColorTheme.neutral600),
                                          ),
                                          Text(
                                            '${(gamification.chapterData?.single.missionData?.single.missionReward ?? 0).toString()} total',
                                            style:
                                                SharedComponent.textStyleCustom(
                                                    typographyType:
                                                        TypographyType
                                                            .paragraph,
                                                    fontColor:
                                                        ColorTheme.neutral500),
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
                                          Container(
                                              width: 16.sp,
                                              height: 20.sp,
                                              child: Icon(
                                                Icons.calendar_month,
                                                color: ColorTheme.danger500,
                                              )),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            EtamKawaTranslate.submittedAt,
                                            style:
                                                SharedComponent.textStyleCustom(
                                                    typographyType:
                                                        TypographyType.bold,
                                                    fontColor:
                                                        ColorTheme.neutral600),
                                          ),
                                          Text(
                                            CommonUtils.formattedDate(
                                                gamification.submittedDate ??
                                                    '2022-04-30T12:00:00',
                                                withDay: true,
                                                withHourMinute: true),
                                            style:
                                                SharedComponent.textStyleCustom(
                                                    typographyType:
                                                        TypographyType
                                                            .paragraph,
                                                    fontColor:
                                                        ColorTheme.neutral500),
                                          ),
                                          SizedBox(height: 10.h),
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
                                      'Before you start',
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
                                        context.goNamed(taskMissionPastEtamkawa,
                                            extra: {
                                              Constant.listTask: (gamification
                                                  .chapterData
                                                  ?.single
                                                  .missionData
                                                  ?.single
                                                  .taskData)
                                            });
                                      },
                                      child: Text('Answer Details',
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