class FileUpload {
  int? attachmentID;
  String? file;
  String? fileName;
  double? size;
  String? extension;

  FileUpload({this.attachmentID, this.file, this.fileName, this.size, this.extension});

  FileUpload.fromJson(Map<String, dynamic> json) {
    attachmentID = json['attachmentID'];
    file = json['file'];
    fileName = json['fileName'];
    size = json['size'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['attachmentID'] = attachmentID;
    data['file'] = file;
    data['fileName'] = fileName;
    data['size'] = size;
    data['extension'] = extension;
    return data;
  }

  clear() {
    attachmentID = null;
    file = null;
    fileName = null;
    size = null;
    extension = null;
  }
}
