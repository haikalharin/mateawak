import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    Key? key,
    required this.title,
    required this.isActive,
    required this.onTap,
    this.textColor,
    this.withIcon = false,
  }) : super(key: key);

  final String title;
  final bool isActive;
  final Color? textColor;
  final bool withIcon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: isActive ? ColorTheme.primary500 : ColorTheme.backgroundWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: ColorTheme.strokeTertiary,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () => onTap(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SharedComponent.label(
                  text: title,
                  context: context,
                  typographyType: TypographyType.body,
                  textAlign: TextAlign.center,
                  color: isActive ? ColorTheme.textWhite : textColor),
              Visibility(
                visible: withIcon,
                child: SizedBox(
                  width: 8.sp,
                ),
              ),
              Visibility(
                visible: withIcon,
                child: CircleAvatar(
                  backgroundColor: ColorTheme.textLightDark,
                  radius: 7.sp,
                  child: Icon(
                    Icons.close,
                    size: 10.sp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
