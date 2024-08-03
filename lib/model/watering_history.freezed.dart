// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watering_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WateringHistory _$WateringHistoryFromJson(Map<String, dynamic> json) {
  return _WateringHistory.fromJson(json);
}

/// @nodoc
mixin _$WateringHistory {
  int get id => throw _privateConstructorUsedError;
  int get plantUserId => throw _privateConstructorUsedError;
  DateTime get wateringDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WateringHistoryCopyWith<WateringHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WateringHistoryCopyWith<$Res> {
  factory $WateringHistoryCopyWith(
          WateringHistory value, $Res Function(WateringHistory) then) =
      _$WateringHistoryCopyWithImpl<$Res, WateringHistory>;
  @useResult
  $Res call({int id, int plantUserId, DateTime wateringDate});
}

/// @nodoc
class _$WateringHistoryCopyWithImpl<$Res, $Val extends WateringHistory>
    implements $WateringHistoryCopyWith<$Res> {
  _$WateringHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plantUserId = null,
    Object? wateringDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      plantUserId: null == plantUserId
          ? _value.plantUserId
          : plantUserId // ignore: cast_nullable_to_non_nullable
              as int,
      wateringDate: null == wateringDate
          ? _value.wateringDate
          : wateringDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WateringHistoryImplCopyWith<$Res>
    implements $WateringHistoryCopyWith<$Res> {
  factory _$$WateringHistoryImplCopyWith(_$WateringHistoryImpl value,
          $Res Function(_$WateringHistoryImpl) then) =
      __$$WateringHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int plantUserId, DateTime wateringDate});
}

/// @nodoc
class __$$WateringHistoryImplCopyWithImpl<$Res>
    extends _$WateringHistoryCopyWithImpl<$Res, _$WateringHistoryImpl>
    implements _$$WateringHistoryImplCopyWith<$Res> {
  __$$WateringHistoryImplCopyWithImpl(
      _$WateringHistoryImpl _value, $Res Function(_$WateringHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plantUserId = null,
    Object? wateringDate = null,
  }) {
    return _then(_$WateringHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      plantUserId: null == plantUserId
          ? _value.plantUserId
          : plantUserId // ignore: cast_nullable_to_non_nullable
              as int,
      wateringDate: null == wateringDate
          ? _value.wateringDate
          : wateringDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WateringHistoryImpl implements _WateringHistory {
  const _$WateringHistoryImpl(
      {required this.id,
      required this.plantUserId,
      required this.wateringDate});

  factory _$WateringHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$WateringHistoryImplFromJson(json);

  @override
  final int id;
  @override
  final int plantUserId;
  @override
  final DateTime wateringDate;

  @override
  String toString() {
    return 'WateringHistory(id: $id, plantUserId: $plantUserId, wateringDate: $wateringDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WateringHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.plantUserId, plantUserId) ||
                other.plantUserId == plantUserId) &&
            (identical(other.wateringDate, wateringDate) ||
                other.wateringDate == wateringDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, plantUserId, wateringDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WateringHistoryImplCopyWith<_$WateringHistoryImpl> get copyWith =>
      __$$WateringHistoryImplCopyWithImpl<_$WateringHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WateringHistoryImplToJson(
      this,
    );
  }
}

abstract class _WateringHistory implements WateringHistory {
  const factory _WateringHistory(
      {required final int id,
      required final int plantUserId,
      required final DateTime wateringDate}) = _$WateringHistoryImpl;

  factory _WateringHistory.fromJson(Map<String, dynamic> json) =
      _$WateringHistoryImpl.fromJson;

  @override
  int get id;
  @override
  int get plantUserId;
  @override
  DateTime get wateringDate;
  @override
  @JsonKey(ignore: true)
  _$$WateringHistoryImplCopyWith<_$WateringHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
