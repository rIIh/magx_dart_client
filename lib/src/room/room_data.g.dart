// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomData _$_$_RoomDataFromJson(Map<String, dynamic> json) {
  return _$_RoomData(
    id: json['id'] as String,
    port: json['port'] as num,
    name: json['name'] as String,
    options: json['options'] as Map<String, dynamic> ?? {},
  );
}

Map<String, dynamic> _$_$_RoomDataToJson(_$_RoomData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'port': instance.port,
      'name': instance.name,
      'options': instance.options,
    };
