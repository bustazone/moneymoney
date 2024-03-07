abstract class ISecureStorageService {
  Future<String> read({required String key, String defaultValue});
  
  Future<void> write({required String key, required String value});

  Future<void> deleteKey(String key);

  // Future<T?> readTyped<T>({required String key, T? defaultValue});
  // Future<void> writeTyped<T>({required String key, required T value});

}