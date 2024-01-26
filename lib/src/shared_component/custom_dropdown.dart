import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    Key? key,
    required this.items,
    required this.hint,
    required this.onPicked,
    this.value,
    this.isEnable = true,
  }) : super(key: key);

  final String? value;
  final List<String> items;
  final String hint;
  final Function(String) onPicked;
  final bool isEnable;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      setState(() {
        selectedValue = widget.value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Row(
          children: [
            Expanded(
              child: Text(
                widget.hint,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorTheme.textDark,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: widget.items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: widget.isEnable
            ? (value) {
                setState(() {
                  selectedValue = value;
                  widget.onPicked(value ?? "");
                });
              }
            : null,
        buttonStyleData: ButtonStyleData(
          height: 45.sp,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.sp),
            border: Border.all(
              width: 1.5.sp,
              color: ColorTheme.strokeTertiary,
            ),
            color: widget.isEnable
                ? ColorTheme.textWhite
                : ColorTheme.backgroundLight,
          ),
          elevation: 0,
        ),
        iconStyleData: IconStyleData(
          icon: Container(
            height: 100.h,
            width: 40.w,
            color: ColorTheme.backgroundLight,
            child: const Icon(
              Icons.keyboard_arrow_down_sharp,
            ),
          ),
          iconSize: 22.sp,
          iconEnabledColor: ColorTheme.textDark,
          iconDisabledColor: Colors.grey,
        ),
        // menuItemStyleData: const MenuItemStyleData(
        //   height: 40,
        //   padding: EdgeInsets.only(left: 14, right: 14),
        // ),
      ),
    );
  }
}
