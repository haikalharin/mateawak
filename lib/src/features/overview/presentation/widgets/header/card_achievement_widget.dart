import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../../../module_etamkawa.dart';
import '../../../../../constants/image.constant.dart';
import '../../../domain/achievement_produksi_response.remote.dart';

class CardAchievement extends ConsumerWidget {
  const CardAchievement({
    super.key,
    required this.achievementProduksiResponseRemote,
    required this.isOB,
  });

  final AchievementProduksiResponseRemote achievementProduksiResponseRemote;
  final bool isOB;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final achievement = achievementProduksiResponseRemote.achievement ?? 0.0;

    return Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: ColorTheme.strokeTertiary,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)).w),
        elevation: 0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 16, right: 16, bottom: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SharedComponent.label(
                        text: isOB ? 'OB (Bcm)' : 'CM (Ton)',
                        context: context,
                        typographyType: TypographyType.largeH5,
                      ),
                      GestureDetector(
                          onTap: () {
                            if (ref.watch(isAbleAccessTabProdProvider)) {
                              // ref
                              //     .watch(isRedirectFromCardAchievementProvider
                              //         .notifier)
                              //     .state = true;

                              // ref
                              //     .watch(liveSelectedMaterialProvider.notifier)
                              //     .state = isOB ? Constant.ob : Constant.cm;

                              final indexMenuLive =
                                  ref.watch(indexMenuLiveProvider);

                              context.goNamed(homeEtakawa, pathParameters: {
                                'currentIndex': '$indexMenuLive'
                              });
                            }
                          },
                          child: Icon(
                            weight: 40,
                            Icons.arrow_forward_rounded,
                            size: 20.sp,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 72,
                          child: Column(
                            children: [
                              SharedComponent.label(
                                text: CommonUtils.formatThousandFromNumber(
                                    achievementProduksiResponseRemote
                                            .dailyAchievementActual ??
                                        0),
                                context: context,
                                typographyType: TypographyType.largeH2,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SharedComponent.label(
                                    text:
                                        'P: ${CommonUtils.formatThousandFromNumber(double.parse(achievementProduksiResponseRemote.dailyAchievementPlan?.toStringAsFixed(0) ?? '0'))}',
                                    context: context,
                                    typographyType: TypographyType.mediumH6,
                                  ),
                                  SharedComponent.label(
                                    text:
                                        'H-1: ${CommonUtils.formatThousandFromNumber(double.parse(achievementProduksiResponseRemote.dailyAchievementActualMinus1?.toStringAsFixed(0) ?? '0'))}',
                                    context: context,
                                    typographyType: TypographyType.mediumH6,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Divider(
                                height: 1,
                                thickness: 1,
                                color: ColorTheme.neutral200,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: LinearProgressIndicator(
                                        minHeight: 8.sp,
                                        color: isOB
                                            ? ColorTheme.info500
                                            : ColorTheme.secondary500,
                                        value: achievement / 100,
                                        semanticsLabel:
                                            'Linear progress indicator',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SharedComponent.label(
                                        text: achievement.toInt().toString(),
                                        context: context,
                                        typographyType: TypographyType.largeH5,
                                      ),
                                      Transform.translate(
                                        offset: Offset(0, -2.sp),
                                        child: SharedComponent.label(
                                          text: '%',
                                          context: context,
                                          typographyType: TypographyType.small,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 26.w,
                          thickness: 2,
                          color: ColorTheme.neutral200,
                        ),
                        Flexible(
                          flex: 28,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      SharedComponent.label(
                                        text: CommonUtils
                                            .formatThousandFromNumber(
                                                achievementProduksiResponseRemote
                                                        .qty
                                                        ?.toDouble() ??
                                                    0),
                                        context: context,
                                        typographyType: TypographyType.largeH5,
                                      ),
                                      SharedComponent.label(
                                        text: 'QTY',
                                        context: context,
                                        typographyType: TypographyType.body,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 14.5.h,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SharedComponent.label(
                                            text:
                                                (achievementProduksiResponseRemote
                                                            .pa ??
                                                        0)
                                                    .toInt()
                                                    .toString(),
                                            context: context,
                                            typographyType:
                                                TypographyType.largeH5,
                                          ),
                                          Transform.translate(
                                            offset: Offset(0, -2.sp),
                                            child: SharedComponent.label(
                                              text: '%',
                                              context: context,
                                              typographyType:
                                                  TypographyType.small,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SharedComponent.label(
                                        text: 'PA',
                                        context: context,
                                        typographyType: TypographyType.body,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      SharedComponent.label(
                                        text: CommonUtils
                                            .formatThousandFromNumber(
                                                achievementProduksiResponseRemote
                                                        .pty ??
                                                    0),
                                        context: context,
                                        typographyType: TypographyType.largeH5,
                                      ),
                                      SharedComponent.label(
                                        text: 'PTY',
                                        context: context,
                                        typographyType: TypographyType.body,
                                      ),
                                      SizedBox(height: 14.5.h),
                                      Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              SharedComponent.label(
                                                text:
                                                    (achievementProduksiResponseRemote
                                                                .ua ??
                                                            0)
                                                        .toInt()
                                                        .toString(),
                                                context: context,
                                                typographyType:
                                                    TypographyType.largeH5,
                                              ),
                                              Transform.translate(
                                                offset: Offset(0, -2.sp),
                                                child: SharedComponent.label(
                                                  text: '%',
                                                  context: context,
                                                  typographyType:
                                                      TypographyType.small,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SharedComponent.label(
                                            text: 'UA',
                                            context: context,
                                            typographyType: TypographyType.body,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(
                    isOB
                        ? ImageConstant.bgCardBottomBlue
                        : ImageConstant.bgCardBottomOrange,
                    package: 'module_etamkawa'),
              ),
            ),
          ],
        ));
  }
}
