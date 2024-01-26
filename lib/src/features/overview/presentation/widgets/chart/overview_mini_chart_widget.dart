import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:module_bps/src/constants/constant.dart';
import 'package:module_bps/src/features/overview/domain/detail_hourly_grafik_response.remote.dart';
import 'package:module_bps/src/features/overview/presentation/controller/overview.controller.dart';
import 'package:module_bps/src/shared_component/async_value_widget.dart';
import 'package:module_bps/src/shared_component/hourly_chart_mini_general_setting.dart';
import 'package:module_bps/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OverviewMiniChartWidget extends StatefulWidget {
  final List<String> getActiveAreas;
  final String? adAccount;
  final int uid;
  final bool isOb;
  const OverviewMiniChartWidget({
    Key? key,
    required this.getActiveAreas,
    required this.adAccount,
    required this.uid,
    this.isOb = true,
  }) : super(key: key);

  @override
  State<OverviewMiniChartWidget> createState() =>
      _OverviewMiniChartWidgetState();
}

class _OverviewMiniChartWidgetState extends State<OverviewMiniChartWidget> {
  List<_SplineAreaData>? splineChartData;

  void _onInitData(List<DetailHourlyGrafikResponseRemote> data) {
    splineChartData = List.generate(
      data.length,
      (index) => _SplineAreaData(
        !CommonUtils.isEmpty(data[index].hourTo)
            ? DateTime.parse(data[index].hourTo!)
            : DateTime.now(),
        data[index].hourlyAchievementPlan ?? 0,
        data[index].hourlyAchievementActual ?? 0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: SizedBox(
        height: 150.sp,
        child: Consumer(
          builder: (context, consRef, child) {
            return AsyncValueWidget(
              value: consRef.watch(
                getDetailHourlyGrafikProvider(
                  areas: widget.getActiveAreas,
                  material: widget.isOb ? Constant.ob : Constant.cm,
                  adAccount: widget.adAccount,
                  uid: widget.uid,
                ),
              ),
              data: (result) {
                _onInitData(result);

                return HourlyChartMiniGeneralSetting(
                  series: _getSplieAreaSeries(),
                  trackballBehavior: TrackballBehavior(
                    enable: true,
                    shouldAlwaysShow: true,
                    activationMode: ActivationMode.singleTap,
                    builder: (context, trackballDetails) {
                      final hour =
                          trackballDetails.groupingModeInfo!.points[0].x;
                      final hourFrom =
                          DateFormat.H().format(hour.subtract(const Duration(
                        hours: 1,
                      )));
                      final hourTo = DateFormat.H().format(hour);

                      final actualValue =
                          trackballDetails.groupingModeInfo!.points[0].y;
                      final planValue =
                          trackballDetails.groupingModeInfo!.points[1].y;

                      return Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: ColorTheme.backgroundDark,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.r))),
                        child: IntrinsicWidth(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SharedComponent.label(
                                  text: '$hourFrom:00 - $hourTo:00',
                                  context: context,
                                  typographyType: TypographyType.body,
                                  color: ColorTheme.textWhite,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                color: ColorTheme.textWhite,
                                height: 1,
                                width: double.infinity,
                              ),
                              _RowLabelTooltip(
                                color: widget.isOb
                                    ? ColorTheme.info500
                                    : ColorTheme.secondary500,
                                title: 'Actual',
                                value: CommonUtils.formatThousandFromNumber(
                                    actualValue),
                              ),
                              _RowLabelTooltip(
                                color: ColorTheme.primary500,
                                title: 'Plan',
                                value: CommonUtils.formatThousandFromNumber(
                                    planValue),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Returns the list of chart series
  /// which need to render on the spline area chart.
  List<ChartSeries<_SplineAreaData, DateTime>> _getSplieAreaSeries() {
    return <ChartSeries<_SplineAreaData, DateTime>>[
      SplineAreaSeries<_SplineAreaData, DateTime>(
        dataSource: splineChartData ?? [],
        gradient: LinearGradient(
          colors: [
            widget.isOb
                ? ColorTheme.info500.withOpacity(0.3)
                : ColorTheme.secondary500.withOpacity(0.3),
            widget.isOb
                ? ColorTheme.info500.withOpacity(0)
                : ColorTheme.secondary500.withOpacity(0),
          ],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(0, 1),
        ),
        borderColor: widget.isOb ? ColorTheme.info500 : ColorTheme.secondary500,
        borderWidth: 2,
        name: 'Actual',
        isVisibleInLegend: false,
        xValueMapper: (_SplineAreaData splineAreaData, _) =>
            splineAreaData.time,
        yValueMapper: (_SplineAreaData splineAreaData, _) => splineAreaData.y2,
        splineType: SplineType.monotonic,
      ),
      SplineAreaSeries<_SplineAreaData, DateTime>(
        dataSource: splineChartData ?? [],
        gradient: LinearGradient(
          colors: [
            ColorTheme.primary500.withOpacity(0.3),
            ColorTheme.primary500.withOpacity(0),
          ],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(0, 1),
        ),
        borderColor: ColorTheme.primary500,
        borderWidth: 2,
        name: 'Plan',
        isVisibleInLegend: false,
        xValueMapper: (_SplineAreaData splineAreaData, _) =>
            splineAreaData.time,
        yValueMapper: (_SplineAreaData splineAreaData, _) => splineAreaData.y1,
        splineType: SplineType.monotonic,
      ),
    ];
  }
}

/// Private class for storing the spline area chart datapoints.
class _SplineAreaData {
  _SplineAreaData(this.time, this.y1, this.y2);
  final DateTime time;
  final double y1;
  final double y2;
}

class _RowLabelTooltip extends StatelessWidget {
  const _RowLabelTooltip({
    required this.color,
    required this.title,
    required this.value,
  });

  final Color color;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 75.sp,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 12.sp,
                  height: 12.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                    border: Border.all(
                      color: ColorTheme.backgroundWhite,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SharedComponent.label(
                        text: '  $title ',
                        context: context,
                        typographyType: TypographyType.body,
                        color: ColorTheme.textWhite,
                      ),
                      SharedComponent.label(
                        text: ': ',
                        context: context,
                        typographyType: TypographyType.body,
                        color: ColorTheme.textWhite,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SharedComponent.label(
            text: value,
            context: context,
            typographyType: TypographyType.body,
            color: ColorTheme.textWhite,
          ),
        ],
      ),
    );
  }
}
