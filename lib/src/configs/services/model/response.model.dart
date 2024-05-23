class ApiResponse {
  Result? result;
  String? title;
  int? statusCode;

  ApiResponse({this.result, this.title, this.statusCode});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    result = json['result'] != null ? Result?.fromJson(json['result']) : null;
    title = json['title'];
    statusCode = json['statusCode'];
  }
}

class Result {
  String? message;
  bool? isError;
  dynamic content;

  Result({this.message, this.isError, this.content});

  Result.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    isError = json['isError'];
    content = json['content'];
  }
}
