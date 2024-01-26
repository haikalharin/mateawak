import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

class RadioItemSmall extends StatelessWidget {
  final String title;
  final String value;
  final Function()? onTap;
  final bool isSelected;
  const RadioItemSmall({
    super.key,
    required this.title,
    required this.value,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 14.sp),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? ColorTheme.primary500
                : ColorTheme.buttonSecondaryStroke,
          ),
          borderRadius: BorderRadius.circular(10.r),
          color: ColorTheme.backgroundWhite,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(4.sp),
              width: 16.sp,
              height: 16.sp,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected
                      ? ColorTheme.primary500
                      : ColorTheme.iconLightDark,
                  width: isSelected ? 5.sp : 1,
                ),
                shape: BoxShape.circle,
                color: ColorTheme.iconWhite,
              ),
            ),
            SizedBox(width: 8.w),
            SharedComponent.label(
              text: title,
              context: context,
              typographyType: TypographyType.body,
              color: ColorTheme.textDark,
            ),
          ],
        ),
      ),
    );
  }
}
