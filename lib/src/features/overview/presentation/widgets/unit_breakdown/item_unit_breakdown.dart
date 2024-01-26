import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/overview/domain/unit_breakdown_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/presentation/widgets/unit_breakdown/detail_unit_breakdown.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../../shared_component/item_unit_simple_widget.dart';

class ItemUnitBreakDown extends StatelessWidget {
  const ItemUnitBreakDown({
    super.key,
    required this.data,
    this.isLastIndex = false,
    required this.isFromOverview,
  });
  final UnitBreakdownResponseRemote data;
  final bool isLastIndex;
  final bool isFromOverview;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, consRef, child) {
        return Column(
          children: [
            ItemUnitSimpleWidget(
              equipment: data.equipment ?? '-',
              groupUnit: data.groupUnit ?? Constant.loader,
              status: Constant.liveUnitStatusBD,
              statusName:
                  data.eventBreackDownTrackings?.first.eventBreakdownTracking ??
                      '-',
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  useSafeArea: true,
                  builder: (BuildContext context) {
                    return DetailUnitBreakdown(
                      unitBreakdownResponseData: data,
                    );
                  },
                ).then(
                  (value) {
                    if (isFromOverview) {
                      // consRef
                      //     .read(telematryControllerProvider.notifier)
                      //     .onVisibilityChangedSingleWidget(
                      //         TelematryConstant.overviewUnitBreakdown);
                    } else {
                      // consRef
                      //     .read(telematryControllerProvider.notifier)
                      //     .onVisibilityChangedSingleWidget(
                      //         TelematryConstant.overviewUnitBreakdownList);
                    }
                  },
                );
              },
            ),
            if (!isLastIndex) ...[
              Divider(
                height: 25.sp,
                thickness: 1,
                color: ColorTheme.strokeTertiary,
              ),
            ],
          ],
        );
      },
    );
  }
}
