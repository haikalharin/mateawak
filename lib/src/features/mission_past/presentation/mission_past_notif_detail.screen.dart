import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/controller/mission_past.controller.dart';
import 'package:module_etamkawa/src/features/task/presentation/controller/task.controller.dart';
import 'package:module_etamkawa/src/features/validation_detail/presentation/validation.detail.screen.dart';
import 'package:module_etamkawa/src/shared_component/async_value_widget.dart';
import 'package:module_etamkawa/src/shared_component/shared_component_etamkawa.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

class MissionPastNotifDetailScreen extends ConsumerStatefulWidget {
  const MissionPastNotifDetailScreen({super.key, this.employeeMissionId});

  final int? employeeMissionId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MissionPastNotifDetailScreenState();
}

final loadingStateProvider = StateProvider<bool>((ref) => false);

class _MissionPastNotifDetailScreenState
    extends ConsumerState<MissionPastNotifDetailScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      ref.read(isScrollProvider.notifier).state =
          _scrollController.position.pixels > 100.h;
    });
    Future.microtask(() => initMissionPast());
  }

  Future<void> initMissionPast() async {
    ref.read(loadingStateProvider.notifier).state = true;
    WidgetsFlutterBinding.ensureInitialized();
    try {
      final ctrlPastMission = ref.read(missionPastControllerProvider.notifier);
      await ctrlPastMission
          .getDetailMission(employeeMissionId: widget.employeeMissionId!)
          .whenComplete(() {
        ref.read(loadingStateProvider.notifier).state = false;
      });
    } catch (e) {
      debugPrint('Error initializing mission past: $e');
      ref.read(loadingStateProvider.notifier).state = false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(loadingStateProvider);
    return Scaffold(
        backgroundColor: ColorTheme.neutral100,
        body: isLoading
            ? Scaffold(
                backgroundColor: ColorTheme.neutral100,
                appBar: SharedComponentEtamkawa.appBar(
                  backgroundColor: ColorTheme.backgroundWhite,
                  titleColor: ColorTheme.textDark,
                  context: context,
                  title: EtamKawaTranslate.missionDetail,
                  brightnessIconStatusBar: Brightness.light,
                ),
                body: const Center(
                  child: CircularProgressIndicator(),
                ))
            : Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final gamification =
                      ref.watch(gamificationDetailState.notifier).state;
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    gamification
                                                            .chapterData
                                                            ?.single
                                                            .chapterName ??
                                                        '',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                      typographyType:
                                                          TypographyType
                                                              .largeH5,
                                                      fontColor:
                                                          ColorTheme.neutral600,
                                                    ),
                                                  ),
                                                  Text(
                                                    '${EtamKawaTranslate.mission}: ${gamification.chapterData?.single.missionData?.single.missionName ?? ''}',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines:
                                                        5, // Adjust as needed
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                      typographyType:
                                                          TypographyType
                                                              .paragraph,
                                                      fontColor:
                                                          ColorTheme.neutral500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            DecoratedBox(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5.r)),
                                                  color: EtamKawaUtils()
                                                      .getMissionStatusBGColorByCode(
                                                          gamification
                                                              .missionStatusCode
                                                              .toString())),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 8.w,
                                                    vertical: 4.h),
                                                child: Text(
                                                    EtamKawaUtils()
                                                        .getMissionStatus(
                                                            gamification
                                                                    .missionStatus ??
                                                                ''),
                                                    style: SharedComponent.textStyleCustom(
                                                        typographyType:
                                                            TypographyType
                                                                .small,
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
                                          style:
                                              SharedComponent.textStyleCustom(
                                                  typographyType:
                                                      TypographyType.bold,
                                                  fontColor:
                                                      ColorTheme.neutral600),
                                        ),
                                        Text(
                                          gamification.chapterData?.single
                                                  .chapterGoal ??
                                              '',
                                          style:
                                              SharedComponent.textStyleCustom(
                                                  typographyType:
                                                      TypographyType.paragraph,
                                                  fontColor:
                                                      ColorTheme.neutral500),
                                        ),
                                        SizedBox(
                                          height: 15.sp,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '${EtamKawaTranslate.focusBehaviour}: ',
                                              style: SharedComponent
                                                  .textStyleCustom(
                                                      typographyType:
                                                          TypographyType.bold,
                                                      fontColor: ColorTheme
                                                          .neutral600),
                                            ),
                                            Text(
                                              gamification
                                                      .chapterData
                                                      ?.single
                                                      .missionData
                                                      ?.single
                                                      .competencyName ??
                                                  '',
                                              style: SharedComponent
                                                  .textStyleCustom(
                                                      typographyType:
                                                          TypographyType
                                                              .paragraph,
                                                      fontColor: ColorTheme
                                                          .neutral500),
                                            ),
                                            const Spacer(),
                                            DecoratedBox(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5.r)),
                                                  color: ColorTheme.primary100),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 8.w,
                                                    vertical: 4.h),
                                                child: Text(
                                                  gamification
                                                          .chapterData
                                                          ?.single
                                                          .missionData
                                                          ?.single
                                                          .peopleCategoryName ??
                                                      '',
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .paragraph,
                                                          fontColor: ColorTheme
                                                              .neutral500),
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.r)),
                                          ),
                                          elevation: 0,
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 16, 0, 16),
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(height: 10.h),
                                                    SvgPicture.asset(
                                                        ImageConstant
                                                            .iconAccuracy,
                                                        width: 16.sp,
                                                        height: 20.sp,
                                                        package: Constant
                                                            .moduleEtamkawa),
                                                    const SizedBox(
                                                      height: 6,
                                                    ),
                                                    Text(
                                                      EtamKawaTranslate
                                                          .successRate,
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SizedBox(height: 10.h),
                                                    SizedBox(
                                                        width: 16.sp,
                                                        height: 20.sp,
                                                        child: Icon(
                                                          Icons.calendar_month,
                                                          color: ColorTheme
                                                              .danger500,
                                                        )),
                                                    const SizedBox(
                                                      height: 8,
                                                    ),
                                                    Text(
                                                      EtamKawaTranslate
                                                          .submittedAt,
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.r)),
                                      ),
                                      elevation: 0,
                                      margin: const EdgeInsets.all(15),
                                      child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width,
                                          margin: const EdgeInsets.all(15),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                EtamKawaTranslate
                                                    .beforeYouStart,
                                                style: SharedComponent
                                                    .textStyleCustom(
                                                        typographyType:
                                                            TypographyType.bold,
                                                        fontColor: ColorTheme
                                                            .neutral600),
                                              ),
                                              Text(
                                                  gamification
                                                          .chapterData
                                                          ?.single
                                                          .missionData
                                                          ?.single
                                                          .missionInstruction ??
                                                      '',
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .paragraph,
                                                          fontColor: ColorTheme
                                                              .neutral600)),
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
                                                  context.goNamed(
                                                      taskMissionPastEtamkawa,
                                                      pathParameters: {
                                                        'CurrentIndex': '2'
                                                      },
                                                      extra: {
                                                        Constant.listTask:
                                                            (gamification
                                                                .chapterData
                                                                ?.single
                                                                .missionData
                                                                ?.single
                                                                .taskData)
                                                      });
                                                },
                                                child: Text(
                                                    EtamKawaTranslate
                                                        .answerDetails,
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                            typographyType:
                                                                TypographyType
                                                                    .paragraph)))),
                                      ),
                                    ],
                                  ),
                                )
                              ])));
                    },
                  );
                },
              ));
  }
}
