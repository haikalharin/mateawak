import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class Telemetry {
  void onClick({required String eventName, String? pageName, String? widgetName = '', String? tabName = ''}) {
    captureTelemetry(eventName: 'onClick $eventName', pageName: pageName, widgetName: widgetName, tabName: tabName);
  }

  void onTap({required String eventName, String? pageName, String? widgetName = '', String? tabName = ''}) {
    captureTelemetry(eventName: 'onTap $eventName', pageName: pageName, widgetName: widgetName, tabName: tabName);
  }

  void onScroll({required String eventName, String? pageName, String? widgetName = '', String? tabName = ''}) {
    captureTelemetry(eventName: 'onScroll $eventName', pageName: pageName, widgetName: widgetName, tabName: tabName);
  }

  void onCapture({required String pageName, String? widgetName = '', String? tabName = '', int? durationSeconds, String? checkIn, String? checkOut}) {
    captureTelemetry(
      eventName: 'Capture',
      pageName: pageName,
      widgetName: widgetName,
      tabName: tabName,
      duration: durationSeconds,
      checkIn: checkIn,
      checkOut: checkOut,
    );
  }

  void screenTime({required String route, required String prevRoute, required int durationSeconds}) {
    captureTelemetry(eventName: 'ScreenTime', route: route, prevRoute: prevRoute, duration: durationSeconds);
  }

  Future<void> captureTelemetry({
    required String eventName,
    String? pageName,
    String? widgetName,
    String? tabName,
    String? prevRoute,
    String? route,
    int? duration,
    String? checkIn,
    String? checkOut,
  }) async {
    bool connection = await InternetConnectionChecker().hasConnection;
    Posthog().capture(
      eventName: eventName,
      properties: {
        'Connection': connection,
        'Page_Name': pageName,
        'Widget_Name': widgetName,
        'Tab_Name': tabName,
        'Route': route,
        'Prev_Route': prevRoute,
        'Duration': duration,
        'CheckIn': checkIn,
        'CheckOut': checkOut,
      },
    );
  }
}
