// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hour_weather_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HourWeatherContent _$HourWeatherContentFromJson(Map<String, dynamic> json) {
  return _HourWeatherContent.fromJson(json);
}

/// @nodoc
mixin _$HourWeatherContent {
  int? get dt => throw _privateConstructorUsedError;
  TemperatureContent? get main => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourWeatherContentCopyWith<HourWeatherContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourWeatherContentCopyWith<$Res> {
  factory $HourWeatherContentCopyWith(
          HourWeatherContent value, $Res Function(HourWeatherContent) then) =
      _$HourWeatherContentCopyWithImpl<$Res>;
  $Res call({int? dt, TemperatureContent? main});

  $TemperatureContentCopyWith<$Res>? get main;
}

/// @nodoc
class _$HourWeatherContentCopyWithImpl<$Res>
    implements $HourWeatherContentCopyWith<$Res> {
  _$HourWeatherContentCopyWithImpl(this._value, this._then);

  final HourWeatherContent _value;
  // ignore: unused_field
  final $Res Function(HourWeatherContent) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? main = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as TemperatureContent?,
    ));
  }

  @override
  $TemperatureContentCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $TemperatureContentCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value));
    });
  }
}

/// @nodoc
abstract class _$$_HourWeatherContentCopyWith<$Res>
    implements $HourWeatherContentCopyWith<$Res> {
  factory _$$_HourWeatherContentCopyWith(_$_HourWeatherContent value,
          $Res Function(_$_HourWeatherContent) then) =
      __$$_HourWeatherContentCopyWithImpl<$Res>;
  @override
  $Res call({int? dt, TemperatureContent? main});

  @override
  $TemperatureContentCopyWith<$Res>? get main;
}

/// @nodoc
class __$$_HourWeatherContentCopyWithImpl<$Res>
    extends _$HourWeatherContentCopyWithImpl<$Res>
    implements _$$_HourWeatherContentCopyWith<$Res> {
  __$$_HourWeatherContentCopyWithImpl(
      _$_HourWeatherContent _value, $Res Function(_$_HourWeatherContent) _then)
      : super(_value, (v) => _then(v as _$_HourWeatherContent));

  @override
  _$_HourWeatherContent get _value => super._value as _$_HourWeatherContent;

  @override
  $Res call({
    Object? dt = freezed,
    Object? main = freezed,
  }) {
    return _then(_$_HourWeatherContent(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as TemperatureContent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourWeatherContent implements _HourWeatherContent {
  const _$_HourWeatherContent({this.dt, this.main});

  factory _$_HourWeatherContent.fromJson(Map<String, dynamic> json) =>
      _$$_HourWeatherContentFromJson(json);

  @override
  final int? dt;
  @override
  final TemperatureContent? main;

  @override
  String toString() {
    return 'HourWeatherContent(dt: $dt, main: $main)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourWeatherContent &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.main, main));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(main));

  @JsonKey(ignore: true)
  @override
  _$$_HourWeatherContentCopyWith<_$_HourWeatherContent> get copyWith =>
      __$$_HourWeatherContentCopyWithImpl<_$_HourWeatherContent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourWeatherContentToJson(
      this,
    );
  }
}

abstract class _HourWeatherContent implements HourWeatherContent {
  const factory _HourWeatherContent(
      {final int? dt, final TemperatureContent? main}) = _$_HourWeatherContent;

  factory _HourWeatherContent.fromJson(Map<String, dynamic> json) =
      _$_HourWeatherContent.fromJson;

  @override
  int? get dt;
  @override
  TemperatureContent? get main;
  @override
  @JsonKey(ignore: true)
  _$$_HourWeatherContentCopyWith<_$_HourWeatherContent> get copyWith =>
      throw _privateConstructorUsedError;
}
