// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:module_etamkawa/src/app.dart';
import 'package:module_etamkawa/src/constants/function_utils.dart';
import 'package:module_shared/module_shared.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final appConfig = AppConfig(appName: "etamkawa", flavor: FlavorType.uat);
    await tester.pumpWidget(MainApp(config: appConfig));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
  testWidgets('difference day test', (WidgetTester tester) async {

    DateTime dueDate =
    DateTime.parse('2024-05-12T23:59:59');
    int different = calculateDifferenceDays(dueDate, DateTime.now());
    print(different);
  });
}
