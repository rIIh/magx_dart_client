// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RoomData _$RoomDataFromJson(Map<String, dynamic> json) {
  return _RoomData.fromJson(json);
}

/// @nodoc
class _$RoomDataTearOff {
  const _$RoomDataTearOff();

// ignore: unused_element
  _RoomData call(
      {@required String id,
      num port,
      @required String name,
      Map<String, dynamic> options = const {}}) {
    return _RoomData(
      id: id,
      port: port,
      name: name,
      options: options,
    );
  }

// ignore: unused_element
  RoomData fromJson(Map<String, Object> json) {
    return RoomData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RoomData = _$RoomDataTearOff();

/// @nodoc
mixin _$RoomData {
  String get id;
  num get port;
  String get name;
  Map<String, dynamic> get options;

  Map<String, dynamic> toJson();
  $RoomDataCopyWith<RoomData> get copyWith;
}

/// @nodoc
abstract class $RoomDataCopyWith<$Res> {
  factory $RoomDataCopyWith(RoomData value, $Res Function(RoomData) then) =
      _$RoomDataCopyWithImpl<$Res>;
  $Res call({String id, num port, String name, Map<String, dynamic> options});
}

/// @nodoc
class _$RoomDataCopyWithImpl<$Res> implements $RoomDataCopyWith<$Res> {
  _$RoomDataCopyWithImpl(this._value, this._then);

  final RoomData _value;
  // ignore: unused_field
  final $Res Function(RoomData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object port = freezed,
    Object name = freezed,
    Object options = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      port: port == freezed ? _value.port : port as num,
      name: name == freezed ? _value.name : name as String,
      options:
          options == freezed ? _value.options : options as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$RoomDataCopyWith<$Res> implements $RoomDataCopyWith<$Res> {
  factory _$RoomDataCopyWith(_RoomData value, $Res Function(_RoomData) then) =
      __$RoomDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, num port, String name, Map<String, dynamic> options});
}

/// @nodoc
class __$RoomDataCopyWithImpl<$Res> extends _$RoomDataCopyWithImpl<$Res>
    implements _$RoomDataCopyWith<$Res> {
  __$RoomDataCopyWithImpl(_RoomData _value, $Res Function(_RoomData) _then)
      : super(_value, (v) => _then(v as _RoomData));

  @override
  _RoomData get _value => super._value as _RoomData;

  @override
  $Res call({
    Object id = freezed,
    Object port = freezed,
    Object name = freezed,
    Object options = freezed,
  }) {
    return _then(_RoomData(
      id: id == freezed ? _value.id : id as String,
      port: port == freezed ? _value.port : port as num,
      name: name == freezed ? _value.name : name as String,
      options:
          options == freezed ? _value.options : options as Map<String, dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RoomData implements _RoomData {
  const _$_RoomData(
      {@required this.id,
      this.port,
      @required this.name,
      this.options = const {}})
      : assert(id != null),
        assert(name != null),
        assert(options != null);

  factory _$_RoomData.fromJson(Map<String, dynamic> json) =>
      _$_$_RoomDataFromJson(json);

  @override
  final String id;
  @override
  final num port;
  @override
  final String name;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, dynamic> options;

  @override
  String toString() {
    return 'RoomData(id: $id, port: $port, name: $name, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.port, port) ||
                const DeepCollectionEquality().equals(other.port, port)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(other.options, options)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(port) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(options);

  @override
  _$RoomDataCopyWith<_RoomData> get copyWith =>
      __$RoomDataCopyWithImpl<_RoomData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoomDataToJson(this);
  }
}

abstract class _RoomData implements RoomData {
  const factory _RoomData(
      {@required String id,
      num port,
      @required String name,
      Map<String, dynamic> options}) = _$_RoomData;

  factory _RoomData.fromJson(Map<String, dynamic> json) = _$_RoomData.fromJson;

  @override
  String get id;
  @override
  num get port;
  @override
  String get name;
  @override
  Map<String, dynamic> get options;
  @override
  _$RoomDataCopyWith<_RoomData> get copyWith;
}
