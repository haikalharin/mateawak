// import 'dart:convert';
// import 'dart:developer';
// import 'dart:ui';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_background_service/flutter_background_service.dart';
// import 'package:isar/isar.dart';
// import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
// import 'package:module_shared/module_shared.dart';
// import 'package:path_provider/path_provider.dart';
//
// import '../../../../constants/constant.dart';
//
// Future<void> intializedNewsBackgroundService() async {
//   log('intializedBackgroundService');
//   final service = FlutterBackgroundService();
//   await service.configure(
//     androidConfiguration: AndroidConfiguration(
//       onStart: onStart,
//       autoStart: false,
//       isForegroundMode: false,
//     ),
//     iosConfiguration: IosConfiguration(
//         autoStart: false, onForeground: onStart, onBackground: onIosBackground),
//   );
//   await service.startService();
// }
//
// @pragma('vm:entry-point')
// Future<bool> onIosBackground(ServiceInstance serviceInstance) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   DartPluginRegistrant.ensureInitialized();
//
//   await performExecution(serviceInstance);
//
//   return true;
// }
//
// @pragma('vm:entry-point')
// void onStart(ServiceInstance serviceInstance) async {
//   DartPluginRegistrant.ensureInitialized();
//
//   await performExecution(serviceInstance);
// }
//
// Future<void> performExecution(ServiceInstance serviceInstance) async {
//   final dir = await getApplicationSupportDirectory();
//
//   serviceInstance.on(Constant.bgMainNavClose).listen((payload) {
//     if (payload?['attachId'] != null) {
//       try {
//         final existingIsarInstance = Isar.getInstance(Constant.etamkawaIsarInstance);
//
//         final isarInstance = existingIsarInstance ??
//             Isar.openSync([NewsResponseRemoteSchema],
//                 directory: dir.path, name: Constant.etamkawaIsarInstance);
//
//         final attachmentURL = payload?['attachmentURL'] as String;
//         final title = payload?['title'] as String;
//         final fileName = payload?['fileName'] as String;
//         final content = payload?['content'] as String;
//
//         final data = isarInstance.newsResponseRemotes.getSync(attachId);
//
//         if (data != null) {
//           data.title = title;
//           data.attachmentURL = attachmentURL;
//           data.content = content;
//           isarInstance.writeTxnSync(() {
//             isarInstance.newsResponseRemotes.putSync(data);
//           });
//
//           submitTelematry(
//             accessToken: payload?['accessToken'] as String,
//             path: payload?['path'] as String,
//             url: payload?['url'] as String,
//             telematryData: [data],
//           ).then((value) async {
//             log('submit data result: $value');
//
//             isarInstance.writeTxnSync(() {
//               isarInstance.newsResponseRemotes.deleteSync(data.attachmentId??0);
//             });
//             if (isarInstance.isOpen) {
//               await isarInstance.close();
//             }
//             //await serviceInstance.stopSelf();
//           });
//         }
//       } catch (e) {
//         log('background service error: $e');
//         throw Exception(e);
//       }
//     }
//   });
// }
//
// Future<bool> submitTelematry(
//     {required String url,
//     required String path,
//     required List<NewsResponseRemote> telematryData,
//     required accessToken}) async {
//   BaseOptions options = BaseOptions(
//       baseUrl: url,
//       receiveDataWhenStatusError: true,
//       connectTimeout: const Duration(seconds: 60),
//       receiveTimeout: const Duration(seconds: 60),
//       headers: {
//         'Accept': 'application/json',
//       });
//
//   final dio = Dio(options);
//   dio.interceptors.add(LogInterceptor(
//       responseBody: true,
//       requestBody: true,
//       requestHeader: true,
//       responseHeader: true));
//   dio.interceptors.add(QueuedInterceptorsWrapper(
//       onRequest: (options, handler) async {
//         if (accessToken != null) {
//           options.headers['Authorization'] = 'Bearer $accessToken';
//         }
//         return handler.next(options);
//       },
//       onResponse: (e, handler) => handler.next(e)));
//
//   try {
//     final response = await dio.post(
//       path,
//       data: jsonEncode(telematryData),
//     );
//
//     ApiResponse apiResponse =
//         ApiResponse.fromJson(response.data as Map<String, dynamic>);
//
//     debugPrint('responsesubmitData: $apiResponse');
//
//     return apiResponse.statusCode == 200 ||
//         (apiResponse.result?.isError == false);
//   } on DioException {
//     return false;
//   } catch (e) {
//     return false;
//   }
// }
//
// exceptionDio(DioException e) {
//   return switch (e.type) {
//     DioExceptionType.connectionError => throw 'Connection Error',
//     DioExceptionType.badCertificate => throw 'Bad Certificate',
//     DioExceptionType.badResponse => throw 'Bad Response',
//     DioExceptionType.cancel => throw 'Cancel',
//     DioExceptionType.connectionTimeout => throw 'Connection Timeout',
//     DioExceptionType.receiveTimeout => throw 'Receive Timeout',
//     DioExceptionType.sendTimeout => throw 'Send Timeout',
//     DioExceptionType.unknown => throw 'Unknown',
//   };
// }