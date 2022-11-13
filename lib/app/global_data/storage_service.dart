import 'package:get_storage/get_storage.dart';
import 'dart:convert' as convert;

abstract class LocalStorage {
  Future<void> write(final String key, final dynamic value);
  Future<void> writeDynamic(final String key, final dynamic value);
  dynamic read<S>(final String key);
  void remove(final String key);
  void removeAll();
}

class StorageService implements LocalStorage {
  StorageService() {
    _init();
  }

  late GetStorage storage;

  void _init() {
    storage = GetStorage();
  }

  @override
  Future<void> write(final String key, final dynamic value) async {
    await storage.write(key, convert.jsonEncode(value));
  }

  @override
  dynamic read<S>(final String key) {
    final value = storage.read(key);
    if (value == null) return;
    return convert.jsonDecode(value.toString());
  }



  @override
  void remove(final String key) {
    storage.remove(key);
  }

  @override
  Future<void> writeDynamic(String key, value) async {
    await storage.write(key, value);
  }

@override
void removeAll() {
  throw UnimplementedError();
}

}