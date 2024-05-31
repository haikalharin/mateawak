import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_shared/module_shared.dart';

class EtamkawaEmptyStateWidget extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const EtamkawaEmptyStateWidget({
    super.key,
    this.title = 'There’s no data yet.', required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RPadding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              ImageConstant.emptyStateUfo,
              width: 90.sp,
              height: 50.sp,
              package: 'module_etamkawa',
            ),
            SizedBox(height: 16.h),
            InkWell(onTap: onPressed,
              child: SharedComponent.label(
                text: title,
                context: context,
                typographyType: TypographyType.body,
                color: ColorTheme.textLightDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
