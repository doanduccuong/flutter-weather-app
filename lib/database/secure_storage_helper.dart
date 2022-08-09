import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:geolocator/geolocator.dart';

import '../models/entities/token_entity.dart';
import 'share_preferences_helper.dart';

class SecureStorageHelper {
  static const _apiTokenKey = '_apiTokenKey';
  static const _currentLocation = '_currentLocation';

  final FlutterSecureStorage _storage;

  SecureStorageHelper._(this._storage);

  static final SecureStorageHelper _instance =
      SecureStorageHelper._(const FlutterSecureStorage());

  static SecureStorageHelper get instance => _instance;

  //Save token
  void saveToken(TokenEntity token) async {
    await _storage.write(key: _apiTokenKey, value: jsonEncode(token.toJson()));
    SharedPreferencesHelper.setApiTokenKey(_apiTokenKey);
  }

  //Remove token
  void removeToken() async {
    await _storage.delete(key: _apiTokenKey);
  }

  //save altitude and longtitude
  void saveCurrentLocation(Position location) async {
    await _storage.write(
        key: _currentLocation, value: jsonEncode(location.toJson()));
    SharedPreferencesHelper.saveCurrentLocation(location);
  }

  //Get token
  Future<TokenEntity?> getToken() async {
    try {
      final key = await SharedPreferencesHelper.getApiTokenKey();
      final tokenEncoded = await _storage.read(key: key);
      if (tokenEncoded == null) {
        return null;
      } else {
        return TokenEntity.fromJson(
            jsonDecode(tokenEncoded) as Map<String, dynamic>);
      }
    } catch (e) {
      return null;
    }
  }
}
