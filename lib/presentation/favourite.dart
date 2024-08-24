import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/provider/favourite_notifier.dart';
import '../../utils/empty_list_widget.dart';
import '../../utils/offer_card.dart';
import 'package:plants_manager/model/offer.dart';

import '../../utils/ui_settings.dart';

class Favourite extends ConsumerWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteState = ref.watch(favouriteNotifierProvider);
    print(favouriteState.value);
    return Scaffold(
      appBar: AppBar(title: Text('Favourite Offers ')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: uiPadding,
            child: favouriteState.when(
              data: (offers) {
                if (offers.isEmpty) {
                  return _emptyFavouriteList();
                }
                return _notEmptyFavouriteList(offers, ref);
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => Center(child: Text('Error: $error, $stackTrace')),
            ),
          ),
        ),
      ),
    );
  }

  Widget _notEmptyFavouriteList(List<Offer> offers, WidgetRef ref) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 24.0,
        crossAxisSpacing: 24.0,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: offers.length,
      itemBuilder: (context, index) {
        final offer = offers[index];
        return buildOfferCard(
          routeName: '/plantDetails',
          context: context,
          offerId: offer.id,
          offerTitle: offer.offerTitle,
          price: offer.price,
          imageUrl: offer.offerImageUrl,
          isFavourite: offer.isFavourite,
          onFavouriteToggle: () async {
            final notifier = ref.read(favouriteNotifierProvider.notifier);
            await notifier.remove(offer.id);
          },
        );
      },
    );
  }

  Widget _emptyFavouriteList() {
    return EmptyListWidget(
      imagePath: 'assets/happy_pot.png',
      message: 'Empty',
      buttonText: 'Find something',
      buttonRoute: '/addPlant',
    );
  }
}
