// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherContent _$WeatherContentFromJson(Map<String, dynamic> json) {
  return _WeatherContent.fromJson(json);
}

/// @nodoc
mixin _$WeatherContent {
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherContentCopyWith<WeatherContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherContentCopyWith<$Res> {
  factory $WeatherContentCopyWith(
          WeatherContent value, $Res Function(WeatherContent) then) =
      _$WeatherContentCopyWithImpl<$Res>;
  $Res call({String? main, String? description});
}

/// @nodoc
class _$WeatherContentCopyWithImpl<$Res>
    implements $WeatherContentCopyWith<$Res> {
  _$WeatherContentCopyWithImpl(this._value, this._then);

  final WeatherContent _value;
  // ignore: unused_field
  final $Res Function(WeatherContent) _then;

  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherContentCopyWith<$Res>
    implements $WeatherContentCopyWith<$Res> {
  factory _$$_WeatherContentCopyWith(
          _$_WeatherContent value, $Res Function(_$_WeatherContent) then) =
      __$$_WeatherContentCopyWithImpl<$Res>;
  @override
  $Res call({String? main, String? description});
}

/// @nodoc
class __$$_WeatherContentCopyWithImpl<$Res>
    extends _$WeatherContentCopyWithImpl<$Res>
    implements _$$_WeatherContentCopyWith<$Res> {
  __$$_WeatherContentCopyWithImpl(
      _$_WeatherContent _value, $Res Function(_$_WeatherContent) _then)
      : super(_value, (v) => _then(v as _$_WeatherContent));

  @override
  _$_WeatherContent get _value => super._value as _$_WeatherContent;

  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_WeatherContent(
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherContent implements _WeatherContent {
  const _$_WeatherContent({this.main, this.description});

  factory _$_WeatherContent.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherContentFromJson(json);

  @override
  final String? main;
  @override
  final String? description;

  @override
  String toString() {
    return 'WeatherContent(main: $main, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherContent &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherContentCopyWith<_$_WeatherContent> get copyWith =>
      __$$_WeatherContentCopyWithImpl<_$_WeatherContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherContentToJson(
      this,
    );
  }
}

abstract class _WeatherContent implements WeatherContent {
  const factory _WeatherContent(
      {final String? main, final String? description}) = _$_WeatherContent;

  factory _WeatherContent.fromJson(Map<String, dynamic> json) =
      _$_WeatherContent.fromJson;

  @override
  String? get main;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherContentCopyWith<_$_WeatherContent> get copyWith =>
      throw _privateConstructorUsedError;
}
