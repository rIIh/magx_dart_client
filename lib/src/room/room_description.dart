import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_description.freezed.dart';
part 'room_description.g.dart';

@freezed
class RoomDescription with _$RoomDescription {
  const factory RoomDescription({
    required String id,
    @_PidConverter() required String pid,
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

class _PidConverter implements JsonConverter<String, dynamic> {
  const _PidConverter();

  @override
  String fromJson(json) {
    if (json is int) {
      return json.toString();
    } else if (json is String) {
      return json;
    }
    return json.toString();
  }

  @override
  String toJson(String object) => object;
}
