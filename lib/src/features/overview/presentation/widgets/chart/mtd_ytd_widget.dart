import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_bps/src/features/overview/presentation/controller/overview.controller.dart';
import 'package:module_bps/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../domain/achievement_produksi_response.remote.dart';

class MtdYtdWidget extends StatelessWidget {
  const MtdYtdWidget(
      {super.key,
      this.isOb = true,
      required this.achievementProduksiResponseRemote,
      required this.isMtd});
  final bool isOb;
  final AchievementProduksiResponseRemote achievementProduksiResponseRemote;
  final bool isMtd;

  @override
  Widget build(BuildContext context) {
    final achievementActual = isMtd
        ? achievementProduksiResponseRemote.achievementActualMTD
        : achievementProduksiResponseRemote.achievementActualYTD;

    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Consumer(builder: (context, consRef, _) {
              final indexMtdYtdSlider =
                  consRef.watch(indexMtdYtdSliderProvider);
              return SharedComponent.label(
                text: isMtd
                    ? indexMtdYtdSlider == 0
                        ? 'Month '
                        : 'MTD '
                    : indexMtdYtdSlider == 0
                        ? 'Year '
                        : 'YTD ',
                context: context,
                typographyType: TypographyType.mediumH6,
              );
            }),
            SizedBox(
              height: 8.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SharedComponent.label(
                  text: CommonUtils.formatThousandFromNumber(
                      achievementActual ?? 0),
                  context: context,
                  typographyType: TypographyType.largeH5,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Consumer(builder: (context, consRef, _) {
                  final indexMtdYtdSlider =
                      consRef.watch(indexMtdYtdSliderProvider);

                  final achievementplan = isMtd
                      ? achievementProduksiResponseRemote.achievementPlanMTD
                      : achievementProduksiResponseRemote.achievementPlanYTD;

                  final achievementplanProrate = isMtd
                      ? achievementProduksiResponseRemote
                          .achievementPlanMTDProrate
                      : achievementProduksiResponseRemote
                          .achievementPlanYTDProrate;

                  final value = indexMtdYtdSlider == 0
                      ? achievementplan ?? 0
                      : achievementplanProrate ?? 0;
                  return SharedComponent.label(
                    text: 'P: ${CommonUtils.formatThousandFromNumber(value)}',
                    context: context,
                    typographyType: TypographyType.mediumH6,
                  );
                }),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SharedComponent.label(
              text: isOb ? 'kBcm' : 'kTon',
              context: context,
              typographyType: TypographyType.body,
            ),
            SizedBox(
              height: 8.h,
            ),
            Consumer(builder: (context, consRef, _) {
              final double achivementA = isMtd
                  ? achievementProduksiResponseRemote.achievementMTD ?? 0
                  : achievementProduksiResponseRemote.achievementYTD ?? 0;

              final double achivementAProrate = isMtd
                  ? achievementProduksiResponseRemote.achievementMTDProrate ?? 0
                  : achievementProduksiResponseRemote.achievementYTDProrate ??
                      0;

              final indexMtdYtdSlider =
                  consRef.watch(indexMtdYtdSliderProvider);

              final value =
                  indexMtdYtdSlider == 0 ? achivementA : achivementAProrate;
              return CircularPercentIndicator(
                backgroundColor: isOb
                    ? ColorTheme.info500.withOpacity(0.3)
                    : ColorTheme.secondary500.withOpacity(0.3),
                radius: 25.sp,
                lineWidth: 5,
                animation: true,
                percent: (value > 100 ? 100 : value) / 100,
                center: FittedBox(
                  child: SharedComponent.label(
                      text: '${value.toInt()}%',
                      context: context,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      typographyType: TypographyType.bold),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor:
                    isOb ? ColorTheme.info500 : ColorTheme.secondary500,
              );
            }),
          ],
        ),
      ],
    ));
  }
}
