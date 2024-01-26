import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  writeSecureData(String key, String value) async {
    await storage.write(key: key, value: value);
    print("did it");
  }

  readSecureData(String key) async {
    String value = await storage.read(key: key) ?? 'null';
    print(value);
    return value;
  }

  deleteSecureData(String key) async {
    await storage.delete(key: key);
    print("deleted");
  }
}
