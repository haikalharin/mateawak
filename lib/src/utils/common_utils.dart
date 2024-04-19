import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_shared/module_shared.dart';
import 'package:ntp/ntp.dart';

class CommonUtils {
  static String formatThousandFromNumber(num number) {
    return NumberFormat.decimalPattern('vi_VN').format(number);
  }

  static String formatThousandFromNumberNoLimitDecimal(num number) {
    final numberFormat = NumberFormat(
      '###,###,###.#####',
      'vi_VN',
    );

    return numberFormat.format(number);
  }

  static String formatDateToHoursMinute(String value) {
    DateTime date = DateTime.parse(value);
    final DateFormat formatter = DateFormat('HH:mm');
    final String formatted = formatter.format(date);
    return formatted;
  }

  static String formatDateToHours(String value) {
    DateTime date = DateTime.parse(value);
    final DateFormat formatter = DateFormat.H();
    String formatted = formatter.format(date);

    if (formatted[0].startsWith('0')) {
      formatted = formatted.substring(1);
    }
    return formatted;
  }

  static bool isEmpty(dynamic value) {
    if (value == null ||
        value == '' ||
        value == 'null' ||
        value.isEmpty ||
        value.length == 0) {
      return true;
    }
    return false;
  }

  static String formatDateRequestParam(String value) {
    int idx = value.indexOf(":");
    final first = value.substring(0,idx).trim().replaceAll(' ', 'T');
    final last = value.substring(idx+1).trim();
    final lastTrimmed = last.substring(0, last.length - 3);
    return '$first:${lastTrimmed}Z';
  }

  static String formatDateTimeRequestParam(String value) {
    final temp = value.split(':');
    return '${temp.first.replaceAll(' ', 'T')}${temp.last}';
  }

  static String formattedDate(String value,
      {bool withDay = true, bool withHourMinute = false}) {
    initializeDateFormatting();
    DateTime date = DateTime.parse(value);
    final DateFormat formatter = withHourMinute
        ? DateFormat('dd MMMM yyyy HH:mm', 'id')
        : withDay
            ? DateFormat('EEEEE, dd MMMM yyyy', 'id')
            : DateFormat('dd MMMM yyyy', 'id');
    String formatted = formatter.format(date);
    return formatted;
  }

    static String formattedDateHours(String value,
      {bool withDay = false, bool withHourMinute = true}) {
    initializeDateFormatting();
    DateTime date = DateTime.parse(value);
    final DateFormat formatter = withHourMinute
        ? DateFormat('dd MMM yyyy HH:mm')
        : withDay
            ? DateFormat('EEEEE, dd MMM yyyy')
            : DateFormat('dd MMM yyyy');
    String formatted = formatter.format(date);
    return formatted;
  }

  static String formattedDateShort(String value,
      {bool withDay = true, bool withHourMinute = false}) {
    initializeDateFormatting();
    DateTime date = DateTime.parse(value);
    final DateFormat formatter = withHourMinute
        ? DateFormat('dd MMM yyyy HH:mm', 'id')
        : withDay
            ? DateFormat('EEEEE, dd MMM yyyy', 'id')
            : DateFormat('dd MMM yyyy', 'id');
    String formatted = formatter.format(date);
    return formatted;
  }

  static String formatDateDetailBreakdown(String value) {
    initializeDateFormatting();
    DateTime date = DateTime.parse(value);
    final DateFormat formatter = DateFormat('dd MMM yyyy - HH:mm', 'id');
    String formatted = formatter.format(date);
    return formatted.toUpperCase();
  }

  static bool isTablet(BuildContext context) {
    // The equivalent of the "smallestWidth" qualifier on Android.
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    // Determine if we should use mobile layout or not, 600 here is
    // a common breakpoint for a typical 7-inch tablet.

    return shortestSide > 600;
  }

  static DateTime getCurrentWITATime() {
    final timeNowUtc = DateTime.now().toUtc();
    final timeWita = timeNowUtc.add(const Duration(hours: 8));
    return timeWita;
  }

  static Future<DateTime> getCurrentNTP() async {
    final ntpNow =
        await NTP.now().onError((error, stackTrace) => DateTime.now());
    final timeNowUtc = ntpNow.toUtc();
    final timeWita = timeNowUtc.add(const Duration(hours: 8));
    log('WITA is at $timeWita');
    return timeWita;
  }

  static String getCurrentLocalDateMinus1() {
    final formatter = DateFormat('EEEEE, d MMM yyyy', 'id');
    final localDate = DateTime.now();
    final date = DateTime(localDate.year, localDate.month, localDate.day)
        .subtract(const Duration(
      days: 1,
    ));
    return formatter.format(date);
  }

  static DateTime convertUTCToWitaTime(String utcTime) {
    final utcDatetime = DateTime.parse(utcTime);
    final witaDatetime = utcDatetime.add(const Duration(hours: 8));

    return witaDatetime;
  }

  static Color getPtyReasonColor(String category) {
    Color equipmentProblem = '#9BCBF1'.toColor();
    Color frontEnvironment = '#047CDD'.toColor();
    Color loadingMethod = '#F8981D'.toColor();
    Color generalProblem = '#955B11'.toColor();
    Color disposalEnvironment = '#B95DCB'.toColor();
    Color materialProblem = '#8F08AA'.toColor();
    Color operatorProblem = '#E174B4'.toColor();
    Color roadEnvironment = '#CD1882'.toColor();
    Color truckProblem = '#FCD305'.toColor();

    switch (category.toUpperCase()) {
      case Constant.ptyDE:
        return disposalEnvironment;
      case Constant.ptyEP:
        return equipmentProblem;
      case Constant.ptyFE:
        return frontEnvironment;
      case Constant.ptyGP:
        return generalProblem;
      case Constant.ptyLM:
        return loadingMethod;
      case Constant.ptyMP:
        return materialProblem;
      case Constant.ptyOP:
        return operatorProblem;
      case Constant.ptyRE:
        return roadEnvironment;
      case Constant.ptyTP:
        return truckProblem;
      default:
        return Colors.transparent;
    }
  }

  static String? formatDateAutoAssignment(String? utcTime) {
    if (utcTime == null) {
      return null;
    }

    DateTime dateTime = DateTime.tryParse(utcTime) ?? DateTime.now();

    if (dateTime.year < 1970) {
      return null;
    }
    final witaDatetime = dateTime.add(const Duration(hours: 8));
    return DateFormat("dd MMM yyyy HH:mm").format(witaDatetime);
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
