// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlantUser _$PlantUserFromJson(Map<String, dynamic> json) {
  return _PlantUser.fromJson(json);
}

/// @nodoc
mixin _$PlantUser {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'plant_type_id')
  int get plantTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'localization')
  String get localization => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_day_watering')
  DateTime get lastDayWatering => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_day_watering')
  DateTime get nextDayWatering => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlantUserCopyWith<PlantUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantUserCopyWith<$Res> {
  factory $PlantUserCopyWith(PlantUser value, $Res Function(PlantUser) then) =
      _$PlantUserCopyWithImpl<$Res, PlantUser>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'plant_type_id') int plantTypeId,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'localization') String localization,
      @JsonKey(name: 'last_day_watering') DateTime lastDayWatering,
      @JsonKey(name: 'next_day_watering') DateTime nextDayWatering});
}

/// @nodoc
class _$PlantUserCopyWithImpl<$Res, $Val extends PlantUser>
    implements $PlantUserCopyWith<$Res> {
  _$PlantUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? plantTypeId = null,
    Object? nickname = null,
    Object? localization = null,
    Object? lastDayWatering = null,
    Object? nextDayWatering = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      plantTypeId: null == plantTypeId
          ? _value.plantTypeId
          : plantTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      localization: null == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String,
      lastDayWatering: null == lastDayWatering
          ? _value.lastDayWatering
          : lastDayWatering // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nextDayWatering: null == nextDayWatering
          ? _value.nextDayWatering
          : nextDayWatering // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantUserImplCopyWith<$Res>
    implements $PlantUserCopyWith<$Res> {
  factory _$$PlantUserImplCopyWith(
          _$PlantUserImpl value, $Res Function(_$PlantUserImpl) then) =
      __$$PlantUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'plant_type_id') int plantTypeId,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'localization') String localization,
      @JsonKey(name: 'last_day_watering') DateTime lastDayWatering,
      @JsonKey(name: 'next_day_watering') DateTime nextDayWatering});
}

/// @nodoc
class __$$PlantUserImplCopyWithImpl<$Res>
    extends _$PlantUserCopyWithImpl<$Res, _$PlantUserImpl>
    implements _$$PlantUserImplCopyWith<$Res> {
  __$$PlantUserImplCopyWithImpl(
      _$PlantUserImpl _value, $Res Function(_$PlantUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? plantTypeId = null,
    Object? nickname = null,
    Object? localization = null,
    Object? lastDayWatering = null,
    Object? nextDayWatering = null,
  }) {
    return _then(_$PlantUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      plantTypeId: null == plantTypeId
          ? _value.plantTypeId
          : plantTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      localization: null == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String,
      lastDayWatering: null == lastDayWatering
          ? _value.lastDayWatering
          : lastDayWatering // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nextDayWatering: null == nextDayWatering
          ? _value.nextDayWatering
          : nextDayWatering // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantUserImpl with DiagnosticableTreeMixin implements _PlantUser {
  const _$PlantUserImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'plant_type_id') required this.plantTypeId,
      @JsonKey(name: 'nickname') required this.nickname,
      @JsonKey(name: 'localization') required this.localization,
      @JsonKey(name: 'last_day_watering') required this.lastDayWatering,
      @JsonKey(name: 'next_day_watering') required this.nextDayWatering});

  factory _$PlantUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantUserImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'plant_type_id')
  final int plantTypeId;
  @override
  @JsonKey(name: 'nickname')
  final String nickname;
  @override
  @JsonKey(name: 'localization')
  final String localization;
  @override
  @JsonKey(name: 'last_day_watering')
  final DateTime lastDayWatering;
  @override
  @JsonKey(name: 'next_day_watering')
  final DateTime nextDayWatering;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlantUser(id: $id, userId: $userId, plantTypeId: $plantTypeId, nickname: $nickname, localization: $localization, lastDayWatering: $lastDayWatering, nextDayWatering: $nextDayWatering)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlantUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('plantTypeId', plantTypeId))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('localization', localization))
      ..add(DiagnosticsProperty('lastDayWatering', lastDayWatering))
      ..add(DiagnosticsProperty('nextDayWatering', nextDayWatering));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.plantTypeId, plantTypeId) ||
                other.plantTypeId == plantTypeId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.localization, localization) ||
                other.localization == localization) &&
            (identical(other.lastDayWatering, lastDayWatering) ||
                other.lastDayWatering == lastDayWatering) &&
            (identical(other.nextDayWatering, nextDayWatering) ||
                other.nextDayWatering == nextDayWatering));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, plantTypeId,
      nickname, localization, lastDayWatering, nextDayWatering);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantUserImplCopyWith<_$PlantUserImpl> get copyWith =>
      __$$PlantUserImplCopyWithImpl<_$PlantUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantUserImplToJson(
      this,
    );
  }
}

abstract class _PlantUser implements PlantUser {
  const factory _PlantUser(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'plant_type_id') required final int plantTypeId,
      @JsonKey(name: 'nickname') required final String nickname,
      @JsonKey(name: 'localization') required final String localization,
      @JsonKey(name: 'last_day_watering')
      required final DateTime lastDayWatering,
      @JsonKey(name: 'next_day_watering')
      required final DateTime nextDayWatering}) = _$PlantUserImpl;

  factory _PlantUser.fromJson(Map<String, dynamic> json) =
      _$PlantUserImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'plant_type_id')
  int get plantTypeId;
  @override
  @JsonKey(name: 'nickname')
  String get nickname;
  @override
  @JsonKey(name: 'localization')
  String get localization;
  @override
  @JsonKey(name: 'last_day_watering')
  DateTime get lastDayWatering;
  @override
  @JsonKey(name: 'next_day_watering')
  DateTime get nextDayWatering;
  @override
  @JsonKey(ignore: true)
  _$$PlantUserImplCopyWith<_$PlantUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
