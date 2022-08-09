import 'package:shared_preferences/shared_preferences.dart';

///缓存管理类
class SpHelper {
  SharedPreferences? prefs;

  SpHelper._() {
    init();
  }

  SpHelper._pre(SharedPreferences this.prefs);

  void init() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  static SpHelper? _instance;

  ///预初始化，防止在使用get时，prefs还未完成初始化
  static Future<SpHelper> preInit() async {
    if (_instance == null) {
      var prefs = await SharedPreferences.getInstance();
      _instance = SpHelper._pre(prefs);
    }
    return _instance!;
  }

  static SpHelper getInstance() {
    _instance ??= SpHelper._();
    return _instance!;
  }

  setString(String key, String value) {
    prefs?.setString(key, value);
  }

  setBool(String key, bool value) {
    prefs?.setBool(key, value);
  }

  setInt(String key, int value) {
    prefs?.setInt(key, value);
  }

  setStringList(String key, List<String> value) {
    prefs?.setStringList(key, value);
  }

  delete(String key) {
    prefs?.remove(key);
  }

  T get<T>(String key) {
    return prefs?.get(key) as T;
  }
}
