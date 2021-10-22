import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magx_client/src/converters/pid_type_converter.dart';

part 'room_description.freezed.dart';
part 'room_description.g.dart';

@freezed
class RoomDescription with _$RoomDescription {
  const factory RoomDescription({
    required String id,
    @PidTypeConverter() required String pid,
    int? port,
    required String hostId,
    required String name,
    required bool locked,
    @Default([]) List<String> clients,
    required Data data,
  }) = _RoomDescription;

  factory RoomDescription.fromJson(Map<String, dynamic> json) => _$RoomDescriptionFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
