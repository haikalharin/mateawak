import 'dart:developer' as dart_dev;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart' as location_package;
import 'package:module_etamkawa/src/features/telematry/domain/telematry_data_model.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../../constants/constant.dart';
import '../../../../shared_component/connection_listener_widget.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';
import '../../infrastructure/repositories/telematry.repositories.dart';

part 'telematry.controller.g.dart';

final activeWidget = StateProvider<String?>((ref) => null);

final locationPermissionProvider =
    StateProvider.autoDispose<LocationPermission?>((ref) => null);

enum USERROLE { superintendentSitemanager, foremanSupervisor, operator }

final userRoleProvider = StateProvider<USERROLE?>((ref) => null);

final activeWidgetProvider = StateProvider.autoDispose<String?>((ref) => null);

final lastActiveWidgetIdProvider = StateProvider<int?>((ref) => null);

@riverpod
class TelematryController extends _$TelematryController {
  @override
  FutureOr<void> build() {}

  Future<void> getLocation() async {
    final location = location_package.Location();

    final permissionStatus = await location.hasPermission();

    if (permissionStatus == location_package.PermissionStatus.denied) {
      await location.requestPermission();
    }

    final isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      await location.requestService();
    }
  }

  Future<String> _getAddressFromLatLang(Position position) async {
    final placeMark =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    final place = placeMark.first;

    return '${place.country}, ${place.administrativeArea}, ${place.subAdministrativeArea}, ${place.locality}, ${place.subLocality}';
  }

  Future<void> insertInitTelematryData(String pageTabWidget) async {
    final timeNow = DateTime.now().toIso8601String();
    final isarInstance = await ref.watch(isarInstanceProvider.future);

    final page = pageTabWidget.split('#');

    isarInstance.writeTxn(() async {
      final data = TelematryDataModel();

      //doesn't include checkout
      data.sessionId = await ref.watch(helperUserProvider).getSessionLogID();

      data.checkin = timeNow.split('.')[0];

      data.page = page[0];
      data.tab = page[1];
      data.widget = page[2];
      data.isOnline = ref.watch(isConnectionAvailableProvider);

      final id = await isarInstance.telematryDataModels.put(data);
      ref.read(lastActiveWidgetIdProvider.notifier).state = id;
    });
  }

  Future<void> completeTelematryDataThenSend(
      String pageTabWidget, String screenName) async {
    final timeNow = DateTime.now().toIso8601String();
    final isarInstance = await ref.watch(isarInstanceProvider.future);

    final id = ref.read(lastActiveWidgetIdProvider);

    if (id != null) {
      isarInstance.writeTxn(() async {
        final data = await isarInstance.telematryDataModels.get(id);

        bool isLocationServiceEnabled =
            await Geolocator.isLocationServiceEnabled();
        Position? position;

        try {
          position = isLocationServiceEnabled
              ? await Geolocator.getCurrentPosition()
              : await Geolocator.getLastKnownPosition();
        } catch (e) {
          dart_dev.log('error location: $position -- $e');
        }

        final address =
            position != null ? await _getAddressFromLatLang(position) : null;

        data?.location = address;
        data?.longitude = position?.longitude;
        data?.latitude = position?.latitude;
        data?.checkout = timeNow.split('.')[0];

        if (data != null) {
          await isarInstance.telematryDataModels.put(data);

          final res = await submitTelematry([data]);
          dart_dev.log('submit telematry result: $res');

          await isarInstance.telematryDataModels.delete(data.id);

          DateTime dateCheckIn =
              DateTime.parse(data.checkin ?? DateTime.now().toIso8601String());
          DateTime dateCheckOut =
              DateTime.parse(data.checkout ?? DateTime.now().toIso8601String());
          int getTime = dateCheckOut.difference(dateCheckIn).inSeconds;
          Telemetry().onCapture(
            pageName: '${data.page}',
            tabName: '${data.tab}',
            widgetName: '${data.widget}',
            checkIn: data.checkin,
            checkOut: data.checkout,
            durationSeconds: getTime,
          );
        }
      });
    }
  }

  void onVisibilityChangedMultiWidget(
      VisibilityInfo visibilityInfo,
      BuildContext context,
      String widgetName,
      int widgetIndex,
      List<int> widgetsListOccupation) {
    if (context.mounted) {
      double screenOccupationPercentage =
          ((visibilityInfo.visibleFraction * visibilityInfo.size.height) /
                  MediaQuery.sizeOf(context).height) *
              100;

      final i = screenOccupationPercentage.toInt();

      widgetsListOccupation[widgetIndex] = i;
      final theBiggest = widgetsListOccupation.reduce(max);

      // print(
      //     'mydebug: onVisibilityChangedMultiWidget $widgetIndex -- ${widgetName.split('#')[2]} -- $i ---> $widgetsListOccupation - $theBiggest');

      final isSwitch = i == theBiggest;

      if (i > 0) {
        if (isSwitch) {
          ref.read(activeWidgetProvider.notifier).state = widgetName;
        }
      }
    }
  }

  void onVisibilityChangedSingleWidget(String widgetName) {
    Future.delayed(Duration.zero, () {
      ref.read(activeWidgetProvider.notifier).state = widgetName;
    });
  }

  Future<bool> submitTelematry(List<TelematryDataModel> telematryData) async {
    final res = await ref
        .read(submitTelematryProvider(telematryData: telematryData).future);

    return res;
  }

  Future<void> sendTelematryInBackground() async {
    final timeNow = DateTime.now().toIso8601String();

    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    Position? position;

    try {
      position = isLocationServiceEnabled
          ? await Geolocator.getCurrentPosition()
          : await Geolocator.getLastKnownPosition();
    } catch (e) {
      dart_dev.log('error location: $position -- $e');
    }

    final address =
        position != null ? await _getAddressFromLatLang(position) : null;

    final backgroundServices = FlutterBackgroundService();
    final isBgServiceRunning = await backgroundServices.isRunning();
    if (!isBgServiceRunning) {
      await backgroundServices.startService();
    }
    final id = ref.read(lastActiveWidgetIdProvider);
    if (id != null) {
      backgroundServices.invoke(Constant.bgMainNavClose, {
        'lastActiveWidgetId': id,
        'address': address,
        'longitude': position?.longitude,
        'latitude': position?.latitude,
        'checkout': timeNow.split('.')[0],
        'url': dotenv.env[EnvConstant.rootUrl],
        'path':
            '/${BspaceModule.getRootUrl(moduleType: ModuleType.sharedGeneral)}/api/telementry/submit?${Constant.apiVer}',
        'accessToken': await ref.read(storageProvider.notifier).read(
              storage: TableConstant.tbMProfile,
              key: ProfileKeyConstant.keyTokenGeneral,
            )
      });
    }
  }
}
