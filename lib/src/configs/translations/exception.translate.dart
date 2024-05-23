import 'package:easy_localization/easy_localization.dart';

class ExceptionTranslate {
  static const _initial = 'exception';

  static String get startDateGreaterEndDate => '$_initial-startDateGreaterEndDate'.tr();
  static String get oversizedFile => '$_initial-oversizedFile'.tr();
  static String get fullFillAttachment => '$_initial-fullFillAttachment'.tr();
  static Map<String, String> translateEn = {
    startDateGreaterEndDate: 'Start Date is greater than End Date',
    oversizedFile: 'Oversized file, maximum size {size} MB',
    fullFillAttachment: 'Please upload all the files needed'
  };
  static Map<String, String> translateId = {
    startDateGreaterEndDate: 'Tanggal mulai lebih besar Tanggal akhir',
    oversizedFile: 'File melebihi ukuran,ukuran maksimal {size} MB',
    fullFillAttachment: 'Silahkan upload semua file yang dibutuhkan'
  };
}
