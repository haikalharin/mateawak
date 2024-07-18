import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_shared/module_shared.dart';

class RadioItem extends StatelessWidget {
  final bool isMission;
  final String title;
  final String? title2;
  final Function()? onTap;
  final bool isSelected;
  final String value;

  const RadioItem({
    super.key,
    required this.isMission,
    required this.title,
    this.title2,
    required this.value,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(16.sp, 8.sp, 16.sp, 8.sp),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SharedComponent.label(
                    text: title,
                    context: context,
                    typographyType: TypographyType.paragraph,
                    color: ColorTheme.neutral600,
                  ),
                  if (isMission)
                    SharedComponent.label(
                      text: title2 ?? '',
                      context: context,
                      typographyType: TypographyType.paragraph,
                      color: ColorTheme.neutral600,
                    ),
                ],
              ),
            ),
            Expanded(flex: 0, child: SizedBox(width: 8.w)),
            Expanded(
              flex: 0,
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
