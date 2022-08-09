// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'temperature_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TemperatureContent _$TemperatureContentFromJson(Map<String, dynamic> json) {
  return _TemperatureContent.fromJson(json);
}

/// @nodoc
mixin _$TemperatureContent {
  double? get temp => throw _privateConstructorUsedError;
  double? get pressure => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureContentCopyWith<TemperatureContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureContentCopyWith<$Res> {
  factory $TemperatureContentCopyWith(
          TemperatureContent value, $Res Function(TemperatureContent) then) =
      _$TemperatureContentCopyWithImpl<$Res>;
  $Res call({double? temp, double? pressure, double? humidity});
}

/// @nodoc
class _$TemperatureContentCopyWithImpl<$Res>
    implements $TemperatureContentCopyWith<$Res> {
  _$TemperatureContentCopyWithImpl(this._value, this._then);

  final TemperatureContent _value;
  // ignore: unused_field
  final $Res Function(TemperatureContent) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_TemperatureContentCopyWith<$Res>
    implements $TemperatureContentCopyWith<$Res> {
  factory _$$_TemperatureContentCopyWith(_$_TemperatureContent value,
          $Res Function(_$_TemperatureContent) then) =
      __$$_TemperatureContentCopyWithImpl<$Res>;
  @override
  $Res call({double? temp, double? pressure, double? humidity});
}

/// @nodoc
class __$$_TemperatureContentCopyWithImpl<$Res>
    extends _$TemperatureContentCopyWithImpl<$Res>
    implements _$$_TemperatureContentCopyWith<$Res> {
  __$$_TemperatureContentCopyWithImpl(
      _$_TemperatureContent _value, $Res Function(_$_TemperatureContent) _then)
      : super(_value, (v) => _then(v as _$_TemperatureContent));

  @override
  _$_TemperatureContent get _value => super._value as _$_TemperatureContent;

  @override
  $Res call({
    Object? temp = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$_TemperatureContent(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TemperatureContent implements _TemperatureContent {
  const _$_TemperatureContent({this.temp, this.pressure, this.humidity});

  factory _$_TemperatureContent.fromJson(Map<String, dynamic> json) =>
      _$$_TemperatureContentFromJson(json);

  @override
  final double? temp;
  @override
  final double? pressure;
  @override
  final double? humidity;

  @override
  String toString() {
    return 'TemperatureContent(temp: $temp, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TemperatureContent &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(humidity));

  @JsonKey(ignore: true)
  @override
  _$$_TemperatureContentCopyWith<_$_TemperatureContent> get copyWith =>
      __$$_TemperatureContentCopyWithImpl<_$_TemperatureContent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemperatureContentToJson(
      this,
    );
  }
}

abstract class _TemperatureContent implements TemperatureContent {
  const factory _TemperatureContent(
      {final double? temp,
      final double? pressure,
      final double? humidity}) = _$_TemperatureContent;

  factory _TemperatureContent.fromJson(Map<String, dynamic> json) =
      _$_TemperatureContent.fromJson;

  @override
  double? get temp;
  @override
  double? get pressure;
  @override
  double? get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_TemperatureContentCopyWith<_$_TemperatureContent> get copyWith =>
      throw _privateConstructorUsedError;
}
