import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_type.freezed.dart';
part 'plant_type.g.dart';

@freezed
class PlantType with _$PlantType {
  const factory PlantType({
    required int id,
    required String commonName,
    required List<String> scientificName,
    required String cycle,
    required String watering,
    required List<String> sunlight,
    String? otherName,
    required ImageData defaultImage,
  }) = _PlantType;

  factory PlantType.fromJson(Map<String, dynamic> json) => _$PlantTypeFromJson(json);
}
@freezed
class ImageData with _$ImageData {
  const factory ImageData({
    required int imageId,
    required int license,
    required String licenseName,
    required String licenseUrl,
    required String originalUrl,
    required String regularUrl,
    required String mediumUrl,
    required String smallUrl,
    required String thumbnail,
  }) = _ImageData;

  factory ImageData.fromJson(Map<String, dynamic> json) => _$ImageDataFromJson(json);
}