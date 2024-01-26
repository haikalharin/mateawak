import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

class CustomModalBottomSheet extends StatelessWidget {
  final List<Widget>? children;
  const CustomModalBottomSheet({
    super.key,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        color: ColorTheme.backgroundWhite,
      ),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 8.h),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: '#D9D9D9'.toColor(),
                ),
                height: 4.h,
                width: 20.w,
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.only(
                top: 12.h,
                bottom: Platform.isIOS ? 48.h : 24.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children ?? [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
