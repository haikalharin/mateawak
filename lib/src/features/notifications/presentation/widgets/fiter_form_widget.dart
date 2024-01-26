import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/notifications/presentation/controller/notification_controller.dart';
import 'package:module_etamkawa/src/features/notifications/presentation/widgets/date_picker_dialog_widget.dart';
import 'package:module_shared/module_shared.dart';

class FilterFormWidget extends StatelessWidget {
  const FilterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorTheme.backgroundWhite,
      ),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 8.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Container(
                  height: 4.h,
                  width: 20.w,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SharedComponent.label(
                    text: 'Filter',
                    context: context,
                    typographyType: TypographyType.largeH5,
                    color: ColorTheme.textDark,
                  ),
                  Consumer(builder: (context, consRef, _) {
                    return GestureDetector(
                      onTap: () {
                        consRef.read(isFilterResetProvider.notifier).state =
                            true;
                      },
                      child: SharedComponent.label(
                          text: 'Reset',
                          context: context,
                          typographyType: TypographyType.body,
                          color: ColorTheme.primary500),
                    );
                  })
                ],
              ),
              SizedBox(height: 24.h),
              SharedComponent.label(
                text: 'Kategori',
                context: context,
                typographyType: TypographyType.mediumH6,
                color: ColorTheme.textDark,
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  const Flexible(
                      flex: 5,
                      child: CustomRadioButton(
                        text: Constant.notificationFilterProduksi,
                      )),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Flexible(
                      flex: 5,
                      child: CustomRadioButton(
                        text: Constant.notificationFilterMyEval,
                      ))
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  const Flexible(
                      flex: 5,
                      child: CustomRadioButton(
                        text: Constant.notificationFilterUnit,
                      )),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Flexible(flex: 5, child: SizedBox())
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                  height: 1.h,
                  color: ColorTheme.strokeTertiary,
                  width: double.infinity),
              SizedBox(height: 16.h),
              SharedComponent.label(
                text: 'Pilih Tanggal',
                context: context,
                typographyType: TypographyType.mediumH6,
                color: ColorTheme.textDark,
              ),
              SizedBox(height: 16.h),
              const CustomFieldDate(),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: Material(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {
                          context.pop();
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: ColorTheme.backgroundLight,
                              border:
                                  Border.all(color: ColorTheme.strokeTertiary)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          child: SharedComponent.label(
                            text: 'Batal',
                            textAlign: TextAlign.center,
                            context: context,
                            typographyType: TypographyType.body,
                            color: ColorTheme.textDark,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Expanded(
                    child: Consumer(builder: (context, consRef, _) {
                      return SharedComponent.btnWidget(
                        label: 'Simpan',
                        typographyType: TypographyType.body,
                        radius: 5.r,
                        onPressed: () {
                          final isFilterReset =
                              consRef.read(isFilterResetProvider);

                          if (isFilterReset) {
                            consRef.invalidate(
                                selectedNotifFilterKategoriProvider);
                            consRef.invalidate(filterSelectedDariProvider);
                            consRef.invalidate(filterSelectedKeProvider);
                            consRef.invalidate(categoryProvider);
                            consRef.invalidate(selectedNotifDayProvider);
                          } else {
                            final filterSelectedDari =
                                consRef.read(filterSelectedDariProvider);
                            final filterSelectedKe =
                                consRef.read(filterSelectedKeProvider);

                            if (filterSelectedDari != null &&
                                filterSelectedKe != null) {
                              consRef
                                      .read(selectedNotifDayProvider.notifier)
                                      .state =
                                  Constant.notificationNeitherTodayOrYesterday;
                              consRef
                                  .read(selectedDariProvider.notifier)
                                  .state = filterSelectedDari;

                              consRef.read(selectedKeProvider.notifier).state =
                                  filterSelectedKe;
                            }
                            consRef.read(categoryProvider.notifier).state =
                                consRef
                                    .read(selectedNotifFilterKategoriProvider);
                          }

                          context.pop();
                        },
                      );
                    }),
                  )
                ],
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRadioButton extends ConsumerWidget {
  const CustomRadioButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedNotifFilterKategori = ref.watch(isFilterResetProvider)
        ? null
        : ref.watch(selectedNotifFilterKategoriProvider);

    return GestureDetector(
      onTap: () {
        ref.read(selectedNotifFilterKategoriProvider.notifier).state = text;
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border.all(
              color: selectedNotifFilterKategori == text
                  ? ColorTheme.primary500
                  : ColorTheme.strokeTertiary,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.r))),
        child: Row(
          children: [
            Container(
              width: 16.sp,
              height: 16.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorTheme.backgroundLight,
                border: Border.all(
                    color: selectedNotifFilterKategori == text
                        ? ColorTheme.primary500
                        : ColorTheme.iconLightDark,
                    width: selectedNotifFilterKategori == text ? 6.sp : 1.sp),
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            SharedComponent.label(
                text: text,
                context: context,
                typographyType: TypographyType.body)
          ],
        ),
      ),
    );
  }
}

class CustomFieldDate extends ConsumerWidget {
  const CustomFieldDate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterSelectedDari = ref.watch(isFilterResetProvider)
        ? null
        : ref.watch(filterSelectedDariProvider);
    final filterSelectedKe = ref.watch(isFilterResetProvider)
        ? null
        : ref.watch(filterSelectedKeProvider);

    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => const DatePickerDialogWidget(),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: ColorTheme.strokeTertiary,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.r))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: SharedComponent.label(
                  text:
                      '${filterSelectedDari ?? 'DD MMM YYYY'} - ${filterSelectedKe ?? 'DD MMM YYYY'} ',
                  context: context,
                  color:
                      (filterSelectedDari != null && filterSelectedKe != null)
                          ? ColorTheme.textDark
                          : ColorTheme.textLight,
                )),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorTheme.backgroundLight,
                  border: Border.all(color: ColorTheme.strokeTertiary)),
              child: Icon(
                Icons.calendar_month_rounded,
                size: 16.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
