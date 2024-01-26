import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:module_etamkawa/src/features/production/presentation/controller/production.controller.dart';
import 'package:module_etamkawa/src/features/telematry/presentation/controller/telematry.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

class CustomDateTimeSpinPicker extends ConsumerStatefulWidget {
  final String? selectedTime;
  final String? trDate;
  // Text style of selected
  // item
  final TextStyle? selectedStyle;
  // Text style of unselected item
  final TextStyle? unselectedStyle;
  // Text style of disabled item
  final TextStyle? disabledStyle;
  final USERROLE? userRole;
  const CustomDateTimeSpinPicker({
    Key? key,
    this.selectedTime,
    this.trDate,
    this.selectedStyle,
    this.unselectedStyle,
    this.disabledStyle,
    this.userRole,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomDateTimeSpinPickerState();
}

class _CustomDateTimeSpinPickerState
    extends ConsumerState<CustomDateTimeSpinPicker> {
  late DateTime _minDate;
  late DateTime _maxDate;
  late DateTime _selectedDate;
  late int _selectedDayIndex;
  late int _selectedHourIndex;
  late int _selectedMonthIndex;
  late int _selectedYearIndex;
  late final FixedExtentScrollController _dayScrollController;
  late final FixedExtentScrollController _monthScrollController;
  late final FixedExtentScrollController _yearScrollController;
  late final FixedExtentScrollController _hourScrollController;
  final _days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  final _hoursShift1 = [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
  final _hoursShift2 = [18, 19, 20, 21, 22, 23, 0, 1, 2, 3, 4, 5, 6];
  final _hoursSuptend = [
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    0,
    1,
    2,
    3,
    4,
    5,
    6,
  ];
  final witaNow = CommonUtils.getCurrentWITATime();
  bool isShift1 = false;

  @override
  void initState() {
    super.initState();
    _dayScrollController = FixedExtentScrollController();
    _monthScrollController = FixedExtentScrollController();
    _yearScrollController = FixedExtentScrollController();
    _hourScrollController = FixedExtentScrollController();
    _initDates();
  }

  void _initDates() {
    isShift1 = witaNow.hour > 6 && witaNow.hour < 18;
    final currentDate = witaNow;
    final trDate = CommonUtils.isEmpty(widget.trDate)
        ? witaNow
        : DateTime.parse(widget.trDate!).copyWith(
            hour: witaNow.hour,
          );
    _minDate = DateTime(
      trDate.year,
      trDate.month,
      trDate.day,
      0,
    );
    _maxDate = widget.userRole == USERROLE.foremanSupervisor
        ? isShift1
            ? DateTime(
                trDate.year,
                trDate.month,
                trDate.day,
                currentDate.hour,
              )
            : DateTime(
                trDate.year,
                trDate.month,
                trDate.day + 1,
                currentDate.hour,
              )
        : DateTime(
            trDate.year,
            trDate.month,
            isShift1 ? trDate.day : trDate.day + 1,
            currentDate.hour,
          );
    _selectedDate = !CommonUtils.isEmpty(widget.selectedTime)
        ? DateTime.parse(widget.selectedTime!)
        : trDate;

    _selectedDayIndex = _selectedDate.day - 1;
    _selectedMonthIndex = _selectedDate.month - 1;
    _selectedYearIndex = _selectedDate.year - _minDate.year;
    _selectedHourIndex = widget.userRole == USERROLE.foremanSupervisor
        ? isShift1
            ? _hoursShift1.indexOf(_selectedDate.hour)
            : _hoursShift2.indexOf(_selectedDate.hour)
        : _hoursSuptend.indexOf(_selectedDate.hour);
    _hoursShift1.removeRange(
        _hoursShift1.indexOf(currentDate.hour) + 1, _hoursShift1.length);
    _hoursShift2.removeRange(
        _hoursShift2.indexOf(currentDate.hour) + 1, _hoursShift2.length);
    _hoursSuptend.removeRange(
        _hoursSuptend.indexOf(currentDate.hour) + 1, _hoursSuptend.length);

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => {
        _scrollList(_dayScrollController, _selectedDayIndex),
        _scrollList(_hourScrollController, _selectedHourIndex),
      },
    );
  }

  void _scrollList(FixedExtentScrollController controller, int index) {
    controller.animateToItem(
      index,
      curve: Curves.easeIn,
      duration: const Duration(milliseconds: 300),
    );
  }

  void onReset(DateTime date) {
    _selectedDate = date;
    _selectedDayIndex = _selectedDate.day - 1;

    _selectedMonthIndex = _selectedDate.month - 1;
    _selectedYearIndex = _selectedDate.year - _minDate.year;
    _selectedHourIndex = widget.userRole == USERROLE.foremanSupervisor
        ? isShift1
            ? _hoursShift1.indexOf(_selectedDate.hour)
            : _hoursShift2.indexOf(_selectedDate.hour)
        : _hoursSuptend.indexOf(_selectedDate.hour);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => {
        _scrollList(_dayScrollController, _selectedDayIndex),
        _scrollList(_hourScrollController, _selectedHourIndex),
      },
    );
  }

  @override
  void dispose() {
    _dayScrollController.dispose();
    _monthScrollController.dispose();
    _yearScrollController.dispose();
    _hourScrollController.dispose();
    super.dispose();
  }

  /// check if selected year is a leap year
  bool _isLeapYear() {
    final year = _minDate.year + _selectedYearIndex;
    return year % 4 == 0 &&
        (year % 100 != 0 || (year % 100 == 0 && year % 400 == 0));
  }

  void _onSelectedItemChanged(int index, _SelectorType type) {
    DateTime temp;
    switch (type) {
      case _SelectorType.day:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          _selectedMonthIndex + 1,
          index + 1,
          widget.userRole == USERROLE.foremanSupervisor
              ? isShift1
                  ? _hoursShift1[_selectedHourIndex]
                  : _hoursShift2[_selectedHourIndex]
              : _hoursSuptend[_selectedHourIndex],
        );
        break;
      case _SelectorType.month:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          index + 1,
          _selectedDayIndex + 1,
        );
        break;
      case _SelectorType.year:
        temp = DateTime(
          _minDate.year + index,
          _selectedMonthIndex + 1,
          _selectedDayIndex + 1,
        );
        break;
      case _SelectorType.hour:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          _selectedMonthIndex + 1,
          _selectedDayIndex + 1,
          widget.userRole == USERROLE.foremanSupervisor
              ? isShift1
                  ? _hoursShift1[index]
                  : _hoursShift2[index]
              : _hoursSuptend[index],
        );
        break;
    }

    // return if selected date is not the min - max date range
    // scroll selector back to the valid point
    if (temp.isBefore(_minDate) || temp.isAfter(_maxDate)) {
      switch (type) {
        case _SelectorType.day:
          _dayScrollController.jumpToItem(_selectedDayIndex);
          break;
        case _SelectorType.month:
          _monthScrollController.jumpToItem(_selectedMonthIndex);
          break;
        case _SelectorType.year:
          _yearScrollController.jumpToItem(_selectedYearIndex);
          break;
        case _SelectorType.hour:
          _hourScrollController.jumpToItem(_selectedHourIndex);
          break;
      }
      return;
    }
    // update selected date
    _selectedDate = temp;
    // adjust other selectors when one selctor is changed
    switch (type) {
      case _SelectorType.day:
        _selectedDayIndex = index;
        break;
      case _SelectorType.month:
        _selectedMonthIndex = index;
        // if month is changed to february &
        // selected day is greater than 29,
        // set the selected day to february 29 for leap year
        // else to february 28
        if (_selectedMonthIndex == 1 && _selectedDayIndex > 27) {
          _selectedDayIndex = _isLeapYear() ? 28 : 27;
        }
        // if selected day is 31 but current selected month has only
        // 30 days, set selected day to 30
        if (_selectedDayIndex == 30 && _days[_selectedMonthIndex] == 30) {
          _selectedDayIndex = 29;
        }
        break;
      case _SelectorType.year:
        _selectedYearIndex = index;
        // if selected month is february & selected day is 29
        // But now year is changed to non-leap year
        // set the day to february 28
        if (!_isLeapYear() &&
            _selectedMonthIndex == 1 &&
            _selectedDayIndex == 28) {
          _selectedDayIndex = 27;
        }
        break;
      case _SelectorType.hour:
        _selectedHourIndex = index;
        break;
    }
    setState(() {});
  }

  /// check if the given day, month or year index is disabled
  bool _isDisabled(int index, _SelectorType type) {
    DateTime temp;
    switch (type) {
      case _SelectorType.day:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          _selectedMonthIndex + 1,
          index + 1,
          _selectedHourIndex + 1,
        );
        break;
      case _SelectorType.month:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          index + 1,
          _selectedDayIndex + 1,
        );
        break;
      case _SelectorType.year:
        temp = DateTime(
          _minDate.year + index,
          _selectedMonthIndex + 1,
          _selectedDayIndex + 1,
        );
        break;
      case _SelectorType.hour:
        temp = DateTime(
          _minDate.year + _selectedYearIndex,
          _selectedMonthIndex + 1,
          _selectedDayIndex + 1,
          index + 1,
        );
        break;
    }
    return temp.isAfter(_maxDate) || temp.isBefore(_minDate);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ColorTheme.backgroundWhite,
                  ),
                  onPressed: () {
                    onReset(CommonUtils.isEmpty(widget.trDate)
                        ? witaNow
                        : DateTime.parse(widget.trDate!).copyWith(
                            hour: witaNow.hour,
                          ));
                  },
                  child: SharedComponent.label(
                    text: 'Reset',
                    context: context,
                    typographyType: TypographyType.body,
                    color: ColorTheme.primary500,
                  ),
                ),
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
        SizedBox(
          height: 100.sp,
          child: Row(
            children: [
              Expanded(
                child: _daySelector(),
              ),
              Expanded(
                child: _hourSelector(),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          width: double.infinity,
          child: InkWell(
            onTap: () {
              ref.watch(productionUnitClockFilterProvider.notifier).state =
                  CommonUtils.formatDateRequestParam(_selectedDate.toString());
              context.pop();
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 12.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: ColorTheme.primary500,
              ),
              alignment: Alignment.center,
              child: SharedComponent.label(
                text: 'Simpan',
                context: context,
                typographyType: TypographyType.body,
                color: ColorTheme.textWhite,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: double.infinity,
          child: InkWell(
            onTap: () => context.pop(),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 12.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: ColorTheme.neutral300,
                ),
                color: ColorTheme.backgroundLight,
              ),
              alignment: Alignment.center,
              child: SharedComponent.label(
                text: 'Batal',
                context: context,
                typographyType: TypographyType.body,
                color: ColorTheme.textDark,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _selector({
    required List<dynamic> values,
    required int selectedValueIndex,
    required bool Function(int) isDisabled,
    required void Function(int) onSelectedItemChanged,
    required FixedExtentScrollController scrollController,
  }) {
    return CupertinoPicker.builder(
      childCount: values.length,
      squeeze: 1.45,
      itemExtent: 50.h,
      scrollController: scrollController,
      useMagnifier: false,
      diameterRatio: 2,
      magnification: 1.0,
      offAxisFraction: 0.0,
      selectionOverlay: const SizedBox.shrink(),
      onSelectedItemChanged: onSelectedItemChanged,
      itemBuilder: (context, index) => Container(
        height: 50.h,
        alignment: Alignment.center,
        child: Text(
          '${values[index]}',
          style: index == selectedValueIndex
              ? widget.selectedStyle
              : isDisabled(index)
                  ? widget.disabledStyle
                  : widget.unselectedStyle,
        ),
      ),
    );
  }

  Widget _daySelector() {
    return _selector(
      values: [
        DateFormat('EEE, d MMMM', 'id').format(
          CommonUtils.isEmpty(widget.trDate)
              ? witaNow
              : DateTime.parse(widget.trDate!),
        ),
      ],
      selectedValueIndex: 0,
      scrollController: _dayScrollController,
      isDisabled: (index) => _isDisabled(index, _SelectorType.day),
      onSelectedItemChanged: (v) => _onSelectedItemChanged(
        v,
        _SelectorType.day,
      ),
    );
  }

  Widget _hourSelector() {
    return _selector(
      values: widget.userRole == USERROLE.foremanSupervisor
          ? isShift1
              ? List.generate(
                  _hoursShift1.length,
                  (index) => '${_hoursShift1[index]}  :  00',
                )
              : List.generate(
                  _hoursShift2.length,
                  (index) => '${_hoursShift2[index]}  :  00',
                )
          : List.generate(
              _hoursSuptend.length,
              (index) => '${_hoursSuptend[index]}  :  00',
            ),
      selectedValueIndex: _selectedHourIndex,
      scrollController: _hourScrollController,
      isDisabled: (index) => _isDisabled(index, _SelectorType.hour),
      onSelectedItemChanged: (v) => _onSelectedItemChanged(
        v,
        _SelectorType.hour,
      ),
    );
  }
}

enum _SelectorType { day, month, year, hour }
