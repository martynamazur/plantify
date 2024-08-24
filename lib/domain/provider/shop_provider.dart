import 'package:plants_manager/domain/repository/shop_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/offer.dart';

part 'shop_provider.g.dart';

@riverpod
ShopRepository shopRepository (ShopRepositoryRef ref) {
  return ShopRepository();
}

@riverpod
Future<List<Offer>> getRecommendation(GetRecommendationRef ref) async {
  final repository = ref.watch(shopRepositoryProvider);
  return repository.getRecommendationOffers();
}

@riverpod
Future<List<Offer>> recentlyViewedOffer(RecentlyViewedOfferRef ref) async {
  final repository = ref.watch(shopRepositoryProvider);
  return repository.getRecentlyViewedOffers();
}
