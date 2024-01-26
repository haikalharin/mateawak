import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:module_etamkawa/src/shared_component/time_range_dialog.dart';
import 'package:module_shared/module_shared.dart';

class TimeRangePicker extends StatefulWidget {
  const TimeRangePicker({Key? key, required this.onPicked}) : super(key: key);

  final Function(DateTime, DateTime) onPicked;

  @override
  State<TimeRangePicker> createState() => _TimeRangePickerState();
}

class _TimeRangePickerState extends State<TimeRangePicker> {
  TextEditingController controller = TextEditingController();

  DateTime? start;
  DateTime? end;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => TimeRangePickerDialogWidget(
            onPicked: (pickedStart, pickedEnd) {
              setState(() {
                start = pickedStart;
                end = pickedEnd;

                if (start == null || end == null) return;
                controller.text =
                    "${DateFormat.Hm().format(start!)} - ${DateFormat.Hm().format(end!)}";
                widget.onPicked(pickedStart, pickedEnd);
              });
            },
          ),
        );
      },
      child: TextField(
        controller: controller,
        enabled: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide:
                    BorderSide(color: ColorTheme.buttonSecondaryStroke)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide:
                    BorderSide(color: ColorTheme.buttonSecondaryStroke)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide:
                    BorderSide(color: ColorTheme.buttonSecondaryStroke)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide:
                    BorderSide(color: ColorTheme.buttonSecondaryStroke)),
            hintText: '00:00 - 00:00',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              color: ColorTheme.textLight,
            ),
            suffixIcon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: ColorTheme.backgroundLight),
              child: Icon(
                Icons.access_time,
                size: 16.sp,
                color: ColorTheme.iconLightDark,
              ),
            )),
        autofocus: false,
        textInputAction: TextInputAction.search,
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: ColorTheme.textDark,
        ),
        onSubmitted: (value) {
          // ref.read(searchNotifProvider.notifier).state =
          //     value;
        },
      ),
    );
  }
}
