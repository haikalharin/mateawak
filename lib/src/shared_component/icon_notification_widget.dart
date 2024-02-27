import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'async_value_widget.dart';

class IconNotificationWidget extends ConsumerWidget {
  const IconNotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return  Icon(
      Icons.notifications_rounded,
      size: 26.sp,
    );
  }
}
