// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomDescription _$_$_RoomDescriptionFromJson(Map<String, dynamic> json) {
  return _$_RoomDescription(
    id: json['id'] as String,
    pid: json['pid'] as int,
    hostId: json['hostId'] as String,
    name: json['name'] as String,
    locked: json['locked'] as bool,
    clients: (json['clients'] as List)?.map((e) => e as String)?.toList(),
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_RoomDescriptionToJson(_$_RoomDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pid': instance.pid,
      'hostId': instance.hostId,
      'name': instance.name,
      'locked': instance.locked,
      'clients': instance.clients,
      'data': instance.data?.toJson(),
    };

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data();
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{};
