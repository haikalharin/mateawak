import 'dart:developer' as dart_dev;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart' as location_package;
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/telematry/domain/telematry_data_model.dart';
import 'package:module_etamkawa/src/features/telematry/infrastructure/repositories/telematry.repositories.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'posthog.controller.g.dart';

final activeWidget = StateProvider<String?>((ref) => null);

final locationPermissionProvider =
StateProvider.autoDispose<LocationPermission?>((ref) => null);

enum USERROLE { superintendentSitemanager, foremanSupervisor, operator }

final userRoleProvider = StateProvider<USERROLE?>((ref) => null);

final activeWidgetProvider = StateProvider.autoDispose<String?>((ref) => null);

final lastActiveWidgetIdProvider = StateProvider<int?>((ref) => null);

@riverpod
class PosthogController extends _$PosthogController {
  @override
  FutureOr<void> build() {}

  }

