import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:module_shared/module_shared.dart';
import 'src/app.dart';

Future<void> main() async {
  final appConfig = AppConfig(appName: "Etamkawa", flavor: FlavorType.dev);
  Widget app = await initializeApp(appConfig);
  runApp(app);
}
