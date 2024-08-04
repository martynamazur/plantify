import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/model/offert.dart';

import '../../domain/provider/shop_provider.dart';
import '../../utils/error_widget.dart';
import '../../utils/offer_card.dart';

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
            SliverAppBar(
              pinned: true,
              floating: true,
              flexibleSpace: _searchBar(),
              expandedHeight: 80.0, // Adjust as needed
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(height: 18.0),
                _category(),
                SizedBox(height: 18.0),
                _recentltViewedSection(),
                SizedBox(height: 18.0),
              ]),
            ),
            SliverToBoxAdapter(
              child: _pickedForYouSection(recommendationForYouList),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchBar() {
    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          controller: controller,
          onTap: () {
            controller.openView();
          },
          onChanged: (_) {
            controller.openView();
          },
          leading: const Icon(Icons.search),
          hintText: 'Find something for yourself',
          backgroundColor: MaterialStateColor.resolveWith((states) => Colors.grey.shade100),
        );
      },
      suggestionsBuilder: (context, controller) {
        return List<ListTile>.generate(5, (int index) {
          final String item = 'item $index';
          return ListTile(
            title: Text(item),
            onTap: () {
              setState(() {
                controller.closeView(item);
              });
            },
          );
        });
      },
    );
  }

  Widget _category() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Category', style: Theme.of(context).textTheme.headline6),
        SizedBox(height: 8.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildCategoryItem(
                categoryName: 'categoryName',
                categoryImageUrl: 'assets/category/test_icon.png',
              ),
              _buildCategoryItem(
                categoryName: 'categoryName',
                categoryImageUrl: 'assets/category/test_icon.png',
              ),
              _buildCategoryItem(
                categoryName: 'categoryName',
                categoryImageUrl: 'assets/category/test_icon.png',
              ),
              _buildCategoryItem(
                categoryName: 'categoryName',
                categoryImageUrl: 'assets/category/test_icon.png',
              ),
              _buildCategoryItem(
                categoryName: 'categoryName',
                categoryImageUrl: 'assets/category/test_icon.png',
              ),
              _buildCategoryItem(
                categoryName: 'categoryName',
                categoryImageUrl: 'assets/category/test_icon.png',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _recentltViewedSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recently viewed', style: Theme.of(context).textTheme.headline6),
        SizedBox(height: 8.0),
        // Add your widgets for recently viewed items here
      ],
    );
  }

  Widget _pickedForYouSection(AsyncValue<List<Offer>> recommendationForYouList) {
    return recommendationForYouList.when(
      data: (data) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 600,
          ),
          child: GridView.builder(
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
              //return buildOfferCard(offerTitle: offer.offerTitle,price:offer.price,imageUrl: offer.offerImageUrl);
            },
          ),
        );
      },
      error: (e, st) => error(context),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildCategoryItem({required String categoryName, required String categoryImageUrl}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          children: [
            Image.asset(categoryImageUrl),
            SizedBox(height: 12.0),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
