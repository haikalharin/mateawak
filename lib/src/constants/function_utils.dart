import 'dart:io';
import 'dart:math';

import 'package:path_provider/path_provider.dart';

String formatDateTime(DateTime dateTime) {
  return "${dateTime.year.toString().padLeft(4, '0')}-"
      "${dateTime.month.toString().padLeft(2, '0')}-"
      "${dateTime.day.toString().padLeft(2, '0')}T"
      "${dateTime.hour.toString().padLeft(2, '0')}:"
      "${dateTime.minute.toString().padLeft(2, '0')}:"
      "${dateTime.second.toString().padLeft(2, '0')}."
      "${dateTime.millisecond.toString().padLeft(3, '0')}";
}

int calculateDifferenceDays(DateTime date1, DateTime date2) {
  // Menghitung selisih hari
  DateTime fixDate1 = DateTime(date1.year, date1.month, date1.day,date1.hour,date1.minute);
  DateTime fixDate2 = DateTime(date2.year, date2.month, date2.day,date2.hour,date2.minute);
  Duration different = fixDate2.difference(fixDate1);
  return different.inDays; // Menggunakan abs() untuk menghindari hasil negatif
}

String getRandomString(int length) {
  const charset = 'abcdefghijklmnopqrstuvwxyz0123456789';
  Random rnd = Random();
  return String.fromCharCodes(Iterable.generate(
      length, (_) => charset.codeUnitAt(rnd.nextInt(charset.length))));
}

Future<File> asyncMethodSaveFile(dynamic bitmap) async {
  var documentDirectory = await getApplicationDocumentsDirectory();
  DateTime dateTime = DateTime.now();
  var filePath = '';
  var filePathAndName = '';
  String dateTimeStringFile =
      "${dateTime.year}-${dateTime.month}-${dateTime.day}";
  String dateTimeStringImage =
      "${dateTime.year}-${dateTime.month}-${dateTime.day}-${dateTime.hour}-${dateTime.minute}-${dateTime.second}-${dateTime.millisecond}";
  filePath = "${documentDirectory.path}/downloads-$dateTimeStringFile";
  filePathAndName =
      '${documentDirectory.path}/downloads-$dateTimeStringFile/file-$dateTimeStringImage.jpg';
  await Directory(filePath).create(recursive: true); // <-- 1
  File file2 = File(filePathAndName); // <-- 2
  file2.writeAsBytesSync(bitmap); // <-- 3
  return file2;
}
//
// Future<PlatformFile> asyncMethodUploadFile({required PlatformFile file}) async {
//   var documentDirectory = await getApplicationDocumentsDirectory();
//   String stringRandom = getRandomString(3);
//   DateTime dateTime = DateTime.now();
//   String dateTimeStringFile =
//       "${dateTime.year}-${dateTime.month}-${dateTime.day}";
//   String dateTimeStringImage =
//       "${dateTime.year}-${dateTime.month}-${dateTime.day}-${dateTime.hour}-${dateTime.minute}-${dateTime.second}-${dateTime.millisecond}";
//   var filePath = "${documentDirectory.path}/file-$dateTimeStringFile";
//   var fileName = "file-$dateTimeStringImage-${file.name}";
//   var filePathAndName = '$filePath/$fileName';
//
//   await Directory(filePath).create(recursive: true); // <-- 1
//   PlatformFile file3 = PlatformFile(
//       path: filePathAndName,
//       name: fileName,
//       size: file.size ?? 0,
//       bytes: file.bytes); // <-- 2
//   // File file2 = File(filePathAndName);
//   // List<int> imageData =
//   //     (file.bytes ?? Uint8List(1)).buffer.asUint8List(); // <-- 2
//   // file2.writeAsBytesSync(imageData);
//   // var fileDelete = File(file.path ?? '');
//   // fileDelete.delete();
//   return file3;
// }
