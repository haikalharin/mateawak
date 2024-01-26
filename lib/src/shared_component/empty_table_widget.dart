import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_shared/module_shared.dart';

import '../constants/constant.dart';

class EmptyTableWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final TypographyType titleTypograph;
  final TypographyType subtitleTypograph;
  const EmptyTableWidget({
    super.key,
    this.title = 'Woops! Hasil Tidak Ditemukan',
    this.subtitle =
        'Kami tidak dapat menemukan apa yang Anda cari. Coba ubah kata kunci.',
    this.titleTypograph = TypographyType.largeH5,
    this.subtitleTypograph = TypographyType.mediumH6,
  });

  @override
  Widget build(BuildContext context) {
    return RPadding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            SvgPicture.asset(
              ImageConstant.emptyTable,
              // width: 200.sp,
              // height: 120.sp,
              package: 'module_etamkawa',
            ),
            SizedBox(height: 12.h),
            Image.asset(
              ImageConstant.logoBSpace,
              package: Constant.moduleBPS,
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
