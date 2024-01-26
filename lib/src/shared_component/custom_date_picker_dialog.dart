import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_shared/module_shared.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class CustomDatePickerDialogWidget extends StatefulWidget {
  const CustomDatePickerDialogWidget({super.key, required this.onPicked});

  final Function(DateTime) onPicked;

  @override
  State<CustomDatePickerDialogWidget> createState() =>
      _CustomDatePickerDialogWidgetState();
}

class _CustomDatePickerDialogWidgetState
    extends State<CustomDatePickerDialogWidget> {
  DateTime pickedDate = DateTime.now();

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
                            setState(() {
                              pickedDate = DateTime.now();
                            });
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
              SizedBox(
                height: 16.sp,
              ),
              SizedBox(
                height: 100.h,
                child: Consumer(builder: (context, consRef, _) {
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
                    selectedDate: pickedDate,
                    maximumDate: DateTime(2030),
                    // minimumDate: DateTime.now()
                    //     .toUtc()
                    //     .subtract(const Duration(days: 14)),
                    onDateTimeChanged: (DateTime value) {
                      setState(() => pickedDate = value);
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
                      DateTime result = DateTime(
                          pickedDate.year, pickedDate.month, pickedDate.day);

                      widget.onPicked(result);
                      context.pop();
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
