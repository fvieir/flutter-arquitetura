import 'package:shared_preferences/shared_preferences.dart';

import 'package:arquitetura/interfaces/local_storage_interfaces.dart';

class SharedLocalStorageLocal implements ILocalStorage {
  @override
  Future delete(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  @override
  Future get(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  @override
  Future put(String key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (value is bool) {
      prefs.setBool(key, value);
    } else if (value is double) {
      prefs.setDouble(key, value);
    } else if (value is int) {
      prefs.setInt(key, value);
    } else {
      prefs.setString(key, value);
    }
  }
}
