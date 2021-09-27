// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$_$_MessageFromJson(Map<String, dynamic> json) {
  return _$_Message(
    event: _$enumDecodeNullable(_$MessageEventEnumMap, json['event']),
    data: json['data'] as List ?? [],
  );
}

Map<String, dynamic> _$_$_MessageToJson(_$_Message instance) => <String, dynamic>{
      'event': _$MessageEventEnumMap[instance.event],
      'data': instance.data,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries.singleWhere((e) => e.value == source, orElse: () => null)?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
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
