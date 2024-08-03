// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlantTypeImpl _$$PlantTypeImplFromJson(Map<String, dynamic> json) =>
    _$PlantTypeImpl(
      id: (json['id'] as num).toInt(),
      commonName: json['commonName'] as String,
      scientificName: (json['scientificName'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      cycle: json['cycle'] as String,
      watering: json['watering'] as String,
      sunlight:
          (json['sunlight'] as List<dynamic>).map((e) => e as String).toList(),
      otherName: json['otherName'] as String?,
      defaultImage:
          ImageData.fromJson(json['defaultImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlantTypeImplToJson(_$PlantTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'commonName': instance.commonName,
      'scientificName': instance.scientificName,
      'cycle': instance.cycle,
      'watering': instance.watering,
      'sunlight': instance.sunlight,
      'otherName': instance.otherName,
      'defaultImage': instance.defaultImage,
    };

_$ImageDataImpl _$$ImageDataImplFromJson(Map<String, dynamic> json) =>
    _$ImageDataImpl(
      imageId: (json['imageId'] as num).toInt(),
      license: (json['license'] as num).toInt(),
      licenseName: json['licenseName'] as String,
      licenseUrl: json['licenseUrl'] as String,
      originalUrl: json['originalUrl'] as String,
      regularUrl: json['regularUrl'] as String,
      mediumUrl: json['mediumUrl'] as String,
      smallUrl: json['smallUrl'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$ImageDataImplToJson(_$ImageDataImpl instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'license': instance.license,
      'licenseName': instance.licenseName,
      'licenseUrl': instance.licenseUrl,
      'originalUrl': instance.originalUrl,
      'regularUrl': instance.regularUrl,
      'mediumUrl': instance.mediumUrl,
      'smallUrl': instance.smallUrl,
      'thumbnail': instance.thumbnail,
    };
