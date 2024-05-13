import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/task/presentation/controller/task.controller.dart';
import 'package:module_etamkawa/src/features/validation/presentation/controller/validation.controller.dart';
import 'package:module_etamkawa/src/features/validation_detail/presentation/controller/validate.controller.dart';
import 'package:module_etamkawa/src/shared_component/custom_with_feedback_dialog.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';

class ValidationDetailScreen extends ConsumerStatefulWidget {
  const ValidationDetailScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ValidationDetailScreenState();
}

class _ValidationDetailScreenState
    extends ConsumerState<ValidationDetailScreen> {
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
        final validation = ref.watch(validationInReviewState.notifier).state[0];
        final ctrl = ref.watch(validateControllerProvider.notifier);
        debugPrint(validation.missionStatusCode.toString());
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
                      title: EtamKawaTranslate.missionValidation,
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
                                          validation.chapterData?.single
                                                  .chapterName ??
                                              '',
                                          style:
                                              SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.largeH5,
                                            fontColor: ColorTheme.neutral600,
                                          ),
                                        ),
                                        Text(
                                          '${EtamKawaTranslate.mission}: ${validation.chapterData?.single.missionData?.single.missionName ?? ''}',
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
                                              (validation.missionStatusCode ??
                                                      3)
                                                  .toString()),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 4.h),
                                      child: Text(
                                        EtamKawaUtils().getMissionStatus(
                                            validation.missionStatus ?? ''),
                                        style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.paragraph,
                                          fontColor:
                                              EtamKawaUtils()
                                          .getMissionStatusFontColorByCode(
                                              (validation.missionStatusCode ??
                                                      3)
                                                  .toString()),
                                        ),
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
                                validation.chapterData?.single.chapterGoal ??
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
                                    validation.chapterData?.single
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
                                        validation.chapterData?.single
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
                                margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                                            '${(validation.chapterData?.single.missionData?.single.missionReward ?? 0).toString()} total',
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
                                          SvgPicture.asset(
                                              ImageConstant.iconCalendar,
                                              colorFilter: ColorFilter.mode(
                                                  ColorTheme.danger500,
                                                  BlendMode.srcIn),
                                              width: 16.sp,
                                              height: 20.sp,
                                              package: Constant.moduleEtamkawa),
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
                                            CommonUtils.formattedDateHoursUtcToLocal(
                                                validation.submittedDate ??
                                                    DateTime.now().toString()),
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
                            margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                            child: Container(
                                width: MediaQuery.sizeOf(context).width,
                                margin:
                                    const EdgeInsets.fromLTRB(15, 15, 10, 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Assignment",
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .largeH5,
                                                          fontColor: ColorTheme
                                                              .textDark)),
                                              SizedBox(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4),
                                                      decoration: BoxDecoration(
                                                          color: ColorTheme
                                                              .secondary100,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5.r))),
                                                      child: Center(
                                                          child: SizedBox(
                                                        height: 24.h,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color: ColorTheme
                                                                  .secondary500,
                                                              size: 12.h,
                                                            ),
                                                            Text(
                                                              " +${validation.chapterData?.single.missionData?.single.missionReward}",
                                                              style: SharedComponent.textStyleCustom(
                                                                  typographyType:
                                                                      TypographyType
                                                                          .body,
                                                                  fontColor:
                                                                      ColorTheme
                                                                          .secondary500),
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Icon(
                                                      Icons.info,
                                                      color:
                                                          ColorTheme.primary500,
                                                      size: 24.h,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Container(
                                                height: 200,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: FileImage(File(
                                                          validation
                                                                  .chapterData
                                                                  ?.single
                                                                  .missionData
                                                                  ?.single
                                                                  .taskData
                                                                  ?.single
                                                                  .attachmentPath ??
                                                              '')),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    color: ColorTheme
                                                        .backgroundWhite,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16),
                                              ),
                                              const SizedBox(height: 10.0),
                                              Text(
                                                validation
                                                        .chapterData
                                                        ?.single
                                                        .missionData
                                                        ?.single
                                                        .taskData
                                                        ?.single
                                                        .taskCaption ??
                                                    '',
                                                style: SharedComponent
                                                    .textStyleCustom(
                                                        typographyType:
                                                            TypographyType
                                                                .medium,
                                                        fontColor: ColorTheme
                                                            .textDark),
                                              ),
                                              const SizedBox(height: 10.0),
                                              const Divider(),
                                              const SizedBox(height: 10.0),
                                              RichText(
                                                text: TextSpan(
                                                  text: EtamKawaTranslate
                                                      .evidence,
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .body,
                                                          fontColor: ColorTheme
                                                              .textDark),
                                                  children: [
                                                    TextSpan(
                                                      text: '*',
                                                      style: SharedComponent
                                                          .textStyleCustom(
                                                              typographyType:
                                                                  TypographyType
                                                                      .body,
                                                              fontColor:
                                                                  ColorTheme
                                                                      .danger500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 200,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: FileImage(File(
                                                          validation
                                                                  .chapterData
                                                                  ?.single
                                                                  .missionData
                                                                  ?.single
                                                                  .taskData
                                                                  ?.single
                                                                  .answerAttachmentPath ??
                                                              '')),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    color: ColorTheme
                                                        .backgroundWhite,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16),
                                              ),
                                              const SizedBox(height: 10.0),
                                              Text(
                                                EtamKawaTranslate
                                                    .answerAssignment,
                                                style: SharedComponent
                                                    .textStyleCustom(
                                                        typographyType:
                                                            TypographyType
                                                                .mediumH6,
                                                        fontColor: ColorTheme
                                                            .neutral600),
                                              ),
                                              Text(
                                                validation
                                                        .chapterData
                                                        ?.single
                                                        .missionData
                                                        ?.single
                                                        .taskData
                                                        ?.single
                                                        .answer ??
                                                    '',
                                                style: SharedComponent
                                                    .textStyleCustom(
                                                        typographyType:
                                                            TypographyType
                                                                .medium,
                                                        fontColor: ColorTheme
                                                            .textDark),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
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
                                      onPressed: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (context) {
                                            return CustomWithFeedbackDialog(
                                                rating: (validation
                                                        .chapterData
                                                        ?.single
                                                        .missionData
                                                        ?.single
                                                        .taskData
                                                        ?.single
                                                        .qualitativeScoreId
                                                        .toString() ??
                                                    ''),
                                                feedback: (validation
                                                        .chapterData
                                                        ?.single
                                                        .missionData
                                                        ?.single
                                                        .taskData
                                                        ?.single
                                                        .feedbackComment ??
                                                    ''),
                                                label: EtamKawaTranslate.stay,
                                                //type: DialogType.question,
                                                onClosed: (String feedback,
                                                        int
                                                            selectedScore) async =>
                                                    {
                                                      ctrl.changeStatusValidation(
                                                          feedback,
                                                          selectedScore)
                                                    });
                                          },
                                        );
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                              ImageConstant.iconChecklist,
                                              width: 9.sp,
                                              height: 9.sp,
                                              package: Constant.moduleEtamkawa),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 0, 0, 0),
                                              child: Text('Validate',
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .paragraph))),
                                        ],
                                      ),
                                    ))),
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
