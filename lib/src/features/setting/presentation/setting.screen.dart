import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/constants/telematry.constant.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/setting/domain/setting.model.dart';
import 'package:module_etamkawa/src/features/setting/presentation/controller/setting.controller.dart';
import 'package:module_etamkawa/src/features/setting/domain/setting.model.dart';
import 'package:module_shared/module_shared.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/detail_page_appbar_widget.dart';


class SettingScreen extends ConsumerWidget {
  SettingScreen({super.key});

  final Uri _urlFeedback = Uri.parse(Constant.tempUrlFeedback);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (context.mounted) {
      // ref
      //     .read(telematryControllerProvider.notifier)
      //     .onVisibilityChangedSingleWidget(TelematryConstant.generalSetting);
    }
    return Scaffold(
        appBar: DetailPageAppBarWidget(
          title: 'Setting',
          ref: ref,
          onTap: () => context.pop(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Consumer(builder: (context, consref, child) {
                return AsyncValueWidget(
                    value: consref.watch(
                        getActiveSwitchersProvider(SwitcherMode.material)),
                    data: (data) {
                      return ItemSettingWidget(
                        title: 'Tampilkan Material',
                        subtitle: 'Minimal pilih 1 material',
                        rowChildItem: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SharedComponent.label(
                                text: 'OB',
                                context: context,
                                typographyType: TypographyType.mediumH6,
                              ),
                              CustomSwitcher(
                                isEnable: data.length > 1,
                                settingMode: SettingMode.materialOb,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SharedComponent.label(
                                text: 'CM',
                                context: context,
                                typographyType: TypographyType.mediumH6,
                              ),
                              CustomSwitcher(
                                isEnable: data.length > 1,
                                settingMode: SettingMode.materialCM,
                              )
                            ],
                          )
                        ],
                      );
                    });
              }),
              SizedBox(
                height: 16.h,
              ),
              Consumer(builder: (context, consref, child) {
                return AsyncValueWidget(
                    value: consref
                        .watch(getActiveSwitchersProvider(SwitcherMode.area)),
                    data: (data) {
                      return ItemSettingWidget(
                        title: 'Tampilkan Area',
                        subtitle: 'Minimal pilih 1 Area',
                        rowChildItem: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SharedComponent.label(
                                text: 'Semua Area',
                                context: context,
                                typographyType: TypographyType.mediumH6,
                              ),
                              CustomSwitcher(
                                isEnable: data.length > 1,
                                settingMode: SettingMode.areaAll,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SharedComponent.label(
                                text: 'Top',
                                context: context,
                                typographyType: TypographyType.mediumH6,
                              ),
                              CustomSwitcher(
                                isEnable: data.length > 1,
                                settingMode: SettingMode.areaTop,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SharedComponent.label(
                                text: 'Middle',
                                context: context,
                                typographyType: TypographyType.mediumH6,
                              ),
                              CustomSwitcher(
                                isEnable: data.length > 1,
                                settingMode: SettingMode.areaMid,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SharedComponent.label(
                                text: 'Bottom',
                                context: context,
                                typographyType: TypographyType.mediumH6,
                              ),
                              CustomSwitcher(
                                isEnable: data.length > 1,
                                settingMode: SettingMode.areaBot,
                              )
                            ],
                          )
                        ],
                      );
                    });
              }),
              SizedBox(
                height: 16.h,
              ),
              Consumer(
                builder: (context, consref, child) {
                  return AsyncValueWidget(
                    value: consref
                        .watch(getActiveSwitchersProvider(SwitcherMode.tab)),
                    data: (data) {
                      final isAbleAccessReadiness =
                          ref.watch(isAbleAccessTabReadinessProvider);

                      final isAbleAccessProd =
                          ref.watch(isAbleAccessTabProdProvider);

                      final isAbleAccessRca =
                          ref.watch(isAbleAccessTabRcaProvider);

                      final isAbleAccessPerformance =
                          ref.watch(isAbleAccessTabPerformanceProvider);

                      final noAccessLive = !isAbleAccessReadiness &&
                          !isAbleAccessProd &&
                          !isAbleAccessRca &&
                          !isAbleAccessPerformance;

                      return noAccessLive
                          ? const SizedBox.shrink()
                          : ItemSettingWidget(
                              title: 'Pin Tampilan Tab Live',
                              subtitle:
                                  'Tab terpilih akan terlihat pertama kali ketika membuka aplikasi. Maksimal 1 tab',
                              rowChildItem: [
                                if (isAbleAccessReadiness) ...[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SharedComponent.label(
                                        text: 'Tab Readiness',
                                        context: context,
                                        typographyType: TypographyType.mediumH6,
                                      ),
                                      CustomSwitcher(
                                        isEnable: data.length > 1,
                                        settingMode: SettingMode.tabReadiness,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                ],
                                if (isAbleAccessProd) ...[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SharedComponent.label(
                                        text: 'Tab Production',
                                        context: context,
                                        typographyType: TypographyType.mediumH6,
                                      ),
                                      CustomSwitcher(
                                        isEnable: data.length > 1,
                                        settingMode: SettingMode.tabProd,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                ],
                                if (isAbleAccessRca) ...[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SharedComponent.label(
                                        text: 'Tab RCA',
                                        context: context,
                                        typographyType: TypographyType.mediumH6,
                                      ),
                                      CustomSwitcher(
                                        isEnable: data.length > 1,
                                        settingMode: SettingMode.tabRca,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                ],
                                if (isAbleAccessPerformance) ...[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SharedComponent.label(
                                        text: 'Tab Performance',
                                        context: context,
                                        typographyType: TypographyType.mediumH6,
                                      ),
                                      CustomSwitcher(
                                        isEnable: data.length > 1,
                                        settingMode: SettingMode.tabPerformance,
                                      )
                                    ],
                                  ),
                                ]
                              ],
                            );
                    },
                  );
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              Material(
                color: ColorTheme.primary100,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: const AssetImage(
                                  ImageConstant.iconFormFeedback,
                                  package: 'module_etamkawa'),
                              height: 24.sp,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            SharedComponent.label(
                                text: 'Berikan feedback untuk BPS',
                                context: context,
                                typographyType: TypographyType.mediumH6,
                                color: ColorTheme.primary500),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 24.sp,
                          color: ColorTheme.primary500,
                        )
                      ],
                    ),
                  ),
                  onTap: () async {
                    if (!await launchUrl(_urlFeedback)) {
                      throw Exception('Could not launch $_urlFeedback');
                    }
                  },
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
            ],
          ),
        ));
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({
    super.key,
    required this.settingMode,
    required this.isEnable,
  });

  final SettingMode settingMode;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final getSettingLatestValue =
          ref.watch(getSettingLatestValueProvider(settingMode));

      return AsyncValueWidget(
          value: getSettingLatestValue,
          data: (data) {
            return AbsorbPointer(
              absorbing: !isEnable && data == true,
              child: FlutterSwitch(
                  value: data,
                  borderRadius: 20.r,
                  activeColor: ColorTheme.primary500,
                  inactiveColor: ColorTheme.neutral500,
                  width: 50.w,
                  height: 30.h,
                  onToggle: (val) {
                    ref
                        .read(settingControllerProvider.notifier)
                        .setSettingNewValue(settingMode, val);
                  }),
            );
          });
    });
  }
}

class ItemSettingWidget extends StatelessWidget {
  const ItemSettingWidget({
    super.key,
    required this.rowChildItem,
    required this.title,
    required this.subtitle,
  });
  final List<Widget> rowChildItem;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SharedComponent.label(
          text: title,
          context: context,
          typographyType: TypographyType.largeH5,
        ),
        SizedBox(
          height: 8.h,
        ),
        SharedComponent.label(
          text: subtitle,
          context: context,
          typographyType: TypographyType.body,
        ),
        SizedBox(
          height: 16.h,
        ),
        Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: ColorTheme.strokeTertiary,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)).w),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: rowChildItem,
            ),
          ),
        ),
      ],
    );
  }
}
