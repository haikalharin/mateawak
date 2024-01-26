import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/configs/navigations/routes.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/overview/infrastructure/repositories/overview.repository.dart';
import 'package:module_etamkawa/src/features/overview/presentation/controller/overview.controller.dart';
import 'package:module_etamkawa/src/features/overview/presentation/widgets/chart/custom_chart_widget.dart';
import 'package:module_etamkawa/src/features/overview/presentation/widgets/chart/overview_mini_chart_widget.dart';

import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../../shared_component/async_value_widget.dart';
import '../../../../../shared_component/mini_chart_widget.dart';

class CardChartOverviewWidget extends StatelessWidget {
  const CardChartOverviewWidget({
    super.key,
    this.isOb = true,
    required this.mtdYtd,
    required this.dailyActual,
    required this.dailyPlan,
    required this.getActiveAreas,
    required this.adAccount,
    required this.uid,
  });
  final bool isOb;
  final Widget mtdYtd;
  final double dailyActual;
  final double dailyPlan;
  final List<String> getActiveAreas;
  final String? adAccount;
  final int uid;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: ColorTheme.strokeTertiary,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      elevation: 0,
      child: RPadding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Consumer(
              builder: (context, consRef, child) {
                return MiniChartWidget(
                  additionalWidget: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 2.h,
                            color: isOb
                                ? ColorTheme.info500
                                : ColorTheme.secondary500,
                            width: 19.w,
                            margin: EdgeInsets.symmetric(horizontal: 8.w),
                          ),
                          SharedComponent.label(
                            text: 'Actual',
                            context: context,
                            typographyType: TypographyType.body,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 2.h,
                            color: ColorTheme.primary500,
                            width: 19.w,
                            margin: EdgeInsets.symmetric(horizontal: 8.w),
                          ),
                          SharedComponent.label(
                            text: 'Plan',
                            context: context,
                            typographyType: TypographyType.body,
                          ),
                        ],
                      ),
                    ],
                  ),
                  child: OverviewMiniChartWidget(
                    adAccount: adAccount,
                    getActiveAreas: getActiveAreas,
                    uid: uid,
                    isOb: isOb,
                  ),
                  onTap: () {
                    final indexMenuOverview =
                        consRef.watch(indexMenuOverviewProvider);
                    context.goNamed(
                      fullscreenchart,
                      pathParameters: {
                        'currentIndex': '$indexMenuOverview',
                      },
                      extra: {
                        Constant.fullscreenTitle: isOb ? 'OB' : 'CM',
                        Constant.fullscreenChild: _FullscreenChart(
                          adAccount: adAccount,
                          getActiveAreas: getActiveAreas,
                          uid: uid,
                          isOB: isOb,
                        ),
                        Constant.fullscreenOnRefresh: () async {
                          // ignore: unused_result
                          await consRef.refresh(
                            getAchievementProduksiRemoteProvider(
                              areas: getActiveAreas,
                              material: isOb ? Constant.ob : Constant.cm,
                              adAccount: adAccount,
                              uid: uid,
                            ).future,
                          );

                          // ignore: unused_result
                          await consRef.refresh(
                            getDetailHourlyGrafikRemoteProvider(
                              areas: getActiveAreas,
                              material: isOb ? Constant.ob : Constant.cm,
                              adAccount: adAccount,
                              uid: uid,
                            ).future,
                          );

                          // ignore: unused_result
                          await consRef.refresh(
                            getUnitBreakdownRemoteProvider(
                              areas: getActiveAreas,
                              material: isOb ? Constant.ob : Constant.cm,
                              adAccount: adAccount,
                              uid: uid,
                            ).future,
                          );
                        },
                      },
                    );
                  },
                );
              },
            ),
            Divider(
              color: ColorTheme.strokeTertiary,
              height: 17.sp,
              thickness: 1,
            ),
            mtdYtd
          ],
        ),
      ),
    );
  }
}

class _FullscreenChart extends ConsumerWidget {
  final List<String> getActiveAreas;
  final String? adAccount;
  final int uid;
  final bool isOB;
  const _FullscreenChart({
    required this.getActiveAreas,
    required this.adAccount,
    required this.uid,
    required this.isOB,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (context.mounted) {

    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 16.h),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AsyncValueWidget(
                value: ref.watch(
                  getAchievementProduksiProvider(
                    areas: getActiveAreas,
                    material: isOB ? Constant.ob : Constant.cm,
                    adAccount: adAccount,
                    uid: uid,
                  ),
                ),
                data: (result) {
                  return Row(
                    children: [
                      SizedBox(width: 16.sp),
                      SharedComponent.label(
                        text: CommonUtils.formatThousandFromNumber(
                            result?.dailyAchievementActual ?? 0),
                        context: context,
                        typographyType: TypographyType.mediumH3,
                        color: ColorTheme.textDark,
                      ),
                      VerticalDivider(
                        thickness: 2,
                        width: 18,
                        color: ColorTheme.strokeTertiary,
                      ),
                      SharedComponent.label(
                        text:
                            'P: ${CommonUtils.formatThousandFromNumber(result?.dailyAchievementPlan ?? 0)}',
                        context: context,
                        typographyType: TypographyType.smallH4,
                        color: ColorTheme.textDark,
                      ),
                      VerticalDivider(
                        thickness: 2,
                        width: 18,
                        color: ColorTheme.strokeTertiary,
                      ),
                      SharedComponent.label(
                        text:
                            'R: ${CommonUtils.formatThousandFromNumber(result?.remain ?? 0)}',
                        context: context,
                        typographyType: TypographyType.smallH4,
                        color: ColorTheme.textDark,
                      ),
                    ],
                  );
                },
              ),
              AsyncValueWidget(
                value: ref.watch(
                  getUnitBreakdownProvider(
                    areas: getActiveAreas,
                    material: isOB ? Constant.ob : Constant.cm,
                    adAccount: adAccount,
                    uid: uid,
                  ),
                ),
                data: (result) {
                  final loadTime =
                      CommonUtils.isEmpty(result.first.loadDateTime)
                          ? '--:--'
                          : CommonUtils.formatDateToHoursMinute(
                              result.first.loadDateTime!);

                  return Padding(
                    padding: EdgeInsets.only(
                      right: 16.sp,
                    ),
                    child: SharedComponent.label(
                      text: 'Diperbarui, $loadTime',
                      context: context,
                      typographyType: TypographyType.mediumH6,
                      color: ColorTheme.textLightDark,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            SizedBox(width: 16.sp),
            _ChartLegend(isOB: isOB),
          ],
        ),
        Expanded(
          child: CustomChartWidget(
            adAccount: adAccount,
            getActiveAreas: getActiveAreas,
            uid: uid,
            isOb: isOB,
          ),
        ),
      ],
    );
  }
}

class _ChartLegend extends StatelessWidget {
  final bool isOB;
  const _ChartLegend({
    required this.isOB,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              height: 2.h,
              color: isOB ? ColorTheme.info500 : ColorTheme.secondary500,
              width: 19.sp,
              margin: EdgeInsets.symmetric(
                horizontal: 8.sp,
              ),
            ),
            SharedComponent.label(
              text: 'Actual',
              context: context,
              typographyType: TypographyType.mediumH6,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 2.h,
              color: ColorTheme.primary500,
              width: 19.sp,
              margin: EdgeInsets.symmetric(
                horizontal: 8.sp,
              ),
            ),
            SharedComponent.label(
              text: 'Plan',
              context: context,
              typographyType: TypographyType.mediumH6,
            ),
          ],
        ),
      ],
    );
  }
}
