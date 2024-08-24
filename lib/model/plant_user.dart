import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_user.freezed.dart';
part 'plant_user.g.dart';

@freezed
class PlantUser with _$PlantUser {
  const factory PlantUser({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'plant_type_id') required int plantTypeId,
    @JsonKey(name: 'nickname') required String nickname,
    @JsonKey(name: 'localization') required String localization,
    @JsonKey(name: 'last_day_watering') required DateTime lastDayWatering,
    @JsonKey(name: 'next_day_watering') required DateTime nextDayWatering,


  }) = _PlantUser;


  factory PlantUser.fromJson(Map<String, dynamic> json) =>
      _$PlantUserFromJson(json);
}