import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module_bps/src/constants/image.constant.dart';
import 'package:module_shared/module_shared.dart';

class EmptyStateWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final TypographyType titleTypograph;
  final TypographyType subtitleTypograph;
  const EmptyStateWidget({
    super.key,
    this.title = 'Tidak Ada Data',
    this.subtitle = 'Data akan muncul disini jika sudah tersedia',
    this.titleTypograph = TypographyType.largeH5,
    this.subtitleTypograph = TypographyType.mediumH6,
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
              ImageConstant.emptyState,
              width: 200.sp,
              height: 120.sp,
              package: 'module_bps',
            ),
            SizedBox(height: 8.h),
            SharedComponent.label(
              text: title,
              context: context,
              typographyType: titleTypograph,
              color: ColorTheme.textDark,
            ),
            SizedBox(height: 8.h),
            SharedComponent.label(
              text: subtitle,
              context: context,
              typographyType: subtitleTypograph,
              color: ColorTheme.textLightDark,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
