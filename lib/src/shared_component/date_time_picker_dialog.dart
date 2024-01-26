import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:module_shared/module_shared.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import '../constants/constant.dart';


enum Focused { date, time }

class DateTimePickerDialogWidget extends StatefulWidget {
  const DateTimePickerDialogWidget({super.key, required this.onPicked});

  final Function(DateTime) onPicked;

  @override
  State<DateTimePickerDialogWidget> createState() =>
      _DateTimePickerDialogWidgetState();
}

class _DateTimePickerDialogWidgetState
    extends State<DateTimePickerDialogWidget> {
  FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: 0);
  FixedExtentScrollController scrollController2 =
      FixedExtentScrollController(initialItem: 0);

  String time = "00:00";
  DateTime pickedDate = DateTime.now();

  String activeHour = "00";
  String activeMinutes = "00";

  Focused focused = Focused.date;

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
                            scrollController.animateToItem(0,
                                duration: const Duration(milliseconds: 700),
                                curve: Curves.easeInOut);
                            scrollController2.animateToItem(0,
                                duration: const Duration(milliseconds: 700),
                                curve: Curves.easeInOut);
                            setState(() {
                              activeHour = "00";
                              activeMinutes = "00";
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
              SizedBox(height: 16.h),
              Row(
                children: [
                  SelectedDateWidget(
                    title: Constant.dateSelectorModeDari,
                    onTap: () => setState(() => focused = Focused.date),
                    isSelected: focused == Focused.date,
                    value: DateFormat('dd MMMM yyyy', 'id').format(pickedDate),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  SelectedDateWidget(
                    title: Constant.dateSelectorModeSampai,
                    onTap: () => setState(() => focused = Focused.time),
                    isSelected: focused == Focused.time,
                    value: time,
                  )
                ],
              ),
              SizedBox(
                height: 16.sp,
              ),
              Visibility(
                visible: focused == Focused.date,
                child: SizedBox(
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
                              selectedTextStyle:
                                  SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.mediumH6,
                                      fontColor: Colors.black)),
                          month: ScrollViewDetailOptions(
                              alignment: Alignment.center,
                              textStyle: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.mediumH6,
                                  fontColor: ColorTheme.textDark),
                              selectedTextStyle:
                                  SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.mediumH6,
                                      fontColor: Colors.black)),
                          year: ScrollViewDetailOptions(
                              alignment: Alignment.center,
                              textStyle: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.mediumH6,
                                  fontColor: ColorTheme.textDark),
                              selectedTextStyle:
                                  SharedComponent.textStyleCustom(
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
              ),
              Visibility(
                visible: focused == Focused.time,
                child: SizedBox(
                  height: 100.h,
                  child: Consumer(builder: (context, consRef, _) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Expanded(
                          child: CupertinoPicker(
                            scrollController: scrollController,
                            onSelectedItemChanged: (value) {
                              activeHour = value.toString().padLeft(2, '0');
                              time = "$activeHour:$activeMinutes";
                              setState(() {});
                            },
                            looping: true,
                            itemExtent: 40.sp,
                            squeeze: 1.1,
                            diameterRatio: 5,
                            selectionOverlay: const Opacity(
                              opacity: 0.0,
                            ),
                            children: [
                              for (int x = 0; x < 24; x++)
                                SharedComponent.label(
                                  text: x.toString().padLeft(2, '0'),
                                  context: context,
                                  typographyType: TypographyType.largeH5,
                                  color: ColorTheme.textDark,
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 18.sp),
                          child: SharedComponent.label(
                            text: ":",
                            context: context,
                            typographyType: TypographyType.largeH5,
                            color: ColorTheme.textDark,
                          ),
                        ),
                        Expanded(
                          child: CupertinoPicker(
                            scrollController: scrollController2,
                            onSelectedItemChanged: (value) {
                              activeMinutes = value.toString().padLeft(2, '0');
                              time = "$activeHour:$activeMinutes";
                              setState(() {});
                            },
                            looping: true,
                            itemExtent: 40.0.sp,
                            squeeze: 1.1,
                            diameterRatio: 5,
                            selectionOverlay: const Opacity(
                              opacity: 0.0,
                            ),
                            children: [
                              for (int x = 0; x < 60; x++)
                                SharedComponent.label(
                                  text: x.toString().padLeft(2, '0'),
                                  context: context,
                                  typographyType: TypographyType.largeH5,
                                  color: ColorTheme.textDark,
                                ),
                            ],
                          ),
                        ),
                        const Spacer(),
                      ],
                    );
                  }),
                ),
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
                      List<String> timeParts = time.split(':');
                      int hour = int.parse(timeParts[0]);
                      int minute = int.parse(timeParts[1]);

                      DateTime result = DateTime(pickedDate.year,
                          pickedDate.month, pickedDate.day, hour, minute);

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

class SelectedDateWidget extends ConsumerWidget {
  const SelectedDateWidget(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.value,
      required this.onTap});
  final String title;
  final bool isSelected;
  final String value;
  final Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected
                      ? ColorTheme.primary500
                      : ColorTheme.backgroundWhite,
                ),
                color: isSelected ? null : ColorTheme.backgroundLight,
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
                SharedComponent.label(
                    text: value,
                    context: context,
                    typographyType: TypographyType.body,
                    color: ColorTheme.textDark)
              ],
            )),
      ),
    );
  }
}
