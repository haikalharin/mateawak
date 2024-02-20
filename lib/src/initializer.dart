import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_shared/module_shared.dart';

class Initializer {
  static Future<void> init(AppConfig appConfig) async {
    try {
      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      await initStorage();
      initScreenPreference();
      await EasyLocalization.ensureInitialized();
    } catch (err) {
      rethrow;
    }
  }

  static Future<void> initStorage() async {
    // await Hive.initFlutter();
    // await Hive.openBox(TableConstant.tbMProfile);
    // await Hive.openBox(base_table.TableConstant.tbMMenu);
    // await Hive.openBox(base_table.TableConstant.tbMGeneral);
    // await Hive.openBox(TableConstant.tbMMenu);
    // var box = Hive.box(TableConstant.tbMProfile);
    // var box2 = Hive.box(TableConstant.tbMMenu);
    // box.put('1', 'value1');
    // box.put('2', 'value2');
    // box.put('3', 'value3');
    // print(await Storage(storage: TableConstant.tbMProfile).read('1'));
    // print(await Storage(storage: TableConstant.tbMProfile).getAllData());
    // print(await Storage(storage: TableConstant.tbMMenu).read('1'));
    // print(await Storage(storage: TableConstant.tbMMenu).getAllData());
  }

  static void initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
