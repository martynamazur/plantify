import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/provider/plants_provider.dart';

import '../../model/plant_user.dart';
import '../repository/user_plant_repository.dart';

class PlantListNotifier extends StateNotifier<List<PlantUser>> {
  final UserPlantRepository userPlantRepository;

  PlantListNotifier(this.userPlantRepository) : super([]) {
    fetchPlants();
  }

  Future<void> fetchPlants() async {
    final plants = await userPlantRepository.getPlantsToWater();
    state = plants;
  }

  void removePlant(String id) {
    state = state.where((plant) => plant.id != id).toList();
  }
}

