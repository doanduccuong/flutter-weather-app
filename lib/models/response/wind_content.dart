import 'package:freezed_annotation/freezed_annotation.dart';


part 'wind_content.freezed.dart';

part 'wind_content.g.dart';

@freezed
class WindContent with _$WindContent {
  const factory WindContent({
    double? speed,
    num? deg,
  }) = _WindContent;

  factory WindContent.fromJson(Map<String, Object?> json)
  => _$WindContentFromJson(json);
}