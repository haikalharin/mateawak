import 'dart:convert';
import 'dart:developer';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/telematry/domain/telematry_data_model.dart';
import 'package:module_shared/module_shared.dart';
import 'package:path_provider/path_provider.dart';

Future<void> intializedBackgroundService() async {
  log('intializedBackgroundService');
  final service = FlutterBackgroundService();
  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      autoStart: false,
      isForegroundMode: false,
    ),
    iosConfiguration: IosConfiguration(
        autoStart: false, onForeground: onStart, onBackground: onIosBackground),
  );
  await service.startService();
}

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance serviceInstance) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  await performExecution(serviceInstance);

  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance serviceInstance) async {
  DartPluginRegistrant.ensureInitialized();

  await performExecution(serviceInstance);
}

Future<void> performExecution(ServiceInstance serviceInstance) async {
  final dir = await getApplicationSupportDirectory();

  serviceInstance.on(Constant.bgTelematryClose).listen((payload) {
    if (payload?['lastActiveWidgetId'] != null) {
      try {
        final existingIsarInstance = Isar.getInstance(Constant.bpsIsarInstance);

        final isarInstance = existingIsarInstance ??
            Isar.openSync([TelematryDataModelSchema],
                directory: dir.path, name: Constant.bpsIsarInstance);

        final id = payload?['lastActiveWidgetId'] as int;
        final address = payload?['address'] as String?;
        final longitude = payload?['longitude'] as double?;
        final latitude = payload?['latitude'] as double?;
        final checkout = payload?['checkout'] as String?;

        final data = isarInstance.telematryDataModels.getSync(id);

        if (data != null) {
          data.location = address;
          data.longitude = longitude;
          data.latitude = latitude;
          data.checkout = checkout;

          isarInstance.writeTxnSync(() {
            isarInstance.telematryDataModels.putSync(data);
          });

          submitTelematry(
            accessToken: payload?['accessToken'] as String,
            path: payload?['path'] as String,
            url: payload?['url'] as String,
            telematryData: [data],
          ).then((value) async {
            log('submit telematry result: $value');

            isarInstance.writeTxnSync(() {
              isarInstance.telematryDataModels.deleteSync(data.id);
            });
            if (isarInstance.isOpen) {
              await isarInstance.close();
            }
            //await serviceInstance.stopSelf();
          });
        }
      } catch (e) {
        log('background service error: $e');
        throw Exception(e);
      }
    }
  });
}

Future<bool> submitTelematry(
    {required String url,
    required String path,
    required List<TelematryDataModel> telematryData,
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

  try {
    final response = await dio.post(
      path,
      data: jsonEncode(telematryData),
    );

    ApiResponse apiResponse =
        ApiResponse.fromJson(response.data as Map<String, dynamic>);

    debugPrint('responsesubmitTelematry: $apiResponse');

    return apiResponse.statusCode == 200 ||
        (apiResponse.result?.isError == false);
  } on DioException {
    return false;
  } catch (e) {
    return false;
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
