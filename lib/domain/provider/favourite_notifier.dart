import 'package:plants_manager/model/offert.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'favourite_provider.dart';
part 'favourite_notifier.g.dart';

@riverpod
class FavouriteNotifier extends _$FavouriteNotifier {
  @override
  Future<List<Offer>> build() async {
    final repository = ref.watch(favouriteRepositoryProvider);
    final offers = await repository.getFavouriteOfferList();
    print(offers);
    return offers;
  }

  Future<void> remove(String offerId) async{
    final repository = ref.watch(favouriteRepositoryProvider);
    try{
      await repository.removeFromFavourite(offerId);

      state = AsyncValue.data(
          (state.value ?? []).where((offer) => offer.id.toString() != offerId).toList()
      );
    }catch(e){

    }
  }
}