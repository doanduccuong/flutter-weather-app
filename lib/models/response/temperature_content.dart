import 'package:freezed_annotation/freezed_annotation.dart';


part 'temperature_content.freezed.dart';

part 'temperature_content.g.dart';

@freezed
class TemperatureContent with _$TemperatureContent {
  const factory TemperatureContent({
    double? temp,
    double? pressure,
    double? humidity,
  }) = _TemperatureContent;

  factory TemperatureContent.fromJson(Map<String, Object?> json)
  => _$TemperatureContentFromJson(json);
}