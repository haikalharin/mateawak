import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'storage.g.dart';

@riverpod
class Storage extends _$Storage {
  @override
  FutureOr<void> build() {}

  Future<String?> read({required String storage, required String key}) async {
    final Box box = Hive.box(storage);
    String? value = await box.get(key);
    return value;
  }

  Future<void> write({required String storage, required String key, required String? value}) async {
    final Box box = Hive.box(storage);
    await box.put(key, value);
  }

  Future<void> remove({required String storage, required String key}) async {
    final Box box = Hive.box(storage);
    await box.delete(key);
  }

  Future<void> erase({required String storage}) async {
    final Box box = Hive.box(storage);
    await box.clear();
  }

  Future<Map<dynamic, dynamic>?> getAllData({required String storage}) async {
    final Box box = Hive.box(storage);
    return box.toMap();
  }
}
