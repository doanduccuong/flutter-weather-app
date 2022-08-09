// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wind_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WindContent _$WindContentFromJson(Map<String, dynamic> json) {
  return _WindContent.fromJson(json);
}

/// @nodoc
mixin _$WindContent {
  double? get speed => throw _privateConstructorUsedError;
  num? get deg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindContentCopyWith<WindContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindContentCopyWith<$Res> {
  factory $WindContentCopyWith(
          WindContent value, $Res Function(WindContent) then) =
      _$WindContentCopyWithImpl<$Res>;
  $Res call({double? speed, num? deg});
}

/// @nodoc
class _$WindContentCopyWithImpl<$Res> implements $WindContentCopyWith<$Res> {
  _$WindContentCopyWithImpl(this._value, this._then);

  final WindContent _value;
  // ignore: unused_field
  final $Res Function(WindContent) _then;

  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
  }) {
    return _then(_value.copyWith(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: deg == freezed
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$$_WindContentCopyWith<$Res>
    implements $WindContentCopyWith<$Res> {
  factory _$$_WindContentCopyWith(
          _$_WindContent value, $Res Function(_$_WindContent) then) =
      __$$_WindContentCopyWithImpl<$Res>;
  @override
  $Res call({double? speed, num? deg});
}

/// @nodoc
class __$$_WindContentCopyWithImpl<$Res> extends _$WindContentCopyWithImpl<$Res>
    implements _$$_WindContentCopyWith<$Res> {
  __$$_WindContentCopyWithImpl(
      _$_WindContent _value, $Res Function(_$_WindContent) _then)
      : super(_value, (v) => _then(v as _$_WindContent));

  @override
  _$_WindContent get _value => super._value as _$_WindContent;

  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
  }) {
    return _then(_$_WindContent(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: deg == freezed
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WindContent implements _WindContent {
  const _$_WindContent({this.speed, this.deg});

  factory _$_WindContent.fromJson(Map<String, dynamic> json) =>
      _$$_WindContentFromJson(json);

  @override
  final double? speed;
  @override
  final num? deg;

  @override
  String toString() {
    return 'WindContent(speed: $speed, deg: $deg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WindContent &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality().equals(other.deg, deg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(deg));

  @JsonKey(ignore: true)
  @override
  _$$_WindContentCopyWith<_$_WindContent> get copyWith =>
      __$$_WindContentCopyWithImpl<_$_WindContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WindContentToJson(
      this,
    );
  }
}

abstract class _WindContent implements WindContent {
  const factory _WindContent({final double? speed, final num? deg}) =
      _$_WindContent;

  factory _WindContent.fromJson(Map<String, dynamic> json) =
      _$_WindContent.fromJson;

  @override
  double? get speed;
  @override
  num? get deg;
  @override
  @JsonKey(ignore: true)
  _$$_WindContentCopyWith<_$_WindContent> get copyWith =>
      throw _privateConstructorUsedError;
}
