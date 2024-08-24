// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferImpl _$$OfferImplFromJson(Map<String, dynamic> json) => _$OfferImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      price: (json['price'] as num).toDouble(),
      offerTitle: json['offer_title'] as String,
      offerDescription: json['offer_description'] as String?,
      offerImageUrl: (json['offer_image_url'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      viewCount: (json['view_count'] as num?)?.toInt(),
      localization: json['localization'] as String?,
      isFavourite: json['isFavourite'] as bool? ?? false,
    );

Map<String, dynamic> _$$OfferImplToJson(_$OfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'price': instance.price,
      'offer_title': instance.offerTitle,
      'offer_description': instance.offerDescription,
      'offer_image_url': instance.offerImageUrl,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'view_count': instance.viewCount,
      'localization': instance.localization,
      'isFavourite': instance.isFavourite,
    };
