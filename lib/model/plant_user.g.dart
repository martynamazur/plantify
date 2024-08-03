// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantUserImpl _$$PlantUserImplFromJson(Map<String, dynamic> json) =>
    _$PlantUserImpl(
      id: (json['id'] as num).toInt(),
      userId: json['user_id'] as String,
      plantTypeId: (json['plant_type_id'] as num).toInt(),
      nickname: json['nickname'] as String,
      localization: json['localization'] as String,
      lastDayWatering: DateTime.parse(json['last_day_watering'] as String),
      nextDayWatering: DateTime.parse(json['next_day_watering'] as String),
    );

Map<String, dynamic> _$$PlantUserImplToJson(_$PlantUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'plant_type_id': instance.plantTypeId,
      'nickname': instance.nickname,
      'localization': instance.localization,
      'last_day_watering': instance.lastDayWatering.toIso8601String(),
      'next_day_watering': instance.nextDayWatering.toIso8601String(),
    };
