import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'price') required double price,
    @JsonKey(name: 'offer_title') required String offerTitle,
    @JsonKey(name: 'offer_description') String? offerDescription,
    @JsonKey(name: 'offer_image_url') List<String>? offerImageUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'view_count') int? viewCount,
    @JsonKey(name: 'localization') String? localization,
    @JsonKey(name: 'isFavourite') @Default(false) bool isFavourite
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}
