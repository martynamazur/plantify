
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/provider/plant_list_notifier.dart';
import 'package:plants_manager/domain/provider/plants_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/plant_user.dart';

part 'water_plant_schedule_provider.g.dart';

@riverpod
Future<List<PlantUser>> getPlantsToWater(GetPlantsToWaterRef ref) async {
  return ref.read(userPlantRepositoryProvider).getPlantsToWater();
}


@riverpod
Future<void> scheduleNewWaterDay(ScheduleNewWaterDayRef ref, plantId) async {
  return ref.read(userPlantRepositoryProvider).scheduleNewWaterDay(plantId);
}

final plantListProvider = StateNotifierProvider<PlantListNotifier, List<PlantUser>>((ref) {
  final userPlantRepository = ref.read(userPlantRepositoryProvider);
  return PlantListNotifier(userPlantRepository);
});
