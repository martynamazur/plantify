import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/provider/plants_provider.dart';
import 'package:plants_manager/domain/provider/water_plant_schedule_provider.dart';
import 'package:plants_manager/utils/colors.dart';
import 'package:plants_manager/utils/empty_list_widget.dart';

import '../../domain/provider/plant_details_provider.dart';
import 'package:intl/intl.dart';

import '../../domain/provider/plant_list_notifier.dart';
import '../../utils/error_widget.dart';



class WaterSchedule extends ConsumerStatefulWidget {
  const WaterSchedule({super.key});

  @override
  _WaterScheduleState createState() => _WaterScheduleState();
}

class _WaterScheduleState extends ConsumerState<WaterSchedule>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  //final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    //player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today - ${DateFormat('EEEE d').format(DateTime.now())}'),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: 'Water Schedule'),
            Tab(text: 'My Plants'),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  _buildWaterScheduleList(context),
                  _buildUserPlantsList(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWaterScheduleList(BuildContext context) {
    final plantList = ref.watch(plantListProvider);

    return plantList.isEmpty
        ? _everythingWatered(context)
        : ListView.builder(
            itemCount: plantList.length,
            itemBuilder: (context, index) {
              final plant = plantList[index];
              return Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    //ill change it latter
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'https://i.pinimg.com/564x/d6/cc/91/d6cc91dc6634942ee7d911b457377129.jpg',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            plant.nickname,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Localization: ${plant.localization}')
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.backgroundColor),
                          child: IconButton(
                            onPressed: () {
                              ref.watch(userPlantRepositoryProvider).scheduleNewWaterDay(plant.id);
                              ref.read(plantListProvider.notifier).removePlant(plant.id);
                            },
                            icon: Icon(Icons.water_drop,
                                size: 30.0, color: Colors.blue),
                          ),
                        ),
                        Text('150ml')
                      ],
                    ),
                  ],
                ),
              );
            },
          );
  }

  Widget _buildUserPlantsList(BuildContext context) {
    final userPlantsList = ref.watch(getPlantsProvider);
    return userPlantsList.when(
      data: (data) {
        if (data.isEmpty) {
          return _emptyList(context);
        } else {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final plant = data[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/plantDetails', arguments: {'plantId': plant.id});
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'https://i.pinimg.com/564x/d6/cc/91/d6cc91dc6634942ee7d911b457377129.jpg',
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 12.0),
                            Text(
                              plant.nickname,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addPlant');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.add),
                    SizedBox(width: 8),
                    Text('Add plant'),
                  ],
                ),
              ),
            ],
          );
        }
      },
      error: (e, st) => error(context),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _emptyList(BuildContext context) {
    return EmptyListWidget(
        imagePath:'assets/empty_list_icon.png',
        message:'You don\'t own any plants.',
        buttonText:'Add plant',
        buttonRoute:'/addPlant'
    );
  }

  Widget _everythingWatered(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/water_drops.png', width: 150, height: 150),
          SizedBox(height: 12.0),
          const Text('Everything watered.\nCome again tomorrow'),
        ],
      ),
    );
  }


}
