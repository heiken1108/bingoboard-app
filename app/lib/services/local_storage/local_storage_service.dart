import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const String _nameKey = 'name';

  Future<void> saveName(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nameKey, name);
  }

  Future<String> getName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_nameKey) ?? '';
  }
}
