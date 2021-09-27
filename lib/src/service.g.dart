// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRoomPayload _$CreateRoomPayloadFromJson(Map<String, dynamic> json) {
  return CreateRoomPayload(
    json['name'] as String,
    json['options'],
  );
}

Map<String, dynamic> _$CreateRoomPayloadToJson(CreateRoomPayload instance) => <String, dynamic>{
      'name': instance.name,
      'options': instance.options,
    };
