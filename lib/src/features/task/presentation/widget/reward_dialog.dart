import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/mission_detail/presentation/mission.detail.screen.dart';
import 'package:module_etamkawa/src/features/task/domain/result_submission_request.remote.dart';
import 'package:module_shared/module_shared.dart';

class RewardDialog extends StatelessWidget {
  const RewardDialog(
      {super.key,
      required this.rewardResponse,
      required this.isConnectionAvailable,
      this.onClosed});

  final ResultSubmissionRequestRemote rewardResponse;
  final bool isConnectionAvailable;
  final Function()? onClosed;

  @override
  Widget build(BuildContext context) {
    String imageConstant = ImageConstant.iconDialogSuccess;
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(24.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: ColorTheme.backgroundWhite,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              imageConstant,
              package: Constant.moduleEtamkawa,
            ),
            SizedBox(height: 10.h),
            SharedComponent.label(
              text: 'Hooray!',
              context: context,
              typographyType: TypographyType.largeH5,
              textAlign: TextAlign.center,
              color: ColorTheme.textDark,
            ),
            SizedBox(height: 16.h),
            SharedComponent.label(
              text: !isConnectionAvailable
                  ? 'Your mission has been submitted and will be synced the next time you are online'
                  : 'Yeay, your mission has been completed!',
              context: context,
              typographyType: TypographyType.body,
              textAlign: TextAlign.center,
              color: ColorTheme.textDark,
            ),
            SizedBox(height: 10.h),
            isConnectionAvailable
                ? Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: ColorTheme.strokeTertiary,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                    elevation: 0,
                    margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 10.h),
                              SvgPicture.asset(ImageConstant.iconReward,
                                  width: 16.sp,
                                  height: 20.sp,
                                  package: Constant.moduleEtamkawa),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                EtamKawaTranslate.rewards,
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.bold,
                                    fontColor: ColorTheme.neutral600),
                              ),
                              Text(
                                '${(rewardResponse.rewardGained ?? 0).toString()} total',
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.paragraph,
                                    fontColor: ColorTheme.neutral500),
                              ),
                              SizedBox(height: 10.h),
                            ],
                          ),
                          addVerticalDivider(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 10.h),
                              SvgPicture.asset(ImageConstant.iconAccuracy,
                                  width: 16.sp,
                                  height: 20.sp,
                                  package: Constant.moduleEtamkawa),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Accuracy',
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.bold,
                                    fontColor: ColorTheme.neutral600),
                              ),
                              Text(
                                '${rewardResponse.accuracy ?? 0}%',
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.paragraph,
                                    fontColor: ColorTheme.neutral500),
                              ),
                              SizedBox(height: 10.h),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(),
            isConnectionAvailable ? SizedBox(height: 10.h) : Container(),
            isConnectionAvailable
                ? SharedComponent.label(
                    text: 'You just earned one competency:',
                    context: context,
                    typographyType: TypographyType.body,
                    textAlign: TextAlign.center,
                    color: ColorTheme.neutral500,
                  )
                : Container(),
            isConnectionAvailable ? SizedBox(height: 10.h) : Container(),
            isConnectionAvailable
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(ImageConstant.iconAchievment,
                          width: 16.sp,
                          height: 20.sp,
                          package: Constant.moduleEtamkawa),
                      SizedBox(width: 8.w),
                      SharedComponent.label(
                        text: rewardResponse.competencyName ?? '',
                        context: context,
                        typographyType: TypographyType.largeH5,
                        textAlign: TextAlign.center,
                        color: ColorTheme.neutral600,
                      ),
                      SizedBox(width: 8.w),
                      SvgPicture.asset(ImageConstant.iconAchievment,
                          width: 16.sp,
                          height: 20.sp,
                          package: Constant.moduleEtamkawa),
                    ],
                  )
                : Container(),
            isConnectionAvailable ? SizedBox(height: 10.h) : Container(),
            SizedBox(
              width: double.infinity,
              child: SharedComponent.btnWidget(
                label: 'Back to Mission List',
                typographyType: TypographyType.body,
                onPressed: () async {
                  context.pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                radius: 5.r,
              ),
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}
