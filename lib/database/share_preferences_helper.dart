import 'package:flutter_base/utils/logger.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const _introKey = '_introKey';

  static const _authKey = '_authKey';
  static const _latitude = '_latitude';
  static const _longitude = '_longitude';

  //Get authKey
  static Future<String> getApiTokenKey() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(_authKey) ?? "";
    } catch (e) {
      logger.e(e);
      return "";
    }
  }
  static Future<double?> getLongitude() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(_longitude);
  }
  static Future<double?> getLatitude() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(_latitude);
  }

  //Set authKey
  static void setApiTokenKey(String apiTokenKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authKey, apiTokenKey);
  }

  static void removeApiTokenKey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_authKey);
  }

  //set location
  static void saveCurrentLocation(Position position) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setDouble(_longitude, position.longitude);
    await preferences.setDouble(_latitude, position.latitude);
  }

  //Get intro
  static Future<bool> isSeenIntro() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_introKey) ?? false;
    } catch (e) {
      logger.e(e);
      return false;
    }
  }

  //Set intro
  static void setSeenIntro({isSeen = true}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_introKey, isSeen ?? true);
  }
}
