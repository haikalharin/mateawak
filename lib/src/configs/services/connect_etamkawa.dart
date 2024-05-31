import 'dart:async';
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_shared/src/constants/table.constant.dart';
import 'package:module_shared/src/constants/webservice.constant.dart';
import 'package:module_shared/src/constants/enum.dart';
import 'package:module_shared/src/features/auth/azure.auth.dart';
import 'package:module_shared/src/configs/services/model/response.model.dart';
import 'package:module_shared/src/utils/bspace.module.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'storage.dart';

part 'connect_etamkawa.g.dart';

@Riverpod(keepAlive: true)
class ConnectEtamkawa extends _$ConnectEtamkawa {
  Dio dio = Dio();

  @override
  void build() {
    init();
  }

  init() {
    BaseOptions options = BaseOptions(
        baseUrl: WebServiceSharedConstant.rootUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Accept': 'application/json',
        });
    dio = Dio(options);
    dio.interceptors.add(ChuckerDioInterceptor());
    dio.interceptors.add(QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final accessToken = await ref.read(storageProvider.notifier).read(
                storage: TableConstant.tbMProfile,
                key: ProfileKeyConstant.keyTokenGeneral,
              );
          if (accessToken != null) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          return handler.next(options);
        },
        onError: (e, handler) async {
          if (e.response?.statusCode == 401) {
            await ref.watch(azureAuthProvider.notifier).login();
            final newaccessToken =
                await ref.read(storageProvider.notifier).read(
                      storage: TableConstant.tbMProfile,
                      key: ProfileKeyConstant.keyTokenGeneral,
                    );
            if (newaccessToken != null) {
              e.requestOptions.headers['Authorization'] =
                  'Bearer $newaccessToken';
            }
            return handler.resolve(await dio.fetch(e.requestOptions));
          }
          return handler.next(e);
        },
        onResponse: (e, handler) => handler.next(e)));
  }

  Future<ApiResponse> post(
      {required ModuleType modul,
      required String path,
      required dynamic body,
      Map<String, dynamic>? query,
      CancelToken? cancelToken}) async {
    try {
      Response response = await dio.post(
        '/${BspaceModule.getRootUrl(moduleType: modul)}/$path',
        data: body,
        queryParameters: query,
        cancelToken: cancelToken,
      );
      ApiResponse apiResponse =
          ApiResponse.fromJson(response.data as Map<String, dynamic>);
      return apiResponse;
    } on DioException catch (e) {
      return exceptionDio(e);
    } catch (e) {
      rethrow;
    }
  }

  Future<ApiResponse> delete(
      {required ModuleType modul,
      required String path,
      required id,
      CancelToken? cancelToken}) async {
    try {
      Response response = await dio.delete(
        '/${BspaceModule.getRootUrl(moduleType: modul)}/$path/$id',
        cancelToken: cancelToken,
      );
      ApiResponse apiResponse =
          ApiResponse.fromJson(response.data as Map<String, dynamic>);
      if (apiResponse.result?.isError == true) {
        throw apiResponse.result!.message.toString();
      } else {
        return apiResponse;
      }
    } on DioException catch (e) {
      return exceptionDio(e);
    } catch (e) {
      throw e.toString();
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

extension CancelTokenX on Ref {
  CancelToken cancelToken() {
    final CancelToken cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}
