// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomDescription _$$_RoomDescriptionFromJson(Map<String, dynamic> json) => _$_RoomDescription(
      id: json['id'] as String,
      pid: const _PidConverter().fromJson(json['pid']),
      hostId: json['hostId'] as String,
      name: json['name'] as String,
      locked: json['locked'] as bool,
      clients: (json['clients'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RoomDescriptionToJson(_$_RoomDescription instance) => <String, dynamic>{
      'id': instance.id,
      'pid': const _PidConverter().toJson(instance.pid),
      'hostId': instance.hostId,
      'name': instance.name,
      'locked': instance.locked,
      'clients': instance.clients,
      'data': instance.data.toJson(),
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data();

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{};
