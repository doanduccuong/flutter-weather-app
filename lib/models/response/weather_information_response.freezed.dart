// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_information_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherInformationResponse _$WeatherInformationResponseFromJson(
    Map<String, dynamic> json) {
  return _WeatherInformationResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherInformationResponse {
  List<WeatherContent?>? get weather => throw _privateConstructorUsedError;
  WindContent? get wind => throw _privateConstructorUsedError;
  int? get dt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  TemperatureContent? get main => throw _privateConstructorUsedError;
  List<HourWeatherContent?>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherInformationResponseCopyWith<WeatherInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInformationResponseCopyWith<$Res> {
  factory $WeatherInformationResponseCopyWith(WeatherInformationResponse value,
          $Res Function(WeatherInformationResponse) then) =
      _$WeatherInformationResponseCopyWithImpl<$Res>;
  $Res call(
      {List<WeatherContent?>? weather,
      WindContent? wind,
      int? dt,
      String? name,
      TemperatureContent? main,
      List<HourWeatherContent?>? list});

  $WindContentCopyWith<$Res>? get wind;
  $TemperatureContentCopyWith<$Res>? get main;
}

/// @nodoc
class _$WeatherInformationResponseCopyWithImpl<$Res>
    implements $WeatherInformationResponseCopyWith<$Res> {
  _$WeatherInformationResponseCopyWithImpl(this._value, this._then);

  final WeatherInformationResponse _value;
  // ignore: unused_field
  final $Res Function(WeatherInformationResponse) _then;

  @override
  $Res call({
    Object? weather = freezed,
    Object? wind = freezed,
    Object? dt = freezed,
    Object? name = freezed,
    Object? main = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherContent?>?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindContent?,
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as TemperatureContent?,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<HourWeatherContent?>?,
    ));
  }

  @override
  $WindContentCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindContentCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value));
    });
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
abstract class _$$_WeatherInformationResponseCopyWith<$Res>
    implements $WeatherInformationResponseCopyWith<$Res> {
  factory _$$_WeatherInformationResponseCopyWith(
          _$_WeatherInformationResponse value,
          $Res Function(_$_WeatherInformationResponse) then) =
      __$$_WeatherInformationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<WeatherContent?>? weather,
      WindContent? wind,
      int? dt,
      String? name,
      TemperatureContent? main,
      List<HourWeatherContent?>? list});

  @override
  $WindContentCopyWith<$Res>? get wind;
  @override
  $TemperatureContentCopyWith<$Res>? get main;
}

/// @nodoc
class __$$_WeatherInformationResponseCopyWithImpl<$Res>
    extends _$WeatherInformationResponseCopyWithImpl<$Res>
    implements _$$_WeatherInformationResponseCopyWith<$Res> {
  __$$_WeatherInformationResponseCopyWithImpl(
      _$_WeatherInformationResponse _value,
      $Res Function(_$_WeatherInformationResponse) _then)
      : super(_value, (v) => _then(v as _$_WeatherInformationResponse));

  @override
  _$_WeatherInformationResponse get _value =>
      super._value as _$_WeatherInformationResponse;

  @override
  $Res call({
    Object? weather = freezed,
    Object? wind = freezed,
    Object? dt = freezed,
    Object? name = freezed,
    Object? main = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_WeatherInformationResponse(
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherContent?>?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindContent?,
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as TemperatureContent?,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<HourWeatherContent?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherInformationResponse implements _WeatherInformationResponse {
  const _$_WeatherInformationResponse(
      {final List<WeatherContent?>? weather,
      this.wind,
      this.dt,
      this.name,
      this.main,
      final List<HourWeatherContent?>? list})
      : _weather = weather,
        _list = list;

  factory _$_WeatherInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherInformationResponseFromJson(json);

  final List<WeatherContent?>? _weather;
  @override
  List<WeatherContent?>? get weather {
    final value = _weather;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WindContent? wind;
  @override
  final int? dt;
  @override
  final String? name;
  @override
  final TemperatureContent? main;
  final List<HourWeatherContent?>? _list;
  @override
  List<HourWeatherContent?>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeatherInformationResponse(weather: $weather, wind: $wind, dt: $dt, name: $name, main: $main, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherInformationResponse &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.wind, wind) &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(wind),
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherInformationResponseCopyWith<_$_WeatherInformationResponse>
      get copyWith => __$$_WeatherInformationResponseCopyWithImpl<
          _$_WeatherInformationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherInformationResponseToJson(
      this,
    );
  }
}

abstract class _WeatherInformationResponse
    implements WeatherInformationResponse {
  const factory _WeatherInformationResponse(
      {final List<WeatherContent?>? weather,
      final WindContent? wind,
      final int? dt,
      final String? name,
      final TemperatureContent? main,
      final List<HourWeatherContent?>? list}) = _$_WeatherInformationResponse;

  factory _WeatherInformationResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherInformationResponse.fromJson;

  @override
  List<WeatherContent?>? get weather;
  @override
  WindContent? get wind;
  @override
  int? get dt;
  @override
  String? get name;
  @override
  TemperatureContent? get main;
  @override
  List<HourWeatherContent?>? get list;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherInformationResponseCopyWith<_$_WeatherInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
