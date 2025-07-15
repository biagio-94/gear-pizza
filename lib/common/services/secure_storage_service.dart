import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage;

  SecureStorageService._(this._storage);

  static SecureStorageService? _instance;

  static Future<void> initialize() async {
    const storage = FlutterSecureStorage();
    _instance = SecureStorageService._(storage);
    GetIt.instance.registerSingleton<SecureStorageService>(_instance!);
  }

  Future<void> writeSecureData(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> readSecureData(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> deleteSecureData(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> deleteAllSecureData() async {
    await _storage.deleteAll();
  }

  // Factory method for accessing the singleton instance
  static SecureStorageService get instance {
    if (_instance == null) {
      throw Exception(
          "SecureStorageService not initialized. Call initialize() first.");
    }
    return _instance!;
  }
}
