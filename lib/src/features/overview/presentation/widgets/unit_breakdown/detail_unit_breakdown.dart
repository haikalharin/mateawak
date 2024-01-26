import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:module_etamkawa/src/features/overview/domain/unit_breakdown_response.remote.dart';
import 'package:module_shared/module_shared.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../utils/common_utils.dart';
import '../../../../../shared_component/custom_expansion_tile.dart';


class DetailUnitBreakdown extends ConsumerWidget {
  final UnitBreakdownResponseRemote unitBreakdownResponseData;
  const DetailUnitBreakdown({
    super.key,
    required this.unitBreakdownResponseData,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (context.mounted) {
      // ref
      //     .read(telematryControllerProvider.notifier)
      //     .onVisibilityChangedSingleWidget(
      //       TelematryConstant.overviewDetailUnitBreakdown,
      //     );
    }

    String date = '';
    String monthYear = '';
    String minutes = '';
    if (unitBreakdownResponseData
            .eventBreackDownTrackings?.first.rfuEstimation !=
        null) {
      date = DateFormat.d().format(DateTime.parse(unitBreakdownResponseData
              .eventBreackDownTrackings?.first.rfuEstimation ??
          ''));
      monthYear = DateFormat.yMMM().format(DateTime.parse(
          unitBreakdownResponseData
                  .eventBreackDownTrackings?.first.rfuEstimation ??
              ''));
      minutes = DateFormat.Hm().format(DateTime.parse(unitBreakdownResponseData
              .eventBreackDownTrackings?.first.rfuEstimation ??
          ''));
    }

    final formattedEstRfu = "$date $monthYear - $minutes";

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorTheme.backgroundWhite,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 4.h,
            ),
            Center(
              child: Container(
                height: 4.h,
                width: 21.w,
                decoration: BoxDecoration(
                  color: '#D9D9D9'.toColor(),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SharedComponent.label(
                  text: unitBreakdownResponseData.equipment ?? '-',
                  context: context,
                  typographyType: TypographyType.largeH5,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorTheme.danger100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: SharedComponent.label(
                      text:
                          '${unitBreakdownResponseData.eventBreackDownTrackings?.first.eventBreakdownTracking}',
                      context: context,
                      typographyType: TypographyType.body,
                      color: ColorTheme.danger500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            SharedComponent.label(
              text: unitBreakdownResponseData.bdReason ?? '-',
              context: context,
              typographyType: TypographyType.mediumH6,
            ),
            SizedBox(height: 24.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IdentityValueWidget(
                        icon: Icons.person_rounded,
                        textValue:
                            unitBreakdownResponseData.operatorName ?? '-',
                        title: 'Nama Operator',
                      ),
                      SizedBox(height: 16.h),
                      IdentityValueWidget(
                        icon: Icons.handyman_rounded,
                        textValue:
                            '${unitBreakdownResponseData.durationRepairment.toString().replaceAll('.', ',')} Hours',
                        title: 'Estimasi Perbaikan',
                      ),
                      SizedBox(height: 16.h),
                      IdentityValueWidget(
                        icon: Icons.pin_drop_rounded,
                        textValue:
                            unitBreakdownResponseData.breakdownLocation ?? '-',
                        title: 'Lokasi',
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Column(
                    children: [
                      IdentityValueWidget(
                          icon: Icons.access_time_filled_rounded,
                          textValue:
                              '${unitBreakdownResponseData.breakdownDuration.toString().replaceAll('.', ',')} Hours',
                          title: 'Durasi Breakdown'),
                      SizedBox(height: 16.h),
                      IdentityValueWidget(
                          icon: Icons.check_circle_rounded,
                          textValue: formattedEstRfu,
                          title: 'Estimasi RFU'),
                      SizedBox(height: 16.h),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorTheme.strokeTertiary,
                ),
                borderRadius: BorderRadius.circular(5.r),
                color: ColorTheme.backgroundWhite,
              ),
              child: CustomExpansionTile(
                trailingColor: ColorTheme.iconDark,
                title: SharedComponent.label(
                  text: 'Status Perbaikan',
                  context: context,
                  typographyType: TypographyType.mediumH6,
                ),
                collapsedShape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorTheme.strokeTertiary,
                      ),
                    ),
                    child: RPadding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: List.generate(
                          unitBreakdownResponseData
                              .eventBreackDownTrackings!.length,
                          (index) {
                            final formattedDateBD = CommonUtils.isEmpty(
                                    unitBreakdownResponseData
                                        .eventBreackDownTrackings![index]
                                        .progressStart)
                                ? '-'
                                : CommonUtils.formatDateDetailBreakdown(
                                    unitBreakdownResponseData
                                        .eventBreackDownTrackings![index]
                                        .progressStart!);
                            return ItemStatusPerbaikanWidget(
                              isComplete: unitBreakdownResponseData
                                          .eventBreackDownTrackings!.length ==
                                      1
                                  ? true
                                  : index != 0
                                      ? false
                                      : true,
                              status: unitBreakdownResponseData
                                          .eventBreackDownTrackings!.length ==
                                      1
                                  ? 'In Progress\n$formattedDateBD'
                                  : index != 0
                                      ? formattedDateBD
                                      : 'In Progress\n$formattedDateBD',
                              value: unitBreakdownResponseData
                                      .eventBreackDownTrackings![index]
                                      .eventBreakdownTracking ??
                                  '-',
                              isLastIndex: index ==
                                  unitBreakdownResponseData
                                          .eventBreackDownTrackings!.length -
                                      1,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}

class ItemStatusPerbaikanWidget extends StatelessWidget {
  const ItemStatusPerbaikanWidget({
    super.key,
    required this.status,
    required this.value,
    required this.isComplete,
    this.isLastIndex = false,
  });
  final String status;
  final String value;
  final bool isComplete;
  final bool isLastIndex;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                width: 160.w,
                child: SharedComponent.label(
                  text: status,
                  context: context,
                  typographyType: TypographyType.mediumH6,
                  color: isComplete
                      ? ColorTheme.textDark
                      : ColorTheme.textLightDark,
                ),
              ),
              if (!isLastIndex) ...[
                SizedBox(
                  height: 16.h,
                ),
              ],
            ],
          ),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 10.w,
                      lineWidth: 5,
                      animation: false,
                      percent: 1,
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: isComplete
                          ? ColorTheme.primary500
                          : ColorTheme.textLightDark,
                    ),
                    if (!isLastIndex) ...[
                      Expanded(
                        child: VerticalDivider(
                          width: 16.sp,
                          thickness: 2.sp,
                          color: ColorTheme.strokeTertiary,
                        ),
                      ),
                    ],
                  ],
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  children: [
                    SharedComponent.label(
                      text: value,
                      context: context,
                      typographyType: TypographyType.mediumH6,
                      color: isComplete
                          ? ColorTheme.textDark
                          : ColorTheme.textLightDark,
                    ),
                    if (!isLastIndex) ...[
                      SizedBox(height: 16.h),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IdentityValueWidget extends StatelessWidget {
  const IdentityValueWidget({
    super.key,
    required this.title,
    required this.textValue,
    required this.icon,
  });

  final String title;
  final String textValue;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              color: ColorTheme.textLightDark,
              icon,
              size: 16.sp,
            ),
            SizedBox(
              width: 4.w,
            ),
            SharedComponent.label(
              text: title,
              context: context,
              typographyType: TypographyType.mediumH6,
              color: ColorTheme.textLightDark,
            ),
          ],
        ),
        SizedBox(
          height: 6.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: false,
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
              child: Icon(
                color: ColorTheme.textLightDark,
                icon,
                size: 16.sp,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Expanded(
              child: SharedComponent.label(
                text: textValue,
                context: context,
                typographyType: TypographyType.mediumH6,
              ),
            )
          ],
        ),
      ],
    );
  }
}
