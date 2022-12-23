import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  static late final SharedPreferences instance;

  static Future<SharedPreferences> init() async =>
      instance = await SharedPreferences.getInstance();

  static Future<dynamic> reset() async {
    instance.clear();
  }
}
