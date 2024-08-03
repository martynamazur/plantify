import 'package:plants_manager/domain/repository/shop_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/offert.dart';

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
