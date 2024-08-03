import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../domain/provider/edit_plant_provider.dart';
import '../domain/provider/plant_details_provider.dart';
import '../model/plant_user.dart';
import '../utils/colors.dart';
import '../utils/headline_text.dart';

class PlantDetails extends ConsumerWidget {
  PlantDetails({Key? key}) : super(key: key);

  final controller = PageController(viewportFraction: 1.0, keepPage: true);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plantId = ref.watch(plantDetailsId);
    final plantDetails = ref.watch(getPlantProvider(plantId));

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/editPlant', arguments: plantDetails.value);
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: plantDetails.when(
            data: (data) {

              final imageUrls = [
                'https://i.pinimg.com/564x/d6/cc/91/d6cc91dc6634942ee7d911b457377129.jpg',
                'https://fbxbpzmlcfnwkjfqofeu.supabase.co/storage/v1/object/public/plant-images/6511d95f-ceb5-4cc1-90ee-bea2e16fe2dd/temporaryImage/image.jpeg',
                'https://i.pinimg.com/564x/93/e5/13/93e513b95772349af5ba77a6013f3561.jpg',
                'https://fbxbpzmlcfnwkjfqofeu.supabase.co/storage/v1/object/public/plant-images/6511d95f-ceb5-4cc1-90ee-bea2e16fe2dd/temporaryImage/image.jpeg',
              ];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.red, // Add your desired decoration
                    ),
                    height: 500,
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
                  SizedBox(height: 12.0),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: imageUrls.length,
                      effect: WormEffect(),
                      onDotClicked: (index) {
                        controller.animateToPage(
                          index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(data.nickname, style: TextStyle(fontSize: 12)),
                        Text(
                          'PlantType', // Placeholder for plant type
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text('With me since: ')
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildInfoContainer(
                        icon: Icons.water_drop_outlined,
                        title: 'Water',
                        value: '1/week',
                      ),
                      _buildInfoContainer(
                        icon: Icons.sunny,
                        title: 'Light',
                        value: 'Medium',
                      ),
                      _buildInfoContainer(
                        icon: Icons.thermostat,
                        title: 'Temperature',
                        value: '15-24',
                      ),
                    ],
                  ),
                ],
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
        ),
      ),
    );
  }

  Widget _buildInfoContainer({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Icon(icon, size: 24),
          SizedBox(height: 8.0),
          Text(title, style: TextStyle(fontSize: 12)),
          SizedBox(height: 8.0),
          Text(value, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
