import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_data.freezed.dart';
part 'room_data.g.dart';

@freezed
abstract class RoomData with _$RoomData {
  const factory RoomData({
    required String id,
    required String name,
    int? port,
    @Default({}) Map<String, dynamic> options,
  }) = _RoomData;

  factory RoomData.fromJson(Map<String, dynamic> json) => _$RoomDataFromJson(json);
}
