import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

class MiniChartWidget extends StatelessWidget {
  final Widget? additionalWidget;
  final Widget child;
  final Function()? onTap;
  const MiniChartWidget({
    super.key,
    this.additionalWidget,
    required this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            additionalWidget ?? const SizedBox.shrink(),
            InkWell(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: ColorTheme.primary100,
                ),
                width: 28.sp,
                height: 28.sp,
                child: Icon(
                  Icons.open_in_full_rounded,
                  size: 20.sp,
                  color: ColorTheme.primary500,
                ),
              ),
            ),
          ],
        ),
        child,
      ],
    );
  }
}
