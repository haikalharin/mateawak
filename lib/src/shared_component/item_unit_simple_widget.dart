import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_shared/module_shared.dart';

class ItemUnitSimpleWidget extends StatelessWidget {
  final String groupUnit;
  final String equipment;
  final String status;
  final String statusName;
  final Function()? onTap;
  const ItemUnitSimpleWidget({
    super.key,
    required this.groupUnit,
    required this.equipment,
    required this.status,
    required this.statusName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor = switch (status) {
      Constant.liveUnitStatusReady => ColorTheme.primary100,
      Constant.liveUnitStatusStandby => ColorTheme.secondary100,
      Constant.liveUnitStatusDelay => ColorTheme.info100,
      _ => ColorTheme.danger100,
    };
    Color statusColorText = switch (status) {
      Constant.liveUnitStatusReady => ColorTheme.primary500,
      Constant.liveUnitStatusStandby => ColorTheme.secondary500,
      Constant.liveUnitStatusDelay => ColorTheme.info500,
      _ => ColorTheme.danger500,
    };

    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                groupUnit == Constant.hauler
                    ? ImageConstant.iconLiveHauler
                    : ImageConstant.iconLiveLoader,
                width: 32.sp,
                height: 32.sp,
                package: 'module_etamkawa',
              ),
              SizedBox(width: 8.w),
              SharedComponent.label(
                text: equipment,
                context: context,
                typographyType: TypographyType.largeH5,
                color: ColorTheme.textDark,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: statusColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 4.h,
                    horizontal: 8.w,
                  ),
                  child: SharedComponent.label(
                    text: statusName,
                    context: context,
                    typographyType: TypographyType.body,
                    color: statusColorText,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Icon(
                Icons.arrow_forward_rounded,
                size: 16.sp,
                color: ColorTheme.iconLightDark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
