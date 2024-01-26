import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key, required this.hint, required this.onChanged})
      : super(key: key);

  final String hint;
  final Function(String) onChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController controller = TextEditingController();

  DateTime? picked;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: BorderSide(color: ColorTheme.buttonSecondaryStroke)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: BorderSide(color: ColorTheme.buttonSecondaryStroke)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: BorderSide(color: ColorTheme.buttonSecondaryStroke)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: BorderSide(color: ColorTheme.buttonSecondaryStroke)),
        hintText: widget.hint,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12.sp,
          color: ColorTheme.textLight,
        ),
      ),
      onChanged: (val) => widget.onChanged(val),
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
      // onSubmitted: (value) {
      //   // ref.read(searchNotifProvider.notifier).state =
      //   //     value;
      // },
    );
  }
}
