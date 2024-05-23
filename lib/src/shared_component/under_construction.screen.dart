import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

import '../../module_etamkawa.dart';

class UnderConstructionEtamKawaScreen extends StatelessWidget {
  const UnderConstructionEtamKawaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RPadding(
        padding: const EdgeInsets.all(44.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageSharedConstant.underConstruction),
            SizedBox(height: 16.h),
            SharedComponent.label(
              text: 'Oops Sorry! ${EtamKawaTranslate.pageArentReady}',
              context: context,
              typographyType: TypographyType.largeH5,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.h),
            SharedComponent.label(
              text: EtamKawaTranslate.comeBackLater,
              context: context,
              typographyType: TypographyType.body,
              textAlign: TextAlign.center,
              color: ColorTheme.textLightDark,
            ),
          ],
        ),
      ),
    );
  }
}
