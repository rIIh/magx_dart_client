import 'package:freezed_annotation/freezed_annotation.dart';

/// {@template magx.pid_converter}
/// `pid` field in `RoomDescription` json dictionary can be any type.
/// But we expect `pid` is exactly is `String`.
///
/// Use [PidTypeConverter] to convert any typed `pid` to String type.
/// {@endtemplate}
class PidTypeConverter implements JsonConverter<String, dynamic> {
  /// {@macro magx.pid_converter}
  const PidTypeConverter();

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
