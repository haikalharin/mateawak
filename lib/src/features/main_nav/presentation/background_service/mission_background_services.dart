import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:module_shared/module_shared.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../constants/function_utils.dart';
import '../../../../utils/common_utils.dart';
import '../../../mission/domain/gamification_response.remote.dart';
part 'mission_background_services.g.dart';
@riverpod
Future<void> intializedMissionBackgroundService() async {
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

  serviceInstance.on(Constant.bgMissionInit).listen((payload) async {
    try {
      final existingIsarInstance =
          Isar.getInstance(Constant.etamkawaIsarInstance);

      final isarInstance = existingIsarInstance ??
          Isar.openSync([NewsResponseRemoteSchema],
              directory: dir.path, name: Constant.etamkawaIsarInstance);

      List<GamificationResponseRemote> listResponse = [];
      List<GamificationResponseRemote> listResponseFinal = [];
      List<GamificationResponseRemote> listAfterInputImage = [];
      final employeeId = payload?['employeeId'] as int;
      final requestDate = payload?['requestDate'] as String;
      final repo = payload?['repo'] as Future<List<GamificationResponseRemote>>;
       post(
        accessToken: payload?['accessToken'] as String,
        path: payload?['path'] as String,
        url: payload?['url'] as String,
        body: {
          "employeeId": employeeId,
          "requestDate": requestDate
          //"requestDate": '2024-03-01T03:55:58.918Z'
        },
      ).then((value) async {
        log('submit data result: $value');
        for (var element in value.result?.content) {
          // for (var element in rawMissionDummy) {
          final result = GamificationResponseRemote.fromJson(element);
          listResponse.add(result);
        }
        // final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
        // ref.watch(latestSyncDateState.notifier).state = today;
        for (var element in listResponse) {
          await AsyncValue.guard(() => repo).then((value) async {
            if ((value.value ?? []).isNotEmpty) {
              bool exists = (value.value ?? []).any((item) =>
              item.employeeMissionId == element.employeeMissionId);
              if (!exists) {
                listResponseFinal.add(element);
              }
            } else {
              listResponseFinal.add(element);
            }
          });
        }
        List<GamificationResponseRemote> listResponseFinalFix = listResponseFinal.toSet().toList();
        int index = 0;
        for (var element in listResponseFinalFix) {
          List<TaskDatum> listTask =
              element.chapterData?.single.missionData?.single.taskData ?? [];
          int indexTask = 0;
          List<TaskDatum> taskData = [];
          for (var element in listTask) {
            File file = File('');
            if (element.attachmentPath == null) {
              if(element.attachmentUrl != null) {
                final response = await downloadImage(
                  url: element.attachmentUrl ?? '',
                );
                response.data;
                file = await asyncMethodSaveFile(response.data);
              }
              taskData.add(TaskDatum(taskId: element.taskId,
                  missionId: element.missionId,
                  attachmentId: element.attachmentId,
                  attachmentUrl: element.attachmentUrl,
                  attachmentPath: file.path,
                  taskCode: element.taskCode,
                  taskGroup: element.taskGroup,
                  taskCaption: element.taskCaption,
                  taskTypeCode: element.taskTypeCode,
                  taskTypeName: element.taskTypeName,
                  taskReward: element.taskReward,
                  answerData: element.answerData));
              indexTask++;
            }else{
              taskData.add(TaskDatum(taskId: element.taskId,
                  missionId: element.missionId,
                  attachmentId: element.attachmentId,
                  attachmentUrl: element.attachmentUrl,
                  attachmentPath: element.attachmentPath,
                  taskCode: element.taskCode,
                  taskGroup: element.taskGroup,
                  taskCaption: element.taskCaption,
                  taskTypeCode: element.taskTypeCode,
                  taskTypeName: element.taskTypeName,
                  taskReward: element.taskReward,
                  answerData: element.answerData));
            }
          }
          listAfterInputImage.add(GamificationResponseRemote(
              employeeMissionId: element.employeeMissionId,
              missionId: element.missionId,
              missionStatusCode: element.missionStatusCode,
              missionStatus: element.missionStatus,
              startedDate: element.startedDate,
              dueDate: element.dueDate,
              submittedBy: element.submittedBy,
              submittedDate: element.submittedDate,
              completedBy: element.completedBy,
              completedDate: element.completedDate,
              chapterData: [ChapterDatum(
                chapterId: element.chapterData?.single.chapterId,
                chapterCode: element.chapterData?.single.chapterCode,
                chapterName: element.chapterData?.single.chapterName,
                chapterGoal: element.chapterData?.single.chapterGoal,
                competencyCode: element.chapterData?.single.competencyCode,
                competencyName: element.chapterData?.single.competencyName,
                peopleCategoryCode: element.chapterData?.single.peopleCategoryCode,
                peopleCategoryName: element.chapterData?.single.peopleCategoryName,
                missionData: [
                  MissionDatum(
                    missionId:element.chapterData?.single.missionData?.single.missionId,
                    chapterId:element.chapterData?.single.missionData?.single.chapterId,
                    missionCode:element.chapterData?.single.missionData?.single.missionCode,
                    missionName:element.chapterData?.single.missionData?.single.missionName,
                    missionInstruction:element.chapterData?.single.missionData?.single.missionInstruction,
                    missionDuration:element.chapterData?.single.missionData?.single.missionDuration,
                    missionActiveOnDay:element.chapterData?.single.missionData?.single.missionActiveOnDay,
                    missionTypeCode:element.chapterData?.single.missionData?.single.missionTypeCode,
                    missionTypeName:element.chapterData?.single.missionData?.single.missionTypeName,
                    missionReward:element.chapterData?.single.missionData?.single.missionReward,
                    taskData: taskData,)
                ],
              )
              ]));
          index++;
        }

        await isarInstance.writeTxn(() async {
          //await isarInstance.gamificationResponseRemotes.clear();
          await isarInstance.gamificationResponseRemotes.putAll(listAfterInputImage);
        });
        final data = await isarInstance.gamificationResponseRemotes
            .filter()
            .employeeMissionIdIsNotNull()
            .findAll();

        if (isarInstance.isOpen) {
          await isarInstance.close();
        }
        //await serviceInstance.stopSelf();
      });
    } catch (e) {
      log('background service error: $e');
      throw Exception(e);
    }
  });
}

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
      data: body
    );
    ApiResponse apiResponse =
        ApiResponse.fromJson(response.data as Map<String, dynamic>);

    debugPrint('responsesubmitData: $apiResponse');

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
    dioDownload.interceptors.add(ChuckerDioInterceptor());
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
      options: Options(
          responseType: ResponseType.bytes),
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
