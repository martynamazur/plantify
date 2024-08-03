// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantType _$PlantTypeFromJson(Map<String, dynamic> json) {
  return _PlantType.fromJson(json);
}

/// @nodoc
mixin _$PlantType {
  int get id => throw _privateConstructorUsedError;
  String get commonName => throw _privateConstructorUsedError;
  List<String> get scientificName => throw _privateConstructorUsedError;
  String get cycle => throw _privateConstructorUsedError;
  String get watering => throw _privateConstructorUsedError;
  List<String> get sunlight => throw _privateConstructorUsedError;
  String? get otherName => throw _privateConstructorUsedError;
  ImageData get defaultImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlantTypeCopyWith<PlantType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantTypeCopyWith<$Res> {
  factory $PlantTypeCopyWith(PlantType value, $Res Function(PlantType) then) =
      _$PlantTypeCopyWithImpl<$Res, PlantType>;
  @useResult
  $Res call(
      {int id,
      String commonName,
      List<String> scientificName,
      String cycle,
      String watering,
      List<String> sunlight,
      String? otherName,
      ImageData defaultImage});

  $ImageDataCopyWith<$Res> get defaultImage;
}

/// @nodoc
class _$PlantTypeCopyWithImpl<$Res, $Val extends PlantType>
    implements $PlantTypeCopyWith<$Res> {
  _$PlantTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? commonName = null,
    Object? scientificName = null,
    Object? cycle = null,
    Object? watering = null,
    Object? sunlight = null,
    Object? otherName = freezed,
    Object? defaultImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      commonName: null == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      scientificName: null == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cycle: null == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as String,
      watering: null == watering
          ? _value.watering
          : watering // ignore: cast_nullable_to_non_nullable
              as String,
      sunlight: null == sunlight
          ? _value.sunlight
          : sunlight // ignore: cast_nullable_to_non_nullable
              as List<String>,
      otherName: freezed == otherName
          ? _value.otherName
          : otherName // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultImage: null == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as ImageData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDataCopyWith<$Res> get defaultImage {
    return $ImageDataCopyWith<$Res>(_value.defaultImage, (value) {
      return _then(_value.copyWith(defaultImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlantTypeImplCopyWith<$Res>
    implements $PlantTypeCopyWith<$Res> {
  factory _$$PlantTypeImplCopyWith(
          _$PlantTypeImpl value, $Res Function(_$PlantTypeImpl) then) =
      __$$PlantTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String commonName,
      List<String> scientificName,
      String cycle,
      String watering,
      List<String> sunlight,
      String? otherName,
      ImageData defaultImage});

  @override
  $ImageDataCopyWith<$Res> get defaultImage;
}

/// @nodoc
class __$$PlantTypeImplCopyWithImpl<$Res>
    extends _$PlantTypeCopyWithImpl<$Res, _$PlantTypeImpl>
    implements _$$PlantTypeImplCopyWith<$Res> {
  __$$PlantTypeImplCopyWithImpl(
      _$PlantTypeImpl _value, $Res Function(_$PlantTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? commonName = null,
    Object? scientificName = null,
    Object? cycle = null,
    Object? watering = null,
    Object? sunlight = null,
    Object? otherName = freezed,
    Object? defaultImage = null,
  }) {
    return _then(_$PlantTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      commonName: null == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      scientificName: null == scientificName
          ? _value._scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cycle: null == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as String,
      watering: null == watering
          ? _value.watering
          : watering // ignore: cast_nullable_to_non_nullable
              as String,
      sunlight: null == sunlight
          ? _value._sunlight
          : sunlight // ignore: cast_nullable_to_non_nullable
              as List<String>,
      otherName: freezed == otherName
          ? _value.otherName
          : otherName // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultImage: null == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as ImageData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantTypeImpl implements _PlantType {
  const _$PlantTypeImpl(
      {required this.id,
      required this.commonName,
      required final List<String> scientificName,
      required this.cycle,
      required this.watering,
      required final List<String> sunlight,
      this.otherName,
      required this.defaultImage})
      : _scientificName = scientificName,
        _sunlight = sunlight;

  factory _$PlantTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String commonName;
  final List<String> _scientificName;
  @override
  List<String> get scientificName {
    if (_scientificName is EqualUnmodifiableListView) return _scientificName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scientificName);
  }

  @override
  final String cycle;
  @override
  final String watering;
  final List<String> _sunlight;
  @override
  List<String> get sunlight {
    if (_sunlight is EqualUnmodifiableListView) return _sunlight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunlight);
  }

  @override
  final String? otherName;
  @override
  final ImageData defaultImage;

  @override
  String toString() {
    return 'PlantType(id: $id, commonName: $commonName, scientificName: $scientificName, cycle: $cycle, watering: $watering, sunlight: $sunlight, otherName: $otherName, defaultImage: $defaultImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            const DeepCollectionEquality()
                .equals(other._scientificName, _scientificName) &&
            (identical(other.cycle, cycle) || other.cycle == cycle) &&
            (identical(other.watering, watering) ||
                other.watering == watering) &&
            const DeepCollectionEquality().equals(other._sunlight, _sunlight) &&
            (identical(other.otherName, otherName) ||
                other.otherName == otherName) &&
            (identical(other.defaultImage, defaultImage) ||
                other.defaultImage == defaultImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      commonName,
      const DeepCollectionEquality().hash(_scientificName),
      cycle,
      watering,
      const DeepCollectionEquality().hash(_sunlight),
      otherName,
      defaultImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantTypeImplCopyWith<_$PlantTypeImpl> get copyWith =>
      __$$PlantTypeImplCopyWithImpl<_$PlantTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantTypeImplToJson(
      this,
    );
  }
}

abstract class _PlantType implements PlantType {
  const factory _PlantType(
      {required final int id,
      required final String commonName,
      required final List<String> scientificName,
      required final String cycle,
      required final String watering,
      required final List<String> sunlight,
      final String? otherName,
      required final ImageData defaultImage}) = _$PlantTypeImpl;

  factory _PlantType.fromJson(Map<String, dynamic> json) =
      _$PlantTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get commonName;
  @override
  List<String> get scientificName;
  @override
  String get cycle;
  @override
  String get watering;
  @override
  List<String> get sunlight;
  @override
  String? get otherName;
  @override
  ImageData get defaultImage;
  @override
  @JsonKey(ignore: true)
  _$$PlantTypeImplCopyWith<_$PlantTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageData _$ImageDataFromJson(Map<String, dynamic> json) {
  return _ImageData.fromJson(json);
}

/// @nodoc
mixin _$ImageData {
  int get imageId => throw _privateConstructorUsedError;
  int get license => throw _privateConstructorUsedError;
  String get licenseName => throw _privateConstructorUsedError;
  String get licenseUrl => throw _privateConstructorUsedError;
  String get originalUrl => throw _privateConstructorUsedError;
  String get regularUrl => throw _privateConstructorUsedError;
  String get mediumUrl => throw _privateConstructorUsedError;
  String get smallUrl => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataCopyWith<ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataCopyWith<$Res> {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) then) =
      _$ImageDataCopyWithImpl<$Res, ImageData>;
  @useResult
  $Res call(
      {int imageId,
      int license,
      String licenseName,
      String licenseUrl,
      String originalUrl,
      String regularUrl,
      String mediumUrl,
      String smallUrl,
      String thumbnail});
}

/// @nodoc
class _$ImageDataCopyWithImpl<$Res, $Val extends ImageData>
    implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? license = null,
    Object? licenseName = null,
    Object? licenseUrl = null,
    Object? originalUrl = null,
    Object? regularUrl = null,
    Object? mediumUrl = null,
    Object? smallUrl = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as int,
      licenseName: null == licenseName
          ? _value.licenseName
          : licenseName // ignore: cast_nullable_to_non_nullable
              as String,
      licenseUrl: null == licenseUrl
          ? _value.licenseUrl
          : licenseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      originalUrl: null == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      regularUrl: null == regularUrl
          ? _value.regularUrl
          : regularUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediumUrl: null == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String,
      smallUrl: null == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDataImplCopyWith<$Res>
    implements $ImageDataCopyWith<$Res> {
  factory _$$ImageDataImplCopyWith(
          _$ImageDataImpl value, $Res Function(_$ImageDataImpl) then) =
      __$$ImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int imageId,
      int license,
      String licenseName,
      String licenseUrl,
      String originalUrl,
      String regularUrl,
      String mediumUrl,
      String smallUrl,
      String thumbnail});
}

/// @nodoc
class __$$ImageDataImplCopyWithImpl<$Res>
    extends _$ImageDataCopyWithImpl<$Res, _$ImageDataImpl>
    implements _$$ImageDataImplCopyWith<$Res> {
  __$$ImageDataImplCopyWithImpl(
      _$ImageDataImpl _value, $Res Function(_$ImageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? license = null,
    Object? licenseName = null,
    Object? licenseUrl = null,
    Object? originalUrl = null,
    Object? regularUrl = null,
    Object? mediumUrl = null,
    Object? smallUrl = null,
    Object? thumbnail = null,
  }) {
    return _then(_$ImageDataImpl(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as int,
      licenseName: null == licenseName
          ? _value.licenseName
          : licenseName // ignore: cast_nullable_to_non_nullable
              as String,
      licenseUrl: null == licenseUrl
          ? _value.licenseUrl
          : licenseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      originalUrl: null == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      regularUrl: null == regularUrl
          ? _value.regularUrl
          : regularUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediumUrl: null == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String,
      smallUrl: null == smallUrl
          ? _value.smallUrl
          : smallUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDataImpl implements _ImageData {
  const _$ImageDataImpl(
      {required this.imageId,
      required this.license,
      required this.licenseName,
      required this.licenseUrl,
      required this.originalUrl,
      required this.regularUrl,
      required this.mediumUrl,
      required this.smallUrl,
      required this.thumbnail});

  factory _$ImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDataImplFromJson(json);

  @override
  final int imageId;
  @override
  final int license;
  @override
  final String licenseName;
  @override
  final String licenseUrl;
  @override
  final String originalUrl;
  @override
  final String regularUrl;
  @override
  final String mediumUrl;
  @override
  final String smallUrl;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'ImageData(imageId: $imageId, license: $license, licenseName: $licenseName, licenseUrl: $licenseUrl, originalUrl: $originalUrl, regularUrl: $regularUrl, mediumUrl: $mediumUrl, smallUrl: $smallUrl, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataImpl &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.licenseName, licenseName) ||
                other.licenseName == licenseName) &&
            (identical(other.licenseUrl, licenseUrl) ||
                other.licenseUrl == licenseUrl) &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.regularUrl, regularUrl) ||
                other.regularUrl == regularUrl) &&
            (identical(other.mediumUrl, mediumUrl) ||
                other.mediumUrl == mediumUrl) &&
            (identical(other.smallUrl, smallUrl) ||
                other.smallUrl == smallUrl) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageId, license, licenseName,
      licenseUrl, originalUrl, regularUrl, mediumUrl, smallUrl, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataImplCopyWith<_$ImageDataImpl> get copyWith =>
      __$$ImageDataImplCopyWithImpl<_$ImageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDataImplToJson(
      this,
    );
  }
}

abstract class _ImageData implements ImageData {
  const factory _ImageData(
      {required final int imageId,
      required final int license,
      required final String licenseName,
      required final String licenseUrl,
      required final String originalUrl,
      required final String regularUrl,
      required final String mediumUrl,
      required final String smallUrl,
      required final String thumbnail}) = _$ImageDataImpl;

  factory _ImageData.fromJson(Map<String, dynamic> json) =
      _$ImageDataImpl.fromJson;

  @override
  int get imageId;
  @override
  int get license;
  @override
  String get licenseName;
  @override
  String get licenseUrl;
  @override
  String get originalUrl;
  @override
  String get regularUrl;
  @override
  String get mediumUrl;
  @override
  String get smallUrl;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$ImageDataImplCopyWith<_$ImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
