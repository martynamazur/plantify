import 'package:plants_manager/domain/provider/plants_provider.dart';
import 'package:plants_manager/domain/provider/shop_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/offer.dart';
import '../repository/user_plant_repository.dart';

part 'plant_shop.g.dart';

@riverpod
class PlantListShopNotifier extends _$PlantListShopNotifier {
  @override
  Future<List<Offer>> build() async {
    final shopRepository = ref.read(shopRepositoryProvider);
    return shopRepository.getRecommendationOffers();
  }
}
