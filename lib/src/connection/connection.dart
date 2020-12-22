import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiver/collection.dart';

import '../common/describe_enum.dart';
import '../common/disposable.dart';

part 'connection.freezed.dart';
part 'connection.g.dart';

abstract class Connection implements Disposable {
  Stream<Message> get stream;

  void send(Message message);
}

enum MessageEvent {
  error,
  connected,
  reconnected,
  joined,
  message,
  request,
  response,
  snapshot,
  patch,
  schema,
  encodedSnapshot,
  encodedPatch,
  closed,
}

MessageEvent getEnumValue(String name) => MessageEvent.values.firstWhere(
      (element) => describeEnum(element) == name,
    );

final eventCodeMap = HashBiMap()
  ..addAll({
    MessageEvent.error: 0,
    MessageEvent.connected: 1,
    MessageEvent.reconnected: 2,
    MessageEvent.joined: 3,
    MessageEvent.message: 4,
    MessageEvent.request: 5,
    MessageEvent.response: 6,
    MessageEvent.snapshot: 11,
    MessageEvent.patch: 12,
    MessageEvent.schema: 20,
    MessageEvent.encodedSnapshot: -11,
    MessageEvent.encodedPatch: -12,
  });

String decode(Object event) => describeEnum(eventCodeMap.inverse[event is int ? event : int.parse(event.toString())]);

int encode(Object event) => eventCodeMap[event is MessageEvent ? event : getEnumValue(event.toString())];

@freezed
abstract class Message with _$Message {
  const factory Message._({
    MessageEvent event,
    @Default([]) List<dynamic> data,
  }) = _Message;

  factory Message.error(Object error) => Message._(event: MessageEvent.error, data: [error]);

  factory Message.connected() => Message._(event: MessageEvent.connected);

  factory Message.reconnected() => Message._(event: MessageEvent.reconnected);

  factory Message.joined() => Message._(event: MessageEvent.joined);

  factory Message.message(List<dynamic> data) => Message._(event: MessageEvent.message, data: data);

  factory Message.request() => Message._(event: MessageEvent.request);

  factory Message.response() => Message._(event: MessageEvent.response);

  factory Message.snapshot() => Message._(event: MessageEvent.snapshot);

  factory Message.patch() => Message._(event: MessageEvent.patch);

  factory Message.schema() => Message._(event: MessageEvent.schema);

  factory Message.encodedSnapshot() => Message._(event: MessageEvent.encodedSnapshot);

  factory Message.encodedPatch() => Message._(event: MessageEvent.encodedPatch);

  factory Message.closed(int code, String reason) => Message._(event: MessageEvent.closed, data: [code, reason]);

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json..update('event', decode));
}
