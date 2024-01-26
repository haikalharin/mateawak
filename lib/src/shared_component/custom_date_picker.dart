import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:module_shared/module_shared.dart';

import 'custom_date_picker_dialog.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({Key? key, required this.onPicked, this.value})
      : super(key: key);

  final Function(DateTime) onPicked;
  final DateTime? value;
  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  TextEditingController controller = TextEditingController();

  DateTime? picked;

  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      setState(() {
        picked = widget.value;
        controller.text = DateFormat("dd MMM yyyy").format(picked!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => CustomDatePickerDialogWidget(
            onPicked: (pickedTime) {
              setState(() {
                picked = pickedTime;

                if (picked == null) return;
                controller.text = DateFormat("dd MMM yyyy").format(picked!);
                widget.onPicked(pickedTime);
              });
            },
          ),
        );
      },
      child: TextField(
        controller: controller,
        enabled: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12.sp),
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
            hintText: "DD MMM YYYY",
            hintStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              color: ColorTheme.textLightDark,
            ),
            suffixIcon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: ColorTheme.backgroundLight),
              child: Icon(
                Icons.calendar_month_rounded,
                size: 16.sp,
                color: ColorTheme.textDark,
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
