import 'package:flutter_base/configs/app_configs.dart';
import 'package:flutter_base/models/entities/movie_entity.dart';
import 'package:flutter_base/models/response/array_response.dart';
import 'package:flutter_base/models/response/weather_information_response.dart';
import 'package:flutter_base/network/api_client.dart';

abstract class LocationRepository {
  Future<WeatherInformationResponse?> getCurrentWeatherContent(
      {required double latitude, required double longitude});

  Future<WeatherInformationResponse?> getHourWeatherContent(
      {required double latitude, required double longitude});
}

class LocationRepoImpl extends LocationRepository {
  ApiClient apiClient;

  LocationRepoImpl({required this.apiClient});

  @override
  Future<WeatherInformationResponse?> getCurrentWeatherContent(
      {required double latitude, required double longitude}) async {
    return await apiClient.getWeatherContent(
      LocationAPIConfig.apiKey,
      latitude,
      longitude,
    );
  }

  @override
  Future<WeatherInformationResponse?> getHourWeatherContent(
      {required double latitude, required double longitude}) async {
    return await apiClient.getHourlyWeatherContent(
      LocationAPIConfig.apiKey1,
      latitude,
      longitude,
    );
  }
}
