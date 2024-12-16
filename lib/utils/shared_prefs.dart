import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefKeys {
  const SharedPrefKeys._();

  static const authData = "AUTHENTICATION";
}

class SharedPrefs {
  static late final SharedPrefs shared;
  late final SharedPreferences _sharedPreference;

  init() async {
    shared = SharedPrefs();
    shared._sharedPreference = await SharedPreferences.getInstance();
  }
}

extension SharedPrefsExt on SharedPrefs {
  Future<void> save(String key, dynamic data) async {
    if (data is String) {
      await _sharedPreference.setString(key, data);
    } else if (data is bool) {
      await _sharedPreference.setBool(key, data);
    } else if (data is int) {
      await _sharedPreference.setInt(key, data);
    } else if (data is double) {
      await _sharedPreference.setDouble(key, data);
    } else if (data is List<String>) {
      await _sharedPreference.setStringList(key, data);
    } else {
      await _sharedPreference.setString(key, jsonEncode(data));
    }
  }

  T? get<T>(String key,
      [T Function(Map<String, dynamic>)? fromJson,
      T Function(List<dynamic>)? fromList]) {
    if (T == String) {
      return _sharedPreference.getString(key) as T?;
    } else if (T == bool) {
      return _sharedPreference.getBool(key) as T?;
    } else if (T == int) {
      return _sharedPreference.getInt(key) as T?;
    } else if (T == double) {
      return _sharedPreference.getDouble(key) as T?;
    } else if (T == List<String>) {
      return _sharedPreference.getStringList(key) as T?;
    } else {
      final jsonString = _sharedPreference.getString(key);
      if (fromJson != null && jsonString != null && jsonString.isNotEmpty) {
        return fromJson(jsonDecode(jsonString));
      }
      if (fromList != null && jsonString != null && jsonString.isNotEmpty) {
        return fromList(jsonDecode(jsonString));
      }
      return null;
    }
  }

  Future<void> clear(String key) async {
    await _sharedPreference.remove(key);
  }
}

final sharedPrefs = SharedPrefs();
