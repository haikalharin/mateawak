import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:module_shared/src/constants/table.constant.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'telemetry.dart';

typedef ScreenNameExtractor = String? Function(RouteSettings settings);

String? defaultNameExtractor(RouteSettings settings) => settings.name;

class TelemetryObserver extends RouteObserver<PageRoute<dynamic>> {
  TelemetryObserver({this.nameExtractor = defaultNameExtractor});

  final ScreenNameExtractor nameExtractor;

  void _sendScreenView(PageRoute<dynamic> route) {
    final String? screenName = nameExtractor(route.settings);
    if (screenName != null) {
      Posthog().screen(screenName: screenName);
    }
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      String? route_ = nameExtractor(route.settings);
      String? prevRoute_;
      int getTime = 0;
      final Box box = Hive.box(TableConstant.tbTTelemetry);
      if (previousRoute != null) {
        prevRoute_ = nameExtractor(previousRoute.settings);
      }
      if (prevRoute_ != null) {
        dynamic value = box.get(TelemetryKeyConstant.keyScreenTime);
        DateTime currentDate = DateTime.now().toUtc();
        getTime = currentDate.difference(value).inSeconds;
        Telemetry().screenTime(route: route_ ?? '', prevRoute: prevRoute_, durationSeconds: getTime);
      }
      saveTime();
      _sendScreenView(route);
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      _sendScreenView(newRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      String? route_ = nameExtractor(route.settings);
      String? prevRoute_ = nameExtractor(previousRoute.settings);
      final Box box = Hive.box(TableConstant.tbTTelemetry);
      dynamic value = box.get(TelemetryKeyConstant.keyScreenTime);
      if (value != null) {
        DateTime currentDate = DateTime.now().toUtc();
        int getTime = currentDate.difference(value).inSeconds;
        Telemetry().screenTime(route: prevRoute_ ?? '', prevRoute: route_ ?? '', durationSeconds: getTime);
      }
      saveTime();
      _sendScreenView(previousRoute);
    }
  }

  Future<void> saveTime() async {
    final Box box = Hive.box(TableConstant.tbTTelemetry);
    await box.put(TelemetryKeyConstant.keyScreenTime, DateTime.now().toUtc());
  }
}
