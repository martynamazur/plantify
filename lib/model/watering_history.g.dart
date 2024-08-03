// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watering_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WateringHistoryImpl _$$WateringHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$WateringHistoryImpl(
      id: (json['id'] as num).toInt(),
      plantUserId: (json['plantUserId'] as num).toInt(),
      wateringDate: DateTime.parse(json['wateringDate'] as String),
    );

Map<String, dynamic> _$$WateringHistoryImplToJson(
        _$WateringHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plantUserId': instance.plantUserId,
      'wateringDate': instance.wateringDate.toIso8601String(),
    };
