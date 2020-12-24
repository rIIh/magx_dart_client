// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RoomDescription _$RoomDescriptionFromJson(Map<String, dynamic> json) {
  return _RoomDescription.fromJson(json);
}

/// @nodoc
class _$RoomDescriptionTearOff {
  const _$RoomDescriptionTearOff();

// ignore: unused_element
  _RoomDescription call(
      {String id,
      int pid,
      String hostId,
      String name,
      bool locked,
      List<String> clients,
      Data data}) {
    return _RoomDescription(
      id: id,
      pid: pid,
      hostId: hostId,
      name: name,
      locked: locked,
      clients: clients,
      data: data,
    );
  }

// ignore: unused_element
  RoomDescription fromJson(Map<String, Object> json) {
    return RoomDescription.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RoomDescription = _$RoomDescriptionTearOff();

/// @nodoc
mixin _$RoomDescription {
  String get id;
  int get pid;
  String get hostId;
  String get name;
  bool get locked;
  List<String> get clients;
  Data get data;

  Map<String, dynamic> toJson();
  $RoomDescriptionCopyWith<RoomDescription> get copyWith;
}

/// @nodoc
abstract class $RoomDescriptionCopyWith<$Res> {
  factory $RoomDescriptionCopyWith(
          RoomDescription value, $Res Function(RoomDescription) then) =
      _$RoomDescriptionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int pid,
      String hostId,
      String name,
      bool locked,
      List<String> clients,
      Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$RoomDescriptionCopyWithImpl<$Res>
    implements $RoomDescriptionCopyWith<$Res> {
  _$RoomDescriptionCopyWithImpl(this._value, this._then);

  final RoomDescription _value;
  // ignore: unused_field
  final $Res Function(RoomDescription) _then;

  @override
  $Res call({
    Object id = freezed,
    Object pid = freezed,
    Object hostId = freezed,
    Object name = freezed,
    Object locked = freezed,
    Object clients = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      pid: pid == freezed ? _value.pid : pid as int,
      hostId: hostId == freezed ? _value.hostId : hostId as String,
      name: name == freezed ? _value.name : name as String,
      locked: locked == freezed ? _value.locked : locked as bool,
      clients: clients == freezed ? _value.clients : clients as List<String>,
      data: data == freezed ? _value.data : data as Data,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$RoomDescriptionCopyWith<$Res>
    implements $RoomDescriptionCopyWith<$Res> {
  factory _$RoomDescriptionCopyWith(
          _RoomDescription value, $Res Function(_RoomDescription) then) =
      __$RoomDescriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int pid,
      String hostId,
      String name,
      bool locked,
      List<String> clients,
      Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$RoomDescriptionCopyWithImpl<$Res>
    extends _$RoomDescriptionCopyWithImpl<$Res>
    implements _$RoomDescriptionCopyWith<$Res> {
  __$RoomDescriptionCopyWithImpl(
      _RoomDescription _value, $Res Function(_RoomDescription) _then)
      : super(_value, (v) => _then(v as _RoomDescription));

  @override
  _RoomDescription get _value => super._value as _RoomDescription;

  @override
  $Res call({
    Object id = freezed,
    Object pid = freezed,
    Object hostId = freezed,
    Object name = freezed,
    Object locked = freezed,
    Object clients = freezed,
    Object data = freezed,
  }) {
    return _then(_RoomDescription(
      id: id == freezed ? _value.id : id as String,
      pid: pid == freezed ? _value.pid : pid as int,
      hostId: hostId == freezed ? _value.hostId : hostId as String,
      name: name == freezed ? _value.name : name as String,
      locked: locked == freezed ? _value.locked : locked as bool,
      clients: clients == freezed ? _value.clients : clients as List<String>,
      data: data == freezed ? _value.data : data as Data,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RoomDescription implements _RoomDescription {
  const _$_RoomDescription(
      {this.id,
      this.pid,
      this.hostId,
      this.name,
      this.locked,
      this.clients,
      this.data});

  factory _$_RoomDescription.fromJson(Map<String, dynamic> json) =>
      _$_$_RoomDescriptionFromJson(json);

  @override
  final String id;
  @override
  final int pid;
  @override
  final String hostId;
  @override
  final String name;
  @override
  final bool locked;
  @override
  final List<String> clients;
  @override
  final Data data;

  @override
  String toString() {
    return 'RoomDescription(id: $id, pid: $pid, hostId: $hostId, name: $name, locked: $locked, clients: $clients, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomDescription &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pid, pid) ||
                const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.hostId, hostId) ||
                const DeepCollectionEquality().equals(other.hostId, hostId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.locked, locked) ||
                const DeepCollectionEquality().equals(other.locked, locked)) &&
            (identical(other.clients, clients) ||
                const DeepCollectionEquality()
                    .equals(other.clients, clients)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(hostId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(locked) ^
      const DeepCollectionEquality().hash(clients) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$RoomDescriptionCopyWith<_RoomDescription> get copyWith =>
      __$RoomDescriptionCopyWithImpl<_RoomDescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoomDescriptionToJson(this);
  }
}

abstract class _RoomDescription implements RoomDescription {
  const factory _RoomDescription(
      {String id,
      int pid,
      String hostId,
      String name,
      bool locked,
      List<String> clients,
      Data data}) = _$_RoomDescription;

  factory _RoomDescription.fromJson(Map<String, dynamic> json) =
      _$_RoomDescription.fromJson;

  @override
  String get id;
  @override
  int get pid;
  @override
  String get hostId;
  @override
  String get name;
  @override
  bool get locked;
  @override
  List<String> get clients;
  @override
  Data get data;
  @override
  _$RoomDescriptionCopyWith<_RoomDescription> get copyWith;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

// ignore: unused_element
  _Data call() {
    return const _Data();
  }

// ignore: unused_element
  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
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
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;
}

@JsonSerializable()

/// @nodoc
class _$_Data implements _Data {
  const _$_Data();

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

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
    return _$_$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data() = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;
}
