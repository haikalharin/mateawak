import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:module_shared/module_shared.dart';

import '../../constants/constant.dart';


enum Focused { start, end }

class TimeRangePickerDialogWidget extends StatefulWidget {
  const TimeRangePickerDialogWidget({super.key, required this.onPicked});

  final Function(DateTime, DateTime) onPicked;

  @override
  State<TimeRangePickerDialogWidget> createState() =>
      _TimeRangePickerDialogWidgetState();
}

class _TimeRangePickerDialogWidgetState
    extends State<TimeRangePickerDialogWidget> {
  FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: 0);
  FixedExtentScrollController scrollController2 =
      FixedExtentScrollController(initialItem: 0);

  String activeHour = "00";
  String activeMinutes = "00";

  String startTime = "00:00";
  String endTime = "00:00";

  Focused focused = Focused.start;

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
                    text: 'Pilih Jam',
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
                              startTime = "00:00";
                              endTime = "00:00";
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
                    onTap: () => setState(() => focused = Focused.start),
                    isSelected: focused == Focused.start,
                    value: startTime,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  SelectedDateWidget(
                    title: Constant.dateSelectorModeSampai,
                    onTap: () => setState(() => focused = Focused.end),
                    isSelected: focused == Focused.end,
                    value: endTime,
                  )
                ],
              ),
              SizedBox(
                height: 16.sp,
              ),
              SizedBox(
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
                            if (focused == Focused.start) {
                              startTime = "$activeHour:$activeMinutes";
                            }
                            if (focused == Focused.end) {
                              endTime = "$activeHour:$activeMinutes";
                            }
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
                            if (focused == Focused.start) {
                              startTime = "$activeHour:$activeMinutes";
                            }
                            if (focused == Focused.end) {
                              endTime = "$activeHour:$activeMinutes";
                            }
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
                      DateFormat format =
                          DateFormat.Hm(); // H for hour (0-23), m for minute
                      DateTime start = format.parse(startTime);
                      DateTime end = format.parse(endTime);

                      if (end.toUtc().isBefore(start.toUtc())) {
                        end = end.add(const Duration(days: 1));
                      }

                      print("Start : $start, End : $end");

                      widget.onPicked(start, end);
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
