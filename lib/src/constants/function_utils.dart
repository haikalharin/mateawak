import 'dart:io';
import 'dart:math';

import 'package:image_picker/image_picker.dart';
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

String getRandomString(int length) {
  const charset = 'abcdefghijklmnopqrstuvwxyz0123456789';
  Random rnd = Random();
  return String.fromCharCodes(Iterable.generate(
      length, (_) => charset.codeUnitAt(rnd.nextInt(charset.length))));
}

Future<File> asyncMethodSaveFile(dynamic bitmap, {XFile? file}) async {
  //comment out the next two lines to prevent the device from getting
  // the image from the web in order to prove that the picture is
  // coming from the device instead of the web.
  var documentDirectory = await getApplicationDocumentsDirectory();
  String stringRandom = getRandomString(3);
  DateTime dateTime = DateTime.now();
  var firstPath = '';
  var filePathAndName ='';
  String dateTimeStringFile = "${dateTime.year}-${dateTime.month}-${dateTime.day}";
  String dateTimeStringImage = "${dateTime.year}-${dateTime.month}-${dateTime.day}-${dateTime.hour}-${dateTime.minute}-${dateTime.second}-${dateTime.millisecond}";
  if(file != null && file.mimeType != 'jpg'){
    firstPath =
    "${documentDirectory.path}/file-$dateTimeStringFile";
    filePathAndName =
    '${documentDirectory
        .path}/file-$dateTimeStringFile/file-$dateTimeStringImage.${file.mimeType}';
  }else {
     firstPath =
        "${documentDirectory.path}/downloads-$dateTimeStringFile";
     filePathAndName =
        '${documentDirectory
        .path}/downloads-$dateTimeStringFile/file-$dateTimeStringImage.jpg';
  }
  //comment out the next three lines top revent the image from being saved
  //to the device to show that it's coming from the internet
  await Directory(firstPath).create(recursive: true); // <-- 1
  File file2 = File(filePathAndName); // <-- 2
  file2.writeAsBytesSync(bitmap); // <-- 3
  return file2;
}
