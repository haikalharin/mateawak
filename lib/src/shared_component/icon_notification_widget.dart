import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/shared_component/async_value_widget.dart';

import '../features/notifications/presentation/controller/notification_controller.dart';

class IconNotificationWidget extends ConsumerWidget {
  const IconNotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueWidget(
      value: ref.watch(getNotificationListForUnreadProvider),
      onError: (a, b) => Icon(
        Icons.notifications_rounded,
        size: 26.sp,
      ),
      data: (data) {
        final lengthData = data?.length ?? 0;
        bool isUnreadNotifExist = false;

        for (var i = 0; i < lengthData; i++) {
          if (data?[i].isRead == 0) {
            isUnreadNotifExist = true;
            break;
          }
        }

        return isUnreadNotifExist
            ? SvgPicture.asset(
                width: 26.sp,
                height: 26.sp,
                ImageConstant.iconNotifUnread,
                package: 'module_etamkawa',
              )
            : Icon(
                Icons.notifications_rounded,
                size: 26.sp,
              );
      },
      customLoading: SizedBox(
          height: 26.sp,
          width: 26.sp,
          child: const Center(child: CircularProgressIndicator())),
    );
  }
}
