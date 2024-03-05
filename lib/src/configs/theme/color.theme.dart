import 'package:flutter/material.dart';

class ColorThemeEtamkawa {
  static Color primary100 = '#D5FADD'.toColor();
  static Color primary200 = '#9CDDB7'.toColor();
  static Color primary300 = '#6BCB94'.toColor();
  static Color primary400 = '#39BA70'.toColor();
  static Color primary500 = '#08A94C'.toColor();
  static Color primary600 = '#06873D'.toColor();
  static Color primaryNew = '#07a449'.toColor();

  static Color secondary100 = '#FEEAD2'.toColor();
  static Color secondary200 = '#FCD6A5'.toColor();
  static Color secondary300 = '#FBC177'.toColor();
  static Color secondary400 = '#F9AD4A'.toColor();
  static Color secondary500 = '#F8981D'.toColor();
  static Color secondary600 = '#C67A17'.toColor();

  static Color neutral0 = '#FFFFFF'.toColor();
  static Color neutral100 = '#F5F8FA'.toColor();
  static Color neutral200 = '#E8ECF5'.toColor();
  static Color neutral300 = '#D2DFE8'.toColor();
  static Color neutral400 = '#B2BFC8'.toColor();
  static Color neutral500 = '#7E93A8'.toColor();
  static Color neutral600 = '#333F47'.toColor();
  static Color neutral700 = '#1A2730'.toColor();

  static Color warning100 = '#FEF6CD'.toColor();
  static Color warning500 = '#FCD305'.toColor();
  static Color warning600 = '#CAA904'.toColor();

  static Color info100 = '#CDE5F8'.toColor();
  static Color info500 = '#047CDD'.toColor();
  static Color info600 = '#0363B1'.toColor();

  static Color danger100 = '#F7D4D4'.toColor();
  static Color danger500 = '#D62926'.toColor();
  static Color danger600 = '#AB211E'.toColor();

  static Color backgroundWhite = '#FFFFFF'.toColor();
  static Color backgroundLight = '#F5F8FA'.toColor();
  static Color backgroundDark = '#333F47'.toColor();

  static Color textWhite = '#FFFFFF'.toColor();
  static Color textLight = '#B2BFC8'.toColor();
  static Color textLightDark = '#7E93A8'.toColor();
  static Color textDark = '#333F47'.toColor();

  static Color iconWhite = '#FFFFFF'.toColor();
  static Color iconLight = '#B2BFC8'.toColor();
  static Color iconLightDark = '#7E93A8'.toColor();
  static Color iconDark = '#333F47'.toColor();

  static Color strokeSuccess = '#06873D'.toColor();
  static Color strokeSecondary = '#C67A17'.toColor();
  static Color strokeDanger = '#AB211E'.toColor();
  static Color strokeInfo = '#0363B1'.toColor();
  static Color strokeTertiary = '#E8ECF5'.toColor();
  static Color strokeDark = '#333F47'.toColor();

  static Color buttonPrimary = '#08A94C'.toColor();
  static Color buttonHover = '#06873D'.toColor();
  static Color buttonSecondaryLight = '#FFFFFF'.toColor();
  static Color buttonSecondaryDark = '#0363B1'.toColor();
  static Color buttonSecondaryStroke = '#E8ECF5'.toColor();

  static Color blueShade400 = '#3696E4'.toColor();
  static Color blueLight = '#CDE5F8'.toColor();


  static Color bgDark = '#121212'.toColor();
}

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
