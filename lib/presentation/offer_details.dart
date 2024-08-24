import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/provider/shop_provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../domain/provider/edit_plant_provider.dart';
import '../domain/provider/plant_details_provider.dart';
import '../model/plant_user.dart';
import '../utils/colors.dart';
import '../utils/headline_text.dart';

class OfferDetails extends ConsumerWidget {
  OfferDetails({Key? key}) : super(key: key);

  final PageController controller = PageController(viewportFraction: 1.0, keepPage: true);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final plantId = args['plantId'] as String;

    final plantDetails = ref.watch(getPlantDetailsProvider(plantId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Details'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/editPlant', arguments: plantDetails.value);
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: plantDetails.when(
        data: (data) {
          final imageUrls = [
            'https://i.pinimg.com/564x/d6/cc/91/d6cc91dc6634942ee7d911b457377129.jpg',
            'https://fbxbpzmlcfnwkjfqofeu.supabase.co/storage/v1/object/public/plant-images/6511d95f-ceb5-4cc1-90ee-bea2e16fe2dd/temporaryImage/image.jpeg',
            'https://i.pinimg.com/564x/93/e5/13/93e513b95772349af5ba77a6013f3561.jpg',
            'https://fbxbpzmlcfnwkjfqofeu.supabase.co/storage/v1/object/public/plant-images/6511d95f-ceb5-4cc1-90ee-bea2e16fe2dd/temporaryImage/image.jpeg',
          ];

          return SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.red, // Add your desired decoration
                    ),
                    height: 400,
                    child: PageView.builder(
                      controller: controller,
                      itemCount: imageUrls.length,
                      itemBuilder: (context, index) {
                        return Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: imageUrls.length,
                      effect: WormEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Colors.green,
                        dotHeight: 8.0,
                        dotWidth: 8.0,
                      ),
                      onDotClicked: (index) {
                        controller.animateToPage(
                          index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.offerTitle,
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          )


                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          );
        },
        error: (e, st) => Center(
          child: Text(
            'Something went wrong. Please try again later. $e',
            style: TextStyle(fontSize: 18, color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }

}
