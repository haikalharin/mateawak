import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/constants/telematry.constant.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../../constants/constant.dart';
import '../../../../../constants/image.constant.dart';
import '../../../../setting/presentation/controller/setting.controller.dart';
import '../../../../../shared_component/async_value_widget.dart';
import '../../../../../shared_component/empty_state_widget.dart';
import '../../../../../shared_component/icon_notification_widget.dart';
import '../../../domain/achievement_produksi_response.remote.dart';
import '../../controller/overview.controller.dart';
import '../chart/card_chart_overview_widget.dart';
import '../chart/mtd_ytd_widget.dart';
import 'card_achievement_widget.dart';

class HeaderOverviewWidget extends ConsumerWidget {
  HeaderOverviewWidget({super.key, required this.isScrolled});

  final bool isScrolled;

  final coverHeight = 185.h + 42.h;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexMenuOverview = ref.watch(indexMenuOverviewProvider);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Consumer(
          builder: (context, consRef, child) {
            return AsyncValueWidget(
              value: consRef.watch(isDayShiftProvider),
              data: (result) {
                return Image(
                  image: AssetImage(
                    result
                        ? ImageConstant.bgHeaderOverviewDay
                        : ImageConstant.bgHeaderOverviewNight,
                    package: 'module_etamkawa',
                  ),
                  height: coverHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
              customLoading: Image(
                image: const AssetImage(
                  ImageConstant.bgHeaderOverviewDay,
                  package: 'module_etamkawa',
                ),
                height: coverHeight,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              onError: (p0, p1) => Image(
                image: const AssetImage(
                  ImageConstant.bgHeaderOverviewDay,
                  package: 'module_etamkawa',
                ),
                height: coverHeight,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
          child: Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: isScrolled ? 0 : 1,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Consumer(
                          builder: (context, consRef, child) {
                            return InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {

                                context.pop();
                                context.pop();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.close_rounded,
                                  size: 26.sp,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: [
                                Image.asset(
                                  ImageConstant.logoBuma,
                                  height: 26.h,
                                  package: 'module_etamkawa',
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Image.asset(
                                  ImageConstant.logoAdt58,
                                  height: 26.h,
                                  package: 'module_etamkawa',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Consumer(
                          builder: (context, consRef, child) {
                            return AsyncValueWidget(
                              value: consRef.watch(isDayShiftProvider),
                              data: (result) {
                                return Text(
                                  'Etam Kawa',
                                  style: TextStyle(
                                    fontSize: 29.sp,
                                    fontWeight: FontWeight.w600,
                                    color: result ? null : ColorTheme.textWhite,
                                  ),
                                );
                              },
                              customLoading: Text(
                                ' Etam Kawa',
                                style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.w600,
                                  color: null,
                                ),
                              ),
                              onError: (p0, p1) => Text(
                                ' Etam Kawa',
                                style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.w600,
                                  color: null,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                if (!isScrolled)
                  Row(
                    children: [
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            context.goNamed(setting, pathParameters: {
                              'currentIndex': '$indexMenuOverview'
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.tune_rounded, size: 26.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            context.goNamed(notification, pathParameters: {
                              'currentIndex': '$indexMenuOverview'
                            });
                          },
                          child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: IconNotificationWidget()),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderSlideWidget extends ConsumerWidget {
  const HeaderSlideWidget({
    super.key,
    required this.getActiveMaterials,
    required this.getActiveAreas,
    required this.screenOccupation,
    this.userModel,
  });

  final List<String> getActiveMaterials;
  final List<String> getActiveAreas;
  final UserModel? userModel;

  final List<int> screenOccupation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ExpandableCarousel(
          options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: false,
              showIndicator: false,
              onPageChanged: (index, _) {
                if (getActiveMaterials.length > 1) {
                  ref.read(indexSliderProvider.notifier).state = index;
                }
              }),
          items: getActiveMaterials.map((i) {
            return AsyncValueWidget(
                value: ref.watch(getAchievementProduksiProvider(
                  areas: getActiveAreas,
                  material: i,
                  adAccount: userModel?.adAccount,
                  uid: userModel?.employeeID ?? 0,
                )),
                data: (data) {
                  return data != null
                      ? VisibilityDetector(
                          key: const ValueKey(TelematryConstant.overviewBanner),
                          onVisibilityChanged: (visibilityInfo) {
                            if (context.mounted) {

                            }
                          },
                          child: AchievementAndChartWidget(
                            userModel: userModel,
                            getActiveAreas: getActiveAreas,
                            data: data,
                            i: i,
                          ),
                        )
                      : const EmptyStateWidget();
                });
          }).toList(),
        ),
        if (getActiveMaterials.length > 1) ...[
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: getActiveMaterials.asMap().entries.map((entry) {
              return Container(
                width: 8.h,
                height: 4.h,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(40.r),
                    color: ref.watch(indexSliderProvider) == entry.key
                        ? ColorTheme.neutral500
                        : ColorTheme.neutral300),
              );
            }).toList(),
          )
        ]
      ],
    );
  }
}

class AchievementAndChartWidget extends StatelessWidget {
  const AchievementAndChartWidget({
    super.key,
    required this.userModel,
    required this.getActiveAreas,
    required this.data,
    required this.i,
  });

  final UserModel? userModel;
  final List<String> getActiveAreas;
  final AchievementProduksiResponseRemote data;
  final String i;

  @override
  Widget build(BuildContext context) {
    final editedAreas = getActiveAreas
        .map(
          (e) => e.capitalize(),
        )
        .toList()
        .toString()
        .replaceAll('All,', '');

    return Column(
      children: [
        CardAchievement(
          achievementProduksiResponseRemote: data,
          isOB: i == Constant.ob,
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4.sp,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                    image: const AssetImage(ImageConstant.iconMap,
                        package: 'module_etamkawa'),
                    height: 16.w,
                    width: 16.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  SharedComponent.label(
                    text:
                        'Area: ${editedAreas.substring(1, editedAreas.length - 1)}',
                    context: context,
                    typographyType: TypographyType.body,
                  ),
                ],
              ),
              Consumer(
                builder: (context, consRef, child) {
                  return AsyncValueWidget(
                    value: consRef.watch(
                      getUnitBreakdownProvider(
                        areas: getActiveAreas,
                        material: i,
                        adAccount: userModel?.adAccount,
                        uid: userModel?.employeeID ?? 0,
                      ),
                    ),
                    data: (result) {
                      final loadTime =
                          CommonUtils.isEmpty(result.first.loadDateTime)
                              ? '--:--'
                              : CommonUtils.formatDateToHoursMinute(
                                  result.first.loadDateTime!);

                      return SharedComponent.label(
                        text: 'Diperbarui, $loadTime',
                        context: context,
                        typographyType: TypographyType.body,
                        color: ColorTheme.textLightDark,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        CardChartOverviewWidget(
          adAccount: userModel?.adAccount,
          uid: userModel?.employeeID ?? 0,
          getActiveAreas: getActiveAreas,
          dailyActual: data.dailyAchievementActual ?? 0,
          dailyPlan: data.dailyAchievementPlan ?? 0,
          isOb: i == Constant.ob,
          mtdYtd: MtdYtdCarouselWidget(i, data),
        ),
      ],
    );
  }
}

class MtdYtdCarouselWidget extends ConsumerStatefulWidget {
  const MtdYtdCarouselWidget(this.i, this.data, {super.key});
  final String i;
  final AchievementProduksiResponseRemote data;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MtdYtdCarouselWidgetState();
}

class _MtdYtdCarouselWidgetState extends ConsumerState<MtdYtdCarouselWidget> {
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return ExpandableCarousel(
      options: CarouselOptions(
          controller: carouselController,
          viewportFraction: 1,
          autoPlay: false,
          showIndicator: false,
          onPageChanged: (index, _) {
            ref.read(indexMtdYtdSliderProvider.notifier).state = index;
          }),
      items: List.generate(
        2,
        (index) => Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.w, right: 4.w),
              child: GestureDetector(
                onTap: index == 1
                    ? () {
                        carouselController.previousPage();
                      }
                    : null,
                child: Icon(
                  Icons.chevron_left_rounded,
                  size: 24.sp,
                  color: index == 0
                      ? ColorTheme.iconLightDark
                      : ColorTheme.iconDark,
                ),
              ),
            ),
            MtdYtdWidget(
              isOb: widget.i == Constant.ob,
              isMtd: true,
              achievementProduksiResponseRemote: widget.data,
            ),
            Container(
              height: 80.h,
              color: ColorTheme.strokeTertiary,
              width: 2,
              margin: EdgeInsets.symmetric(horizontal: 8.w),
            ),
            MtdYtdWidget(
              isOb: widget.i == Constant.ob,
              isMtd: false,
              achievementProduksiResponseRemote: widget.data,
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.w, right: 2.w),
              child: GestureDetector(
                onTap: index == 0
                    ? () {
                        carouselController.nextPage();
                      }
                    : null,
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 24.sp,
                  color: index == 1
                      ? ColorTheme.iconLightDark
                      : ColorTheme.iconDark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
