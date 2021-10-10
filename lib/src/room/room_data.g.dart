// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomData _$$_RoomDataFromJson(Map<String, dynamic> json) => _$_RoomData(
      id: json['id'] as String,
      name: json['name'] as String,
      port: json['port'] as int?,
      options: json['options'] as Map<String, dynamic>? ?? {},
    );

Map<String, dynamic> _$$_RoomDataToJson(_$_RoomData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'port': instance.port,
      'options': instance.options,
    };
