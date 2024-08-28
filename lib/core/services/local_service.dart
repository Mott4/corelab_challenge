import 'package:shared_preferences/shared_preferences.dart';

abstract class ILocalDataService {
  Future<void> clearAll();
  Future<void> clear(String key);
  Future<void> add(String key, String data);

  Future<String> get(String key);
}

class LocalDataService implements ILocalDataService {
  @override
  Future<void> add(String key, String data) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(key, data);
  }

  @override
  Future<void> clear(String key) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.remove(key);
  }

  @override
  Future<void> clearAll() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  @override
  Future<String> get(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return (preferences.getString(key)) ?? '{"error_message" : "Incorrect Key or don\'t exist content."}';
  }
}
