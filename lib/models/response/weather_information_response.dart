import 'package:flutter_base/models/response/temperature_content.dart';
import 'package:flutter_base/models/response/weather_content.dart';
import 'package:flutter_base/models/response/wind_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'hour_weather_content.dart';


part 'weather_information_response.freezed.dart';

part 'weather_information_response.g.dart';

@freezed
class WeatherInformationResponse with _$WeatherInformationResponse {
  const factory WeatherInformationResponse({
    List<WeatherContent?>? weather,
    WindContent? wind,
    int? dt,
    String? name,
    TemperatureContent? main,
    List<HourWeatherContent?>? list,
  }) = _WeatherInformationResponse;

  factory WeatherInformationResponse.fromJson(Map<String, Object?> json)
  => _$WeatherInformationResponseFromJson(json);
}