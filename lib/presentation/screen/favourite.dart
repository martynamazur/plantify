import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/provider/favourite_notifier.dart';
import '../../utils/offer_card.dart';

class Favourite extends ConsumerWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteState = ref.watch(favouriteNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Favourite Offers')),
      body: Column(
        children: [
          favouriteState.when(
            data: (offers) {
              if (offers.isEmpty) {
                return Center(child: Text('No favourite offers found.'));
              }
              return Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 16.0,
                  ),
                  shrinkWrap: true,
                  itemCount: offers.length,
                  itemBuilder: (context, index) {
                    final offer = offers[index];
                    return buildOfferCard(
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
                ),
              );
            },
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text('Error: $error, $stackTrace')),
          ),
        ],
      )
    );
  }
}
