import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:module_bps/src/features/telematry/presentation/controller/telematry.controller.dart';
import 'package:module_shared/module_shared.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HourlyChartMiniGeneralSetting extends StatelessWidget {
  final dynamic series;
  final TrackballBehavior? trackballBehavior;
  final ChartAxis? primaryXAxis;
  final ChartAxis? primaryYAxis;
  final EdgeInsets? margin;
  final USERROLE? userRole;
  const HourlyChartMiniGeneralSetting({
    super.key,
    required this.series,
    this.trackballBehavior,
    this.primaryXAxis,
    this.primaryYAxis,
    this.margin,
    this.userRole = USERROLE.superintendentSitemanager,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      margin: margin ?? EdgeInsets.zero,
      primaryXAxis: primaryXAxis ??
          DateTimeAxis(
            interval: 1,
            axisLine: const AxisLine(width: 0),
            majorGridLines: const MajorGridLines(width: 0),
            majorTickLines: const MajorTickLines(width: 0),
            intervalType: DateTimeIntervalType.hours,
            axisLabelFormatter: (axisLabelRenderArgs) {
              String text = DateFormat('HH').format(
                DateTime.fromMillisecondsSinceEpoch(
                  axisLabelRenderArgs.value.toInt(),
                ),
              );

              if (text[0].startsWith('0')) {
                text = text.substring(1);
              }

              if (int.parse(text) % 2 != 0 &&
                  userRole == USERROLE.superintendentSitemanager) {
                text = '';
              }

              TextStyle style = SharedComponent.textStyleCustom(
                typographyType: TypographyType.body,
                fontColor: ColorTheme.textDark,
              );
              return ChartAxisLabel(text, style);
            },
          ),
      primaryYAxis: primaryYAxis ??
          NumericAxis(
            axisLine: const AxisLine(width: 0),
            majorGridLines: const MajorGridLines(width: 0),
            majorTickLines: const MajorTickLines(width: 0),
            isVisible: false,
            rangePadding: ChartRangePadding.round,
            labelStyle: SharedComponent.textStyleCustom(
              typographyType: TypographyType.body,
              fontColor: ColorTheme.textDark,
            ),
          ),
      zoomPanBehavior: ZoomPanBehavior(
        enablePinching: false,
      ),
      series: series,
      tooltipBehavior: TooltipBehavior(
        enable: false,
      ),
      trackballBehavior: trackballBehavior,
      plotAreaBorderWidth: 0,
    );
  }
}
