abstract class KeyValueStorageService {
  Future<void> setKeyValue<T>(String key, T value);
  Future getKeyValue(String key);
  Future<bool> removeKey(String key);
}
