import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:plants_manager/domain/provider/category_provider.dart';
import 'package:plants_manager/domain/provider/favourite_notifier.dart';
import 'package:plants_manager/domain/provider/favourite_provider.dart';
import 'package:plants_manager/domain/provider/searchbar_provider.dart';
import 'package:plants_manager/model/offer.dart';
import 'package:plants_manager/utils/headline_text.dart';

import '../../domain/provider/shop_provider.dart';
import '../../utils/error_widget.dart';
import '../../utils/offer_card.dart';
import '../utils/category_item.dart';

class ShopScreen extends ConsumerStatefulWidget {
  const ShopScreen({super.key});

  @override
  ConsumerState<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends ConsumerState<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    final recommendationForYouList = ref.watch(getRecommendationProvider);

    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          _buildSliverAppBar(),
          SliverToBoxAdapter(child: SizedBox(height: 12.0)),
          SliverToBoxAdapter(child: _buildCategorySection()),
          SliverToBoxAdapter(
              child: _buildPickedForYouSection(recommendationForYouList)),
        ],
      )),
    );
  }

  SliverAppBar _buildSliverAppBar() {
    return SliverAppBar(
      pinned: true,
      floating: false,
      backgroundColor: Colors.white,
      title: _buildSearchBar(),
      flexibleSpace: Container(
          decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: Colors.grey,
          width: 1.0,
        )),
      )),
    );
  }

  Widget _buildSearchBar() {
    final searchbarController = TextEditingController();

    return TypeAheadField<String>(
      suggestionsCallback: (search) async {
        final result =
            await ref.read(autocompleteSearchProvider(search).future);
        return result;
      },
      builder: (context, controller, focusNode) {
        return TextField(
            controller: searchbarController,
            focusNode: focusNode,
            decoration: InputDecoration(
                labelText: 'Find something for yourself...',
                suffixIcon: Icon(Icons.search)));
      },
      //what it is going to be displayed
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(suggestion),
        );
      },
      onSelected: (city) {
        Navigator.pushNamed(context, ' routeName');
      },
    );
  }

  Widget _buildCategorySection() {
    final categories = ref.watch(getCategoriesProvider);

    return SizedBox(
      height: 200,
      child: categories.when(
        data: (categoryData) {
          if (categoryData.isEmpty) {
            return Center(child: Text('No categories available'));
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Categories', style: headline),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryData.length,
                  itemBuilder: (context, index) {
                    final category = categoryData[index];
                    return buildCategoryItem(
                      categoryName: category.categoryName,
                      categoryImageUrl: category.categoryImagePath,
                    );
                  },
                ),
              ),
            ],
          );
        },
        error: (error, st) {
          print('Error loading categories: $error');
          return Center(child: Text('Error loading categories'));
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget _recentltViewedSection() {
    final recentlyViewedOfferList = ref.watch(recentlyViewedOfferProvider);
    return recentlyViewedOfferList.when(
        data: (offerList) {
          print(offerList);
          return Column(
            children: [
              Text(
                'Recently viewed',
                style: headline,
              ),
              SizedBox(height: 8.0),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 200),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: offerList.length,
                  itemBuilder: (context, index) {
                    final offer = offerList[index];
                    return buildOfferCard(
                        context: context,
                        offerTitle: offer.offerTitle,
                        price: offer.price,
                        imageUrl: [],
                        isFavourite: offer.isFavourite,
                        onFavouriteToggle: () async {
                          ref
                              .watch(favouriteRepositoryProvider)
                              .removeFromFavourite(offer.id);
                        });
                  },
                ),
              )
            ],
          );
        },
        error: (error, st) => Text('ups'),
        loading: () => CircularProgressIndicator());
  }

  Widget _buildPickedForYouSection(AsyncValue<List<Offer>> recommendationForYouList) {
    return recommendationForYouList.when(
      data: (data) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recommended', style: headline),
              SizedBox(height: 6.0),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  final offer = data[index];
                  return buildOfferCard(
                    context: context,
                    offerTitle: offer.offerTitle,
                    price: offer.price,
                    imageUrl: offer.offerImageUrl,
                    // Adjust as needed
                    isFavourite: offer.isFavourite,
                    onFavouriteToggle: () async {
                      ref.read(favouriteRepositoryProvider).addToFavourite(offer.id);
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
      error: (e, st) => error(context),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
