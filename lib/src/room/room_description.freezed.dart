// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomDescription _$RoomDescriptionFromJson(Map<String, dynamic> json) {
  return _RoomDescription.fromJson(json);
}

/// @nodoc
class _$RoomDescriptionTearOff {
  const _$RoomDescriptionTearOff();

  _RoomDescription call(
      {required String id,
      @PidTypeConverter() required String pid,
      int? port,
      required String hostId,
      required String name,
      required bool locked,
      List<String> clients = const [],
      required Data data}) {
    return _RoomDescription(
      id: id,
      pid: pid,
      port: port,
      hostId: hostId,
      name: name,
      locked: locked,
      clients: clients,
      data: data,
    );
  }

  RoomDescription fromJson(Map<String, dynamic> json) {
    return RoomDescription.fromJson(json);
  }
}

/// @nodoc
const $RoomDescription = _$RoomDescriptionTearOff();

/// @nodoc
mixin _$RoomDescription {
  String get id => throw _privateConstructorUsedError;
  @PidTypeConverter()
  String get pid => throw _privateConstructorUsedError;
  int? get port => throw _privateConstructorUsedError;
  String get hostId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;
  List<String> get clients => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomDescriptionCopyWith<RoomDescription> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDescriptionCopyWith<$Res> {
  factory $RoomDescriptionCopyWith(RoomDescription value, $Res Function(RoomDescription) then) =
      _$RoomDescriptionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @PidTypeConverter() String pid,
      int? port,
      String hostId,
      String name,
      bool locked,
      List<String> clients,
      Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$RoomDescriptionCopyWithImpl<$Res> implements $RoomDescriptionCopyWith<$Res> {
  _$RoomDescriptionCopyWithImpl(this._value, this._then);

  final RoomDescription _value;
  // ignore: unused_field
  final $Res Function(RoomDescription) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pid = freezed,
    Object? port = freezed,
    Object? hostId = freezed,
    Object? name = freezed,
    Object? locked = freezed,
    Object? clients = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      hostId: hostId == freezed
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      clients: clients == freezed
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$RoomDescriptionCopyWith<$Res> implements $RoomDescriptionCopyWith<$Res> {
  factory _$RoomDescriptionCopyWith(_RoomDescription value, $Res Function(_RoomDescription) then) =
      __$RoomDescriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @PidTypeConverter() String pid,
      int? port,
      String hostId,
      String name,
      bool locked,
      List<String> clients,
      Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$RoomDescriptionCopyWithImpl<$Res> extends _$RoomDescriptionCopyWithImpl<$Res>
    implements _$RoomDescriptionCopyWith<$Res> {
  __$RoomDescriptionCopyWithImpl(_RoomDescription _value, $Res Function(_RoomDescription) _then)
      : super(_value, (v) => _then(v as _RoomDescription));

  @override
  _RoomDescription get _value => super._value as _RoomDescription;

  @override
  $Res call({
    Object? id = freezed,
    Object? pid = freezed,
    Object? port = freezed,
    Object? hostId = freezed,
    Object? name = freezed,
    Object? locked = freezed,
    Object? clients = freezed,
    Object? data = freezed,
  }) {
    return _then(_RoomDescription(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      hostId: hostId == freezed
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      clients: clients == freezed
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomDescription implements _RoomDescription {
  const _$_RoomDescription(
      {required this.id,
      @PidTypeConverter() required this.pid,
      this.port,
      required this.hostId,
      required this.name,
      required this.locked,
      this.clients = const [],
      required this.data});

  factory _$_RoomDescription.fromJson(Map<String, dynamic> json) => _$$_RoomDescriptionFromJson(json);

  @override
  final String id;
  @override
  @PidTypeConverter()
  final String pid;
  @override
  final int? port;
  @override
  final String hostId;
  @override
  final String name;
  @override
  final bool locked;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> clients;
  @override
  final Data data;

  @override
  String toString() {
    return 'RoomDescription(id: $id, pid: $pid, port: $port, hostId: $hostId, name: $name, locked: $locked, clients: $clients, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomDescription &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pid, pid) || const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.port, port) || const DeepCollectionEquality().equals(other.port, port)) &&
            (identical(other.hostId, hostId) || const DeepCollectionEquality().equals(other.hostId, hostId)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.locked, locked) || const DeepCollectionEquality().equals(other.locked, locked)) &&
            (identical(other.clients, clients) || const DeepCollectionEquality().equals(other.clients, clients)) &&
            (identical(other.data, data) || const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(port) ^
      const DeepCollectionEquality().hash(hostId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(locked) ^
      const DeepCollectionEquality().hash(clients) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$RoomDescriptionCopyWith<_RoomDescription> get copyWith =>
      __$RoomDescriptionCopyWithImpl<_RoomDescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomDescriptionToJson(this);
  }
}

abstract class _RoomDescription implements RoomDescription {
  const factory _RoomDescription(
      {required String id,
      @PidTypeConverter() required String pid,
      int? port,
      required String hostId,
      required String name,
      required bool locked,
      List<String> clients,
      required Data data}) = _$_RoomDescription;

  factory _RoomDescription.fromJson(Map<String, dynamic> json) = _$_RoomDescription.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @PidTypeConverter()
  String get pid => throw _privateConstructorUsedError;
  @override
  int? get port => throw _privateConstructorUsedError;
  @override
  String get hostId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get locked => throw _privateConstructorUsedError;
  @override
  List<String> get clients => throw _privateConstructorUsedError;
  @override
  Data get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RoomDescriptionCopyWith<_RoomDescription> get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call() {
    return const _Data();
  }

  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) = _$DataCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) = __$DataCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res> implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then) : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data();

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  String toString() {
    return 'Data()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Data);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data() = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;
}
