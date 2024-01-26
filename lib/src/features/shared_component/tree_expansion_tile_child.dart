import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module_bps/src/constants/image.constant.dart';
import 'package:module_bps/src/shared_component/custom_site_expansion_tile.dart';
import 'package:module_shared/module_shared.dart';

class TreeExpansionTileChild extends StatelessWidget {
  final Widget title;
  final Widget? trailing;
  final List<Widget> children;
  final Color? backgroundColor;
  final Color? borderColor;
  final EdgeInsets? iconPadding;
  final bool isWithBorder;
  final bool isWithHalfBorder;
  final bool isLastIndex;
  final bool initiallyExpanded;
  const TreeExpansionTileChild({
    super.key,
    required this.title,
    this.trailing,
    required this.children,
    this.backgroundColor,
    this.borderColor,
    this.iconPadding,
    this.isWithBorder = false,
    this.isWithHalfBorder = false,
    this.isLastIndex = false,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorTheme.backgroundWhite,
      ),
      child: CustomSiteExpansionTile(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        expandIcon: Padding(
          padding: iconPadding ??
              EdgeInsets.symmetric(
                horizontal: 4.sp,
              ),
          child: Row(
            children: [
              if (isWithBorder) ...[
                const _Border(),
              ],
              SvgPicture.asset(
                ImageConstant.iconDetailOpen,
                width: 24.sp,
                height: 40.sp,
                package: 'module_bps',
              ),
            ],
          ),
        ),
        collapseIcon: Padding(
          padding: iconPadding ??
              EdgeInsets.symmetric(
                horizontal: 4.sp,
              ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isWithHalfBorder) ...[
                const _HalfBorder(),
              ] else if (isWithBorder) ...[
                const _Border(),
              ],
              SvgPicture.asset(
                isLastIndex
                    ? ImageConstant.iconDetailCloseLast
                    : ImageConstant.iconDetailClose,
                width: 24.sp,
                height: 40.sp,
                package: 'module_bps',
              ),
            ],
          ),
        ),
        tilePadding: EdgeInsets.symmetric(
          horizontal: 8.sp,
        ),
        isWithPadding: false,
        title: title,
        trailing: trailing,
        initiallyExpanded: initiallyExpanded,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColor ?? ColorTheme.strokeTertiary,
              ),
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

class _Border extends StatelessWidget {
  const _Border();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: ColorTheme.iconLight,
              ),
            ),
          ),
          width: 12.sp,
          height: 40.sp,
        ),
        SizedBox(width: 4.sp),
      ],
    );
  }
}

class _HalfBorder extends StatelessWidget {
  const _HalfBorder();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: ColorTheme.iconLight,
              ),
              bottom: BorderSide(
                color: ColorTheme.iconLight,
              ),
            ),
          ),
          width: 16.sp,
          height: 20.5.sp,
        ),
      ],
    );
  }
}
