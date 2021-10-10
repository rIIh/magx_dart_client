// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      event: _$enumDecode(_$MessageEventEnumMap, json['event']),
      data: json['data'] as List<dynamic>? ?? [],
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) => <String, dynamic>{
      'event': _$MessageEventEnumMap[instance.event],
      'data': instance.data,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$MessageEventEnumMap = {
  MessageEvent.error: 'error',
  MessageEvent.connected: 'connected',
  MessageEvent.reconnected: 'reconnected',
  MessageEvent.joined: 'joined',
  MessageEvent.message: 'message',
  MessageEvent.request: 'request',
  MessageEvent.response: 'response',
  MessageEvent.snapshot: 'snapshot',
  MessageEvent.patch: 'patch',
  MessageEvent.schema: 'schema',
  MessageEvent.encodedSnapshot: 'encodedSnapshot',
  MessageEvent.encodedPatch: 'encodedPatch',
  MessageEvent.closed: 'closed',
};
