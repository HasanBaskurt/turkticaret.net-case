import 'package:turkticaret_net_case/core/constants/app_constants.dart';
import 'package:get_storage/get_storage.dart';
import 'package:turkticaret_net_case/core/storage/app_storage_keys.dart';

class AppStorage {
  static final AppStorage _instance = AppStorage._internal();

  factory AppStorage() {
    return _instance;
  }

  AppStorage._internal();

  late GetStorage _box;

  Future<void> init() async {
    await GetStorage.init(AppConstants.APP_STORAGE_NAME);
    _box = GetStorage(AppConstants.APP_STORAGE_NAME);
  }

  // Read and write methods
  T? read<T>(String key) => _box.read<T>(AppStorageKeys.PREFIX + key);

  Future<void> write<T>(String key, T value) async {
    await _box.write(AppStorageKeys.PREFIX + key, value);
  }

  // Remove a specific key
  Future<void> remove(String key) async {
    await _box.remove(key);
  }

  // Clear all data in the box
  Future<void> clear() async {
    await _box.erase();
  }

  // App theme storage methods
  int? getThemeIndex() => read<int>(AppStorageKeys.APP_THEME_KEY);

  Future<void> setThemeIndex({required int themeIndex}) =>
      write(AppStorageKeys.APP_THEME_KEY, themeIndex);

  // App language storage methods
  String? getLanguageCode() => read<String>(AppStorageKeys.APP_LANGUAGE_KEY);

  Future<void> setLanguageCode({required String languageCode}) =>
      write(AppStorageKeys.APP_LANGUAGE_KEY, languageCode);
}
