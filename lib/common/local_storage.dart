import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService{

  static LocalStorageService? _instance;
  static SharedPreferences? _preferences;

  static Future<LocalStorageService?> getInstance() async {
    if (_instance == null) {
      _instance = LocalStorageService();
    }
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
    return _instance;
  }

  static addStringValueInLocalStorageService({required String key,required String value}) async{
        _preferences!.setString(key, value);
  }
  static String? getStringValueInLocalStorageService({required String key}){
   return _preferences!.getString(key);
  }
}