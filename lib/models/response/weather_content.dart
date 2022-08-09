import 'package:freezed_annotation/freezed_annotation.dart';


part 'weather_content.freezed.dart';

part 'weather_content.g.dart';

@freezed
class WeatherContent with _$WeatherContent {
  const factory WeatherContent({
    String? main,
    String? description,
  }) = _WeatherContent;

  factory WeatherContent.fromJson(Map<String, Object?> json)
  => _$WeatherContentFromJson(json);
}