import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/notifications/presentation/controller/notification_controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class DatePickerDialogWidget extends StatelessWidget {
  const DatePickerDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          padding: EdgeInsets.all(24.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: ColorTheme.backgroundWhite,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SharedComponent.label(
                    text: 'Pilih Tanggal',
                    context: context,
                    typographyType: TypographyType.largeH5,
                    color: ColorTheme.textDark,
                  ),
                  Row(
                    children: [
                      Consumer(builder: (context, consRef, _) {
                        return TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: ColorTheme.backgroundWhite,
                          ),
                          onPressed: () {
                            consRef.invalidate(containerSelectedDariProvider);
                            consRef.invalidate(containerSelectedKeProvider);
                          },
                          child: SharedComponent.label(
                            text: 'Reset',
                            context: context,
                            typographyType: TypographyType.body,
                            color: ColorTheme.primary500,
                          ),
                        );
                      }),
                      SizedBox(width: 4.w),
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            context.pop();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.close_rounded,
                              size: 24.sp,
                              color: ColorTheme.iconLightDark,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  const SelectedDateWidget(
                    title: Constant.dateSelectorModeDari,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const SelectedDateWidget(
                    title: Constant.dateSelectorModeKe,
                  )
                ],
              ),
              Consumer(
                builder: (context, consRef, child) {
                  final isErrorDateSelectedNotValidate =
                      consRef.watch(isErrorDateSelectedNotValidateProvider);
                  return isErrorDateSelectedNotValidate
                      ? Column(
                          children: [
                            SizedBox(height: 8.h),
                            SharedComponent.label(
                                text: 'Mohon pilih tanggal dengan benar',
                                context: context,
                                color: ColorTheme.danger500),
                          ],
                        )
                      : SizedBox(height: 16.h);
                },
              ),
              SizedBox(
                height: 100.h,
                child: Consumer(builder: (context, consRef, _) {
                  final selectedDate = consRef
                              .watch(selectedFocusDateProvider) ==
                          Constant.dateSelectorModeDari
                      ? DateFormat('dd MMMM yyyy', 'id')
                          .parse(consRef.watch(containerSelectedDariProvider))
                      : DateFormat('dd MMMM yyyy', 'id')
                          .parse(consRef.watch(containerSelectedKeProvider));

                  return ScrollDatePicker(
                    locale: const Locale('id', 'ID'),
                    indicator: const SizedBox(
                      height: 30,
                    ),
                    options: const DatePickerOptions(isLoop: false),
                    scrollViewOptions: DatePickerScrollViewOptions(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        day: ScrollViewDetailOptions(
                            alignment: Alignment.center,
                            textStyle: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.mediumH6,
                                fontColor: ColorTheme.textDark),
                            selectedTextStyle: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.mediumH6,
                                fontColor: Colors.black)),
                        month: ScrollViewDetailOptions(
                            alignment: Alignment.center,
                            textStyle: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.mediumH6,
                                fontColor: ColorTheme.textDark),
                            selectedTextStyle: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.mediumH6,
                                fontColor: Colors.black)),
                        year: ScrollViewDetailOptions(
                            alignment: Alignment.center,
                            textStyle: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.mediumH6,
                                fontColor: ColorTheme.textDark),
                            selectedTextStyle: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.mediumH6,
                                fontColor: Colors.black))),
                    selectedDate: selectedDate,
                    minimumDate: DateTime.now()
                        .toUtc()
                        .subtract(const Duration(days: 14)),
                    onDateTimeChanged: (DateTime value) {
                      if (consRef.watch(selectedFocusDateProvider) ==
                          Constant.dateSelectorModeDari) {
                        consRef
                                .read(containerSelectedDariProvider.notifier)
                                .state =
                            CommonUtils.formattedDate(value.toIso8601String(),
                                withDay: false);
                      } else {
                        consRef
                                .read(containerSelectedKeProvider.notifier)
                                .state =
                            CommonUtils.formattedDate(value.toIso8601String(),
                                withDay: false);
                      }
                    },
                  );
                }),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Consumer(builder: (context, consRef, child) {
                  return TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: ColorTheme.primary500,
                    ),
                    onPressed: () {
                      final containerSelectedDari =
                          consRef.read(containerSelectedDariProvider);
                      final containerSelectedKe =
                          consRef.read(containerSelectedKeProvider);

                      if (DateFormat('dd MMMM yyyy', 'id')
                          .parse(consRef.read(containerSelectedDariProvider))
                          .isAfter(DateFormat('dd MMMM yyyy', 'id').parse(
                              consRef.read(containerSelectedKeProvider)))) {
                        consRef
                            .read(
                                isErrorDateSelectedNotValidateProvider.notifier)
                            .state = true;
                      } else {
                        consRef
                            .read(
                                isErrorDateSelectedNotValidateProvider.notifier)
                            .state = false;

                        consRef
                            .read(filterSelectedDariProvider.notifier)
                            .state = containerSelectedDari;

                        consRef.read(filterSelectedKeProvider.notifier).state =
                            containerSelectedKe;

                        context.pop();
                      }
                    },
                    child: SharedComponent.label(
                      text: 'Simpan',
                      context: context,
                      typographyType: TypographyType.body,
                      color: ColorTheme.textWhite,
                    ),
                  );
                }),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ColorTheme.backgroundLight,
                  ),
                  onPressed: () {
                    context.pop();
                  },
                  child: SharedComponent.label(
                    text: 'Batal',
                    context: context,
                    typographyType: TypographyType.body,
                    color: ColorTheme.textDark,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class SelectedDateWidget extends ConsumerWidget {
  const SelectedDateWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          ref.read(selectedFocusDateProvider.notifier).state = title;
        },
        child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(
                  color: ref.watch(selectedFocusDateProvider) == title
                      ? ColorTheme.primary500
                      : ColorTheme.backgroundWhite,
                ),
                color: ref.watch(selectedFocusDateProvider) == title
                    ? null
                    : ColorTheme.backgroundLight,
                borderRadius: BorderRadius.all(Radius.circular(10.r))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SharedComponent.label(
                    text: title,
                    context: context,
                    typographyType: TypographyType.body,
                    color: ColorTheme.textLightDark),
                SizedBox(
                  height: 4.h,
                ),
                Consumer(
                  builder: (context, consRef, child) {
                    final selectedDari =
                        consRef.watch(containerSelectedDariProvider);
                    final selectedKe =
                        consRef.watch(containerSelectedKeProvider);
                    return SharedComponent.label(
                        text: title == Constant.dateSelectorModeDari
                            ? selectedDari
                            : selectedKe,
                        context: context,
                        typographyType: TypographyType.body,
                        color: ColorTheme.textDark);
                  },
                )
              ],
            )),
      ),
    );
  }
}
