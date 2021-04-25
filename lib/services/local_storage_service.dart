import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  Future<void> setItem(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(key, value);
  }

  Future<String?> getItem(String key) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(key);
  }

  Future<void> removeItem(String key) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(key);
  }
}
