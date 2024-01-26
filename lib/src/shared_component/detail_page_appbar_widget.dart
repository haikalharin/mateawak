import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_shared/module_shared.dart';

class DetailPageAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const DetailPageAppBarWidget({
    super.key,
    required this.title,
    required this.ref,
    this.onTap,
    this.trailing,
    this.isFullscreen = false,
  });

  final String title;
  final WidgetRef ref;
  final Function()? onTap;
  final Widget? trailing;
  final bool isFullscreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: ref.watch(isConnectionAvailableProvider) ? 40.sp : 16.sp,
            right: 16.sp,
            left: 16.sp,
            bottom: 16.sp,
          ),
          child: Row(
            children: [
              InkWell(
                onTap: onTap,
                child: Padding(
                  padding: EdgeInsets.all(4.sp),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 24.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 24.sp,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SharedComponent.label(
                      text: title,
                      context: context,
                      typographyType: isFullscreen
                          ? TypographyType.mediumH3
                          : TypographyType.largeH5,
                      color: ColorTheme.textDark,
                    ),
                  ],
                ),
              ),
              if (trailing != null) trailing!
            ],
          ),
        ),
        Container(
          height: 1.sp,
          width: double.infinity,
          color: ColorTheme.strokeTertiary,
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
    return Size.fromHeight(isConnectionAvailable ? 0.19.sh : 0.076.sh);
  }
}
