import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_description.freezed.dart';
part 'room_description.g.dart';

@freezed
abstract class RoomDescription with _$RoomDescription {
  const factory RoomDescription({
    String id,
    int pid,
    String hostId,
    String name,
    bool locked,
    List<String> clients,
    Data data,
  }) = _RoomDescription;

  factory RoomDescription.fromJson(Map<String, dynamic> json) => _$RoomDescriptionFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
