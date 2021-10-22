// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomData _$RoomDataFromJson(Map<String, dynamic> json) {
  return _RoomData.fromJson(json);
}

/// @nodoc
class _$RoomDataTearOff {
  const _$RoomDataTearOff();

  _RoomData call({required String id, required String name, int? port, Map<String, dynamic> options = const {}}) {
    return _RoomData(
      id: id,
      name: name,
      port: port,
      options: options,
    );
  }

  RoomData fromJson(Map<String, Object> json) {
    return RoomData.fromJson(json);
  }
}

/// @nodoc
const $RoomData = _$RoomDataTearOff();

/// @nodoc
mixin _$RoomData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get port => throw _privateConstructorUsedError;
  Map<String, dynamic> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomDataCopyWith<RoomData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDataCopyWith<$Res> {
  factory $RoomDataCopyWith(RoomData value, $Res Function(RoomData) then) = _$RoomDataCopyWithImpl<$Res>;
  $Res call({String id, String name, int? port, Map<String, dynamic> options});
}

/// @nodoc
class _$RoomDataCopyWithImpl<$Res> implements $RoomDataCopyWith<$Res> {
  _$RoomDataCopyWithImpl(this._value, this._then);

  final RoomData _value;
  // ignore: unused_field
  final $Res Function(RoomData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? port = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$RoomDataCopyWith<$Res> implements $RoomDataCopyWith<$Res> {
  factory _$RoomDataCopyWith(_RoomData value, $Res Function(_RoomData) then) = __$RoomDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, int? port, Map<String, dynamic> options});
}

/// @nodoc
class __$RoomDataCopyWithImpl<$Res> extends _$RoomDataCopyWithImpl<$Res> implements _$RoomDataCopyWith<$Res> {
  __$RoomDataCopyWithImpl(_RoomData _value, $Res Function(_RoomData) _then)
      : super(_value, (v) => _then(v as _RoomData));

  @override
  _RoomData get _value => super._value as _RoomData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? port = freezed,
    Object? options = freezed,
  }) {
    return _then(_RoomData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomData implements _RoomData {
  const _$_RoomData({required this.id, required this.name, this.port, this.options = const {}});

  factory _$_RoomData.fromJson(Map<String, dynamic> json) => _$$_RoomDataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int? port;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, dynamic> options;

  @override
  String toString() {
    return 'RoomData(id: $id, name: $name, port: $port, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomData &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.port, port) || const DeepCollectionEquality().equals(other.port, port)) &&
            (identical(other.options, options) || const DeepCollectionEquality().equals(other.options, options)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(port) ^
      const DeepCollectionEquality().hash(options);

  @JsonKey(ignore: true)
  @override
  _$RoomDataCopyWith<_RoomData> get copyWith => __$RoomDataCopyWithImpl<_RoomData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomDataToJson(this);
  }
}

abstract class _RoomData implements RoomData {
  const factory _RoomData({required String id, required String name, int? port, Map<String, dynamic> options}) =
      _$_RoomData;

  factory _RoomData.fromJson(Map<String, dynamic> json) = _$_RoomData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int? get port => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get options => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RoomDataCopyWith<_RoomData> get copyWith => throw _privateConstructorUsedError;
}
