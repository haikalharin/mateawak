import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_bps/src/constants/constant.dart';
import 'package:module_bps/src/constants/image.constant.dart';
import 'package:module_bps/src/features/rca/domain/banner_waterfall_response_remote.dart';
import 'package:module_bps/src/features/rca/presentation/controller/rca.controller.dart';
import 'package:module_bps/src/shared_component/async_value_widget.dart';
import 'package:module_bps/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

class OverviewWeather extends StatelessWidget {
  final List<String> getActiveAreas;
  final String? adAccount;
  final int uid;
  final bool isOB;
  const OverviewWeather({
    super.key,
    required this.getActiveAreas,
    required this.adAccount,
    required this.uid,
    this.isOB = true,
  });

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
      margin: EdgeInsets.zero,
      child: Consumer(
        builder: (context, consRef, child) {
          return AsyncValueWidget(
            value: consRef.watch(
              getBannerWaterfallProvider(
                areas: getActiveAreas,
                material: isOB ? Constant.ob : Constant.cm,
                adAccount: adAccount,
                uid: uid,
              ),
            ),
            data: (result) {
              BannerWaterfallResponseRemote? rainData;
              BannerWaterfallResponseRemote? slipperyData;
              BannerWaterfallResponseRemote? fogData;
              BannerWaterfallResponseRemote? dustyData;
              BannerWaterfallResponseRemote? safetyData;
              for (final item in result) {
                switch (item.description?.toUpperCase()) {
                  case Constant.rain:
                    rainData = item;
                    break;
                  case Constant.slippery:
                    slipperyData = item;
                    break;
                  case Constant.fog:
                    fogData = item;
                    break;
                  case Constant.dusty:
                    dustyData = item;
                    break;
                  case Constant.safety:
                    safetyData = item;
                    break;
                  default:
                }
              }

              return GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => _WeatherDialog(
                      rainData: rainData ?? BannerWaterfallResponseRemote(),
                      slipperyData:
                          slipperyData ?? BannerWaterfallResponseRemote(),
                      fogData: fogData ?? BannerWaterfallResponseRemote(),
                      dustyData: dustyData ?? BannerWaterfallResponseRemote(),
                      safetyData: safetyData ?? BannerWaterfallResponseRemote(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8.sp),
                  color: ColorTheme.backgroundWhite,
                  child: Row(
                    children: [
                      Expanded(
                        child: Table(
                          border: TableBorder.symmetric(
                            inside: BorderSide(
                              color: ColorTheme.neutral200,
                            ),
                          ),
                          children: [
                            TableRow(
                              children: [
                                _WeatherItem(
                                  icon: ImageConstant.iconRainFill,
                                  title: 'Rain',
                                  duration: rainData?.durationHour ?? 0,
                                ),
                                _WeatherItem(
                                  icon: ImageConstant.iconWater,
                                  title: 'Slippery',
                                  duration: slipperyData?.durationHour ?? 0,
                                ),
                                _WeatherItem(
                                  icon: ImageConstant.iconFoggyFill,
                                  title: 'Fog',
                                  duration: fogData?.durationHour ?? 0,
                                ),
                                _WeatherItem(
                                  icon: ImageConstant.iconDusty,
                                  title: 'Dusty',
                                  duration: dustyData?.durationHour ?? 0,
                                ),
                                _WeatherItem(
                                  icon: ImageConstant.iconSafety,
                                  title: 'Safety',
                                  duration: safetyData?.durationHour ?? 0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 16.sp,
                        color: ColorTheme.iconLightDark,
                      ),
                    ],
                  ),
                ),
              );
            },
            customLoading: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _WeatherItem extends StatelessWidget {
  final String icon;
  final String title;
  final double duration;
  const _WeatherItem({
    required this.icon,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          width: 16.sp,
          height: 16.sp,
          package: 'module_bps',
        ),
        SizedBox(height: 4.h),
        SharedComponent.label(
          text: title,
          context: context,
          typographyType: TypographyType.small,
        ),
        SizedBox(height: 4.h),
        SharedComponent.label(
          text: CommonUtils.formatThousandFromNumber(duration),
          context: context,
          typographyType: TypographyType.bold,
        ),
      ],
    );
  }
}

class _WeatherDialog extends StatelessWidget {
  final BannerWaterfallResponseRemote rainData;
  final BannerWaterfallResponseRemote slipperyData;
  final BannerWaterfallResponseRemote fogData;
  final BannerWaterfallResponseRemote dustyData;
  final BannerWaterfallResponseRemote safetyData;
  const _WeatherDialog({
    required this.rainData,
    required this.slipperyData,
    required this.fogData,
    required this.dustyData,
    required this.safetyData,
  });

  @override
  Widget build(BuildContext context) {
    final totalRain = rainData.detailTime?.length ?? 0;
    final totalFog = fogData.detailTime?.length ?? 0;
    final totalSlippery = slipperyData.detailTime?.length ?? 0;
    final totalDusty = dustyData.detailTime?.length ?? 0;
    final totalSafety = safetyData.detailTime?.length ?? 0;

    return Dialog(
      child: Container(
        padding: EdgeInsets.all(24.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: ColorTheme.backgroundWhite,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SharedComponent.label(
                  text: 'Informasi',
                  context: context,
                  typographyType: TypographyType.largeH5,
                ),
                GestureDetector(
                  child: Icon(
                    Icons.close_rounded,
                    size: 24.sp,
                    color: ColorTheme.iconLightDark,
                  ),
                  onTap: () {
                    context.pop();
                  },
                ),
              ],
            ),
            SizedBox(height: 16.h),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _DialogItem(
                    title: 'Rain',
                    sum: totalRain,
                    data: rainData,
                  ),
                  VerticalDivider(
                    width: 9,
                    thickness: 1,
                    color: ColorTheme.neutral200,
                  ),
                  _DialogItem(
                    title: 'Slippery',
                    sum: totalSlippery,
                    data: slipperyData,
                  ),
                  VerticalDivider(
                    width: 9,
                    thickness: 1,
                    color: ColorTheme.neutral200,
                  ),
                  _DialogItem(
                    title: 'Fog',
                    sum: totalFog,
                    data: fogData,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _DialogItem(
                    title: 'Dusty',
                    sum: totalDusty,
                    data: dustyData,
                  ),
                  VerticalDivider(
                    width: 9,
                    thickness: 1,
                    color: ColorTheme.neutral200,
                  ),
                  _DialogItem(
                    title: 'Safety',
                    sum: totalSafety,
                    data: safetyData,
                  ),
                  VerticalDivider(
                    width: 9,
                    thickness: 1,
                    color: ColorTheme.neutral200,
                  ),
                  const Expanded(
                    child: SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DialogItem extends StatelessWidget {
  final String title;
  final int sum;
  final BannerWaterfallResponseRemote data;
  const _DialogItem({
    required this.title,
    required this.sum,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SharedComponent.label(
            text: sum > 1 ? '$title ($sum)' : title,
            context: context,
            typographyType: TypographyType.mediumH6,
          ),
          SizedBox(
            height: 8.h,
          ),
          sum > 0 &&
                  !CommonUtils.isEmpty(data.detailTime?.first.timeStart) &&
                  !CommonUtils.isEmpty(data.detailTime?.first.timeEnd)
              ? Column(
                  children: List.generate(
                    sum,
                    (index) => SharedComponent.label(
                      text:
                          '${CommonUtils.formatDateToHoursMinute(data.detailTime![index].timeStart!)} - '
                          '${CommonUtils.formatDateToHoursMinute(data.detailTime![index].timeEnd!)}',
                      context: context,
                      typographyType: TypographyType.body,
                    ),
                  ),
                )
              : SharedComponent.label(
                  text: '-',
                  context: context,
                  typographyType: TypographyType.body,
                ),
        ],
      ),
    );
  }
}
