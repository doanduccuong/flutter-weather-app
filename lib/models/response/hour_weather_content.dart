import 'package:flutter_base/models/response/temperature_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'hour_weather_content.freezed.dart';

part 'hour_weather_content.g.dart';

@freezed
class HourWeatherContent with _$HourWeatherContent {
  const factory HourWeatherContent({
   int? dt,
    TemperatureContent? main,

  }) = _HourWeatherContent;

  factory HourWeatherContent.fromJson(Map<String, Object?> json)
  => _$HourWeatherContentFromJson(json);
}