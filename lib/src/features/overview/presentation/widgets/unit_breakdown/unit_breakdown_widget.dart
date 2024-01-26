import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/constants/telematry.constant.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_shared/module_shared.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../../shared_component/async_value_widget.dart';
import '../../../../../shared_component/empty_state_widget.dart';
import '../../controller/overview.controller.dart';
import 'item_unit_breakdown.dart';

class UnitBreakdownWidget extends ConsumerWidget {
  const UnitBreakdownWidget({
    super.key,
    required this.materials,
    required this.areas,
    required this.screenOccupation,
    this.userModel,
  });

  final List<int> screenOccupation;
  final List<String> materials;
  final List<String> areas;
  final UserModel? userModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueWidget(
      value: ref.watch(
        getUnitBreakdownProvider(
          areas: areas,
          material: materials.first,
          adAccount: userModel?.adAccount,
          uid: userModel?.employeeID ?? 0,
        ),
      ),
      data: (data) {
        if (data.isNotEmpty) {
          return VisibilityDetector(
            key: const ValueKey(TelematryConstant.overviewUnitBreakdown),
            onVisibilityChanged: (visibilityInfo) {
              if (context.mounted) {
                // ref
                //     .read(telematryControllerProvider.notifier)
                //     .onVisibilityChangedMultiWidget(
                //       visibilityInfo,
                //       context,
                //       TelematryConstant.overviewUnitBreakdown,
                //       1,
                //       screenOccupation,
                //     );
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SharedComponent.label(
                  text: 'Unit Breakdown',
                  context: context,
                  typographyType: TypographyType.largeH5,
                ),
                SizedBox(height: 16.h),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: ColorTheme.strokeTertiary,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.all(16.sp),
                    child: Column(
                      children: [
                        ...List.generate(
                          data.length > 10 ? 10 : data.length,
                          (index) => ItemUnitBreakDown(
                            isFromOverview: true,
                            data: data[index],
                            isLastIndex: index ==
                                (data.length > 10 ? 9 : data.length - 1),
                          ),
                        ),
                        if (data.length > 3) ...[
                          SizedBox(height: 16.h),
                          InkWell(
                            onTap: () {
                              final indexMenuOverview =
                                  ref.watch(indexMenuOverviewProvider);

                              context.goNamed(unitbreakdown, pathParameters: {
                                'currentIndex': '$indexMenuOverview'
                              });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SharedComponent.label(
                                  text: 'Lihat Lebih Banyak',
                                  context: context,
                                  typographyType: TypographyType.body,
                                  color: ColorTheme.primary500,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Icon(
                                  weight: 40,
                                  Icons.arrow_forward_rounded,
                                  size: 16.sp,
                                  color: ColorTheme.primary500,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return const Center(
          child: EmptyStateWidget(),
        );
      },
    );
  }
}
