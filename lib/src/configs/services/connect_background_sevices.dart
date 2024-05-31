import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:module_shared/src/configs/services/model/response.model.dart';


class ConnectBackgroundService {
  Future<ApiResponse> post(
      {required String url,
        required String path,
        required body,
        required accessToken}) async {
    BaseOptions options = BaseOptions(
        baseUrl: url,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        headers: {
          'Accept': 'application/json',
        });

    final dio = Dio(options);
    // dio.interceptors.add(ChuckerDioInterceptor());
    dio.interceptors.add(LogInterceptor(
        responseBody: true,
        requestBody: true,
        requestHeader: true,
        responseHeader: true));
    dio.interceptors.add(QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          if (accessToken != null) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          return handler.next(options);
        },
        onResponse: (e, handler) => handler.next(e)));
    void showDownloadProgress(received, total) {
      if (total != -1) {
        if (kDebugMode) {
          print((received / total * 100).toStringAsFixed(0) + "%");
        }
      }
    }

    try {
      final response = await dio.post(path, data: body,  onReceiveProgress: showDownloadProgress,);
      ApiResponse apiResponse = ApiResponse.fromJson({});
      if(response.data != null) {
        apiResponse = ApiResponse.fromJson(response.data as Map<String, dynamic>);
      }
      debugPrint('responsesubmitData: ${apiResponse.result}');

      if (apiResponse.result?.isError == true) {
        throw apiResponse.result!.message.toString();
      } else {
        return apiResponse;
      }
    } on DioException {
      return ApiResponse();
    } catch (e) {
      return ApiResponse();
    }
  }

  Future<Response> downloadImage(
      {required String url,
        Map<String, dynamic>? query,
        CancelToken? cancelToken}) async {
    try {
      Dio dioDownload = Dio();
      //dioDownload.interceptors.add(ChuckerDioInterceptor());
      void showDownloadProgress(received, total) {
        if (total != -1) {
          if (kDebugMode) {
            print((received / total * 100).toStringAsFixed(0) + "%");
          }
        }
      }

      Response response = await dioDownload.get(
        url,
        queryParameters: query,
        onReceiveProgress: showDownloadProgress,
        options: Options(responseType: ResponseType.bytes),
      );
      if (response.statusCode != 200) {
        throw response.statusMessage.toString();
      } else {
        return response;
      }
    } on DioException catch (e) {
      return exceptionDio(e);
    } catch (e) {
      rethrow;
    }
  }
  exceptionDio(DioException e) {
    return switch (e.type) {
      DioExceptionType.connectionError => throw 'Connection Error',
      DioExceptionType.badCertificate => throw 'Bad Certificate',
      DioExceptionType.badResponse => throw 'Bad Response',
      DioExceptionType.cancel => throw 'Cancel',
      DioExceptionType.connectionTimeout => throw 'Connection Timeout',
      DioExceptionType.receiveTimeout => throw 'Receive Timeout',
      DioExceptionType.sendTimeout => throw 'Send Timeout',
      DioExceptionType.unknown => throw 'Unknown',
    };
  }
}
