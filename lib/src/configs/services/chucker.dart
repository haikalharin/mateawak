import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:module_shared/src/constants/constant.dart';
import 'package:module_shared/src/constants/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'chucker.g.dart';

@riverpod
NavigatorObserver chuckerObserver(ChuckerObserverRef ref) {
  return ChuckerFlutter.navigatorObserver;
}

@riverpod
Widget chuckerBtn(ChuckerBtnRef ref) {
  return ChuckerFlutter.chuckerButton;
}

@riverpod
void chuckerShowRelease(ChuckerShowReleaseRef ref) {
  if (dotenv.env[EnvConstant.environment] == FlavorType.prd.name) {
    ChuckerFlutter.showOnRelease = false;
  } else {
    ChuckerFlutter.showOnRelease = true;
  }
}
