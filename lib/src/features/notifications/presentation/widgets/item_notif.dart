import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_shared/module_shared.dart';

import '../controller/notification_controller.dart';

class ItemNotif extends StatelessWidget {
  const ItemNotif(
      {super.key,
      required this.isHighlight,
      required this.title,
      required this.subTitle,
      required this.desc,
      required this.notifId});
  final bool isHighlight;
  final String title;
  final String subTitle;
  final String desc;
  final String notifId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: isHighlight ? ColorTheme.primary100 : null,
          child: Consumer(builder: (context, consRef, _) {
            final isConnectionAvailable =
                consRef.watch(isConnectionAvailableProvider);
            return InkWell(
              onTap: isConnectionAvailable
                  ? () async {
                      final userModel = await consRef
                          .read(helperUserProvider)
                          .getUserProfile();

                      await consRef.read(markAsReadNotificationProvider(
                              employeeId: userModel?.employeeID ?? 0,
                              notifId: notifId,
                              isMarkAllRead: 0)
                          .future);
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SharedComponent.label(
                        text: title,
                        context: context,
                        color: ColorTheme.textLightDark,
                        typographyType: TypographyType.small),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        if (isHighlight) ...[
                          Container(
                            width: 12.sp,
                            height: 12.sp,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorTheme.danger500,
                              border: Border.all(
                                color: ColorTheme.backgroundWhite,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4.h,
                          ),
                        ],
                        SharedComponent.label(
                            text: subTitle,
                            context: context,
                            typographyType: TypographyType.capitalH7)
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    SharedComponent.label(
                        text: desc,
                        context: context,
                        typographyType: TypographyType.small)
                  ],
                ),
              ),
            );
          }),
        ),
        Container(
          height: 1.h,
          width: double.infinity,
          color: ColorTheme.neutral300,
        )
      ],
    );
  }
}
