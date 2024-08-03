
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watering_history.freezed.dart';
part 'watering_history.g.dart';

@freezed
class WateringHistory with _$WateringHistory {
  const factory WateringHistory({
    required int id,
    required int plantUserId,
    required DateTime wateringDate
    ,
  }) = _WateringHistory;



  factory WateringHistory.fromJson(Map<String, dynamic> json) =>
      _$WateringHistoryFromJson(json);
}