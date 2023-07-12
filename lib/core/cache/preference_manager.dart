
import 'package:get_storage/get_storage.dart';
import '../enums/langs_enums.dart';
import 'caching_keys.dart';

class PreferenceManager {
  GetStorage getStorage = GetStorage();

  ///
  void saveIsLoggedIn(bool isLoggedIn) => getStorage.write(CachingKey.IS_LOGGED_IN, isLoggedIn);

  bool isLoggedIn() => getStorage.read(CachingKey.IS_LOGGED_IN) as bool? ?? false;

  void saveAuthToken(String authToken) => getStorage.write(CachingKey.AUTH_TOKEN, authToken);

  String? authToken() => getStorage.read(CachingKey.AUTH_TOKEN) as String?;

  void saveStringValue(String cachingKey, String value) => getStorage.write(cachingKey, value);

  String getStringValue(String cachingKey) => getStorage.read(cachingKey) as String;

  void saveBoolValue(String cachingKey, bool value) => getStorage.write(cachingKey, value);

  bool? getBoolValue(String cachingKey) => getStorage.read(cachingKey) as bool?;

  void saveLanguage(LangEnums lang) => getStorage.write(CachingKey.LANGUAGE, lang.name);

  void saveToken(response) => getStorage.write(CachingKey.TOKEN,
      response.headers['set-cookie']![0].split("=")[1].split(';')[0].replaceAll("%3D", "="));

  void saveLaravel(response) => getStorage.write(CachingKey.LAREVEL,
      response.headers['set-cookie']![1].split("=")[1].split(';')[0].replaceAll("%3D", "="));

  String laravel() => getStorage.read(CachingKey.LAREVEL) as String? ?? "";

  String token() => getStorage.read(CachingKey.TOKEN) as String? ?? "";

  LangEnums currentLang() {
    final res = GetStorage().read(CachingKey.LANGUAGE) as String?;
    if (res == null || res == LangEnums.en.name) {
      return LangEnums.en;
    } else {
      return LangEnums.ar;
    }
  }

  void saveAuthUser(String authUser) => GetStorage().write(CachingKey.AUTH_USER, authUser);

  String authUser() => GetStorage().read(CachingKey.AUTH_USER) as String? ?? "";

  void logout() {
    GetStorage().remove(CachingKey.AUTH_USER);
    GetStorage().remove(CachingKey.USER_MODEL);
    GetStorage().remove(CachingKey.AUTH_TOKEN);
    saveIsLoggedIn(false);
  }
}
