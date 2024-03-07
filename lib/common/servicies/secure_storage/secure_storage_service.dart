import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:moneymoney/common/servicies/secure_storage/secure_storage_service_int.dart';

class SecureStorageService implements ISecureStorageService {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<String> read({required String key, String defaultValue = ''}) async {
    return await storage.read(key: key) ?? defaultValue;
  }

  Future<void> write({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }

  Future<void> deleteKey(String key) async {
    await storage.delete(key: key);
  }
  
  // @override
  // Future<T?> readTyped<T>({required String key, T? defaultValue}) async {
  //   String? readValue = await storage.read(key: key);
  //   if (readValue == null) return defaultValue;
  //   return T.fromJson(readValue);
  // }
  
  // @override
  // Future<void> writeTyped<T>({required String key, required T value}) {
  //   // TODO: implement writeTyped
  //   throw UnimplementedError();
  // }
}