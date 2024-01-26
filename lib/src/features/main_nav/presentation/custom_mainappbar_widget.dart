import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_bps/src/configs/navigations/routes.dart';
import 'package:module_bps/src/features/telematry/infrastructure/repositories/telematry.repositories.dart';
import 'package:module_bps/src/features/telematry/presentation/controller/telematry.controller.dart';
import 'package:module_bps/src/shared_component/connection_listener_widget.dart';
import 'package:module_bps/src/shared_component/icon_notification_widget.dart';
import 'package:module_shared/module_shared.dart';

class CustomMainAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomMainAppbarWidget(
      {super.key,
      required this.title,
      required this.currentIndex,
      required this.ref});

  final String title;
  final int currentIndex;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: ref.watch(isConnectionAvailableProvider) ? 40.h : 16.h,
              right: 16.w,
              left: 16.w,
              bottom: 16.h),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  ref
                      .read(telematryControllerProvider.notifier)
                      .sendTelematryInBackground();

                  ref.invalidate(getUserInfosRemoteProvider);
                  context.pop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.close_rounded, size: 26.sp),
                ),
              ),
              SizedBox(
                width: 24.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SharedComponent.label(
                      text: 'BPS',
                      context: context,
                      typographyType: TypographyType.largeH5,
                      color: ColorTheme.textDark,
                    ),
                    SharedComponent.label(
                      text: title,
                      context: context,
                      typographyType: TypographyType.mediumH6,
                      color: ColorTheme.textLightDark,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      context.goNamed(setting,
                          pathParameters: {'currentIndex': '$currentIndex'});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.tune_rounded, size: 26.sp),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      context.goNamed(notification,
                          pathParameters: {'currentIndex': '$currentIndex'});
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: IconNotificationWidget(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: ColorTheme.strokeTertiary,
        )
      ],
    );
  }

  @override
  Size get preferredSize {
    final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
    return Size.fromHeight(isConnectionAvailable ? 0.12.sh : 0.076.sh);
  }
}
