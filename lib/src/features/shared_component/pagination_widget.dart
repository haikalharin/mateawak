import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

class PaginationWidget extends StatelessWidget {
  final int pagePagination;
  final int pageLimit;
  final int totalRecords;
  final int totalPages;
  final Function()? onNextPage;
  final Function()? onBackPage;
  final Function(int?)? onChangeLimit;
  final double? paddingHorizontal;
  const PaginationWidget({
    super.key,
    required this.pagePagination,
    required this.pageLimit,
    required this.totalRecords,
    required this.totalPages,
    this.onNextPage,
    this.onBackPage,
    this.onChangeLimit,
    this.paddingHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 16.w),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(
              right: paddingHorizontal ?? 24.w,
            ),
            child: SharedComponent.label(
              text: 'Halaman $pagePagination dari $totalPages',
              context: context,
              typographyType: TypographyType.body,
              color: ColorTheme.textDark,
            ),
          ),
        ),
        SizedBox(height: 8.w),
        SizedBox(
          height: 32.w,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontal ?? 18.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorTheme.primary500,
                        ),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      padding: EdgeInsets.only(
                        top: 8.sp,
                        bottom: 8.sp,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<int>(
                          buttonStyleData: const ButtonStyleData(
                            overlayColor:
                                MaterialStatePropertyAll(Colors.transparent),
                          ),
                          isDense: true,
                          alignment: Alignment.center,
                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                          ),
                          underline: const SizedBox(),
                          items: <int>[5, 10, 50].map((int value) {
                            return DropdownMenuItem<int>(
                              alignment: Alignment.centerLeft,
                              value: value,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.sp,
                                ),
                                child: SharedComponent.label(
                                  text: value.toString(),
                                  context: context,
                                  typographyType: TypographyType.body,
                                  color: value == pageLimit
                                      ? ColorTheme.primary600
                                      : ColorTheme.textDark,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: onChangeLimit,
                          value: pageLimit,
                          iconStyleData: IconStyleData(
                            icon: Transform.translate(
                              offset: Offset(0, 1.sp),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 8.sp,
                                ),
                                child: const Icon(
                                  Icons.unfold_more_rounded,
                                ),
                              ),
                            ),
                            iconEnabledColor: ColorTheme.primary500,
                            iconSize: 12.sp,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            padding: EdgeInsets.zero,
                            overlayColor:
                                MaterialStatePropertyAll(Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    SharedComponent.label(
                      text: 'dari $totalRecords data',
                      context: context,
                      typographyType: TypographyType.body,
                      color: ColorTheme.textLightDark,
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton.filled(
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          side: BorderSide(
                            color: pagePagination > 1
                                ? Colors.transparent
                                : ColorTheme.textLightDark,
                          ),
                        ),
                        backgroundColor: pagePagination > 1
                            ? ColorTheme.primary500
                            : Colors.white,
                      ),
                      color: pagePagination > 1
                          ? Colors.white
                          : ColorTheme.textLightDark,
                      onPressed: pagePagination > 1 ? onBackPage : () {},
                      icon: Icon(
                        Icons.chevron_left_rounded,
                        size: 16.sp,
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(width: 8.w),
                    IconButton.filled(
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          side: BorderSide(
                            color: pagePagination < totalPages
                                ? Colors.transparent
                                : ColorTheme.textLightDark,
                          ),
                        ),
                        backgroundColor: pagePagination < totalPages
                            ? ColorTheme.primary500
                            : Colors.white,
                      ),
                      color: pagePagination < totalPages
                          ? Colors.white
                          : ColorTheme.textLightDark,
                      onPressed:
                          pagePagination < totalPages ? onNextPage : () {},
                      icon: Icon(
                        Icons.chevron_right_rounded,
                        size: 16.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.w),
      ],
    );
  }
}
