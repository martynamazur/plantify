
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../model/plant_user.dart';
import '../repository/user_plant_repository.dart';


part 'plants_provider.g.dart';

@riverpod
UserPlantRepository userPlantRepository (UserPlantRepositoryRef ref){
  return UserPlantRepository();
}

@riverpod
Future<List<PlantUser>> getPlants(GetPlantsRef ref) async {
  return ref.watch(userPlantRepositoryProvider).getPlants();
}

@riverpod
Future<void> addNewPlant(AddNewPlantRef ref, PlantUser plantUser) async {
  return ref.watch(userPlantRepositoryProvider).addNewPlant(plantUser);
}
