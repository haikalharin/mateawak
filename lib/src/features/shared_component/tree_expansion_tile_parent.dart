import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module_bps/src/constants/image.constant.dart';
import 'package:module_bps/src/shared_component/custom_site_expansion_tile.dart';
import 'package:module_shared/module_shared.dart';

class TreeExpansionTileParent extends StatelessWidget {
  final Widget title;
  final Widget? trailing;
  final List<Widget> children;
  final bool isFirstIndex;
  final bool isLastIndex;
  final bool initiallyExpanded;
  final EdgeInsets? iconPadding;
  final Color? backgroundColor;
  final Color? borderColor;
  const TreeExpansionTileParent({
    super.key,
    required this.title,
    this.trailing,
    required this.children,
    this.isFirstIndex = false,
    this.isLastIndex = false,
    this.initiallyExpanded = false,
    this.iconPadding,
    this.backgroundColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final firstBorderRadius = BorderRadius.only(
      topLeft: Radius.circular(10.r),
      topRight: Radius.circular(10.r),
    );
    final lastBorderRadius = BorderRadius.only(
      bottomLeft: Radius.circular(10.r),
      bottomRight: Radius.circular(10.r),
    );

    final firstBorder = Border(
      top: BorderSide(
        color: borderColor ?? ColorTheme.strokeTertiary,
      ),
      bottom: BorderSide(
        color: borderColor ?? ColorTheme.strokeTertiary,
        width: 0,
      ),
      left: BorderSide(
        color: borderColor ?? ColorTheme.strokeTertiary,
      ),
      right: BorderSide(
        color: borderColor ?? ColorTheme.strokeTertiary,
      ),
    );
    final middleBorder = Border(
      top: BorderSide(
        color: borderColor ?? ColorTheme.strokeTertiary,
      ),
      bottom: BorderSide(
        color: borderColor ?? ColorTheme.strokeTertiary,
        width: 0,
      ),
      left: BorderSide(
        color: borderColor ?? ColorTheme.strokeTertiary,
      ),
      right: BorderSide(
        color: borderColor ?? ColorTheme.strokeTertiary,
      ),
    );
    final allBorder = Border.all(
      color: borderColor ?? ColorTheme.strokeTertiary,
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        border: isLastIndex ? allBorder : firstBorder,
        borderRadius: isFirstIndex && isLastIndex
            ? BorderRadius.circular(10.r)
            : isFirstIndex
                ? firstBorderRadius
                : isLastIndex
                    ? lastBorderRadius
                    : BorderRadius.zero,
        color: backgroundColor ?? ColorTheme.backgroundWhite,
      ),
      child: CustomSiteExpansionTile(
        initiallyExpanded: initiallyExpanded,
        shape: RoundedRectangleBorder(
          borderRadius: isFirstIndex
              ? firstBorderRadius
              : isLastIndex
                  ? lastBorderRadius
                  : BorderRadius.zero,
        ),
        expandIcon: Padding(
          padding: iconPadding ??
              EdgeInsets.symmetric(
                horizontal: 4.sp,
              ),
          child: SvgPicture.asset(
            ImageConstant.iconExpand,
            width: 24.sp,
            height: 24.sp,
            package: 'module_bps',
          ),
        ),
        collapseIcon: Padding(
          padding: iconPadding ??
              EdgeInsets.symmetric(
                horizontal: 4.sp,
              ),
          child: SvgPicture.asset(
            ImageConstant.iconCollapse,
            width: 24.sp,
            height: 24.sp,
            package: 'module_bps',
          ),
        ),
        title: title,
        trailing: trailing,
        tilePadding: EdgeInsets.symmetric(
          horizontal: 8.sp,
        ),
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              border: isFirstIndex && isLastIndex
                  ? Border.all(
                      color: borderColor ?? ColorTheme.strokeTertiary,
                    )
                  : isFirstIndex
                      ? firstBorder
                      : isLastIndex
                          ? allBorder
                          : middleBorder,
              borderRadius: isFirstIndex && isLastIndex
                  ? BorderRadius.circular(10.r)
                  : isLastIndex
                      ? lastBorderRadius
                      : BorderRadius.zero,
              color: ColorTheme.backgroundWhite,
            ),
            child: Column(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
