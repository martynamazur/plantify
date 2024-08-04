// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_title')
  String get offerTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_description')
  String? get offerDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_image_url')
  List<String>? get offerImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_count')
  int? get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'localization')
  String? get localization => throw _privateConstructorUsedError;
  @JsonKey(name: 'isFavourite')
  bool get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'offer_title') String offerTitle,
      @JsonKey(name: 'offer_description') String? offerDescription,
      @JsonKey(name: 'offer_image_url') List<String>? offerImageUrl,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'view_count') int? viewCount,
      @JsonKey(name: 'localization') String? localization,
      @JsonKey(name: 'isFavourite') bool isFavourite});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? price = null,
    Object? offerTitle = null,
    Object? offerDescription = freezed,
    Object? offerImageUrl = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? viewCount = freezed,
    Object? localization = freezed,
    Object? isFavourite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      offerTitle: null == offerTitle
          ? _value.offerTitle
          : offerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      offerDescription: freezed == offerDescription
          ? _value.offerDescription
          : offerDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      offerImageUrl: freezed == offerImageUrl
          ? _value.offerImageUrl
          : offerImageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      localization: freezed == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferImplCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$OfferImplCopyWith(
          _$OfferImpl value, $Res Function(_$OfferImpl) then) =
      __$$OfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'offer_title') String offerTitle,
      @JsonKey(name: 'offer_description') String? offerDescription,
      @JsonKey(name: 'offer_image_url') List<String>? offerImageUrl,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'view_count') int? viewCount,
      @JsonKey(name: 'localization') String? localization,
      @JsonKey(name: 'isFavourite') bool isFavourite});
}

/// @nodoc
class __$$OfferImplCopyWithImpl<$Res>
    extends _$OfferCopyWithImpl<$Res, _$OfferImpl>
    implements _$$OfferImplCopyWith<$Res> {
  __$$OfferImplCopyWithImpl(
      _$OfferImpl _value, $Res Function(_$OfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? price = null,
    Object? offerTitle = null,
    Object? offerDescription = freezed,
    Object? offerImageUrl = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? viewCount = freezed,
    Object? localization = freezed,
    Object? isFavourite = null,
  }) {
    return _then(_$OfferImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      offerTitle: null == offerTitle
          ? _value.offerTitle
          : offerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      offerDescription: freezed == offerDescription
          ? _value.offerDescription
          : offerDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      offerImageUrl: freezed == offerImageUrl
          ? _value._offerImageUrl
          : offerImageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      localization: freezed == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferImpl implements _Offer {
  const _$OfferImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'offer_title') required this.offerTitle,
      @JsonKey(name: 'offer_description') this.offerDescription,
      @JsonKey(name: 'offer_image_url') final List<String>? offerImageUrl,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'view_count') this.viewCount,
      @JsonKey(name: 'localization') this.localization,
      @JsonKey(name: 'isFavourite') this.isFavourite = true})
      : _offerImageUrl = offerImageUrl;

  factory _$OfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'offer_title')
  final String offerTitle;
  @override
  @JsonKey(name: 'offer_description')
  final String? offerDescription;
  final List<String>? _offerImageUrl;
  @override
  @JsonKey(name: 'offer_image_url')
  List<String>? get offerImageUrl {
    final value = _offerImageUrl;
    if (value == null) return null;
    if (_offerImageUrl is EqualUnmodifiableListView) return _offerImageUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'view_count')
  final int? viewCount;
  @override
  @JsonKey(name: 'localization')
  final String? localization;
  @override
  @JsonKey(name: 'isFavourite')
  final bool isFavourite;

  @override
  String toString() {
    return 'Offer(id: $id, userId: $userId, categoryId: $categoryId, price: $price, offerTitle: $offerTitle, offerDescription: $offerDescription, offerImageUrl: $offerImageUrl, createdAt: $createdAt, updatedAt: $updatedAt, viewCount: $viewCount, localization: $localization, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.offerTitle, offerTitle) ||
                other.offerTitle == offerTitle) &&
            (identical(other.offerDescription, offerDescription) ||
                other.offerDescription == offerDescription) &&
            const DeepCollectionEquality()
                .equals(other._offerImageUrl, _offerImageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.localization, localization) ||
                other.localization == localization) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      categoryId,
      price,
      offerTitle,
      offerDescription,
      const DeepCollectionEquality().hash(_offerImageUrl),
      createdAt,
      updatedAt,
      viewCount,
      localization,
      isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      __$$OfferImplCopyWithImpl<_$OfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferImplToJson(
      this,
    );
  }
}

abstract class _Offer implements Offer {
  const factory _Offer(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'price') required final double price,
      @JsonKey(name: 'offer_title') required final String offerTitle,
      @JsonKey(name: 'offer_description') final String? offerDescription,
      @JsonKey(name: 'offer_image_url') final List<String>? offerImageUrl,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'view_count') final int? viewCount,
      @JsonKey(name: 'localization') final String? localization,
      @JsonKey(name: 'isFavourite') final bool isFavourite}) = _$OfferImpl;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$OfferImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'offer_title')
  String get offerTitle;
  @override
  @JsonKey(name: 'offer_description')
  String? get offerDescription;
  @override
  @JsonKey(name: 'offer_image_url')
  List<String>? get offerImageUrl;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'view_count')
  int? get viewCount;
  @override
  @JsonKey(name: 'localization')
  String? get localization;
  @override
  @JsonKey(name: 'isFavourite')
  bool get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
