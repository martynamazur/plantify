
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/provider/plants_provider.dart';
import 'package:plants_manager/model/plant_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'plant_details_provider.g.dart';

final plantDetailsId = StateProvider<int>((ref) => 0);

@riverpod
Future<PlantUser> getPlant(GetPlantRef ref, int plantDetailsId) async {
  return ref.watch(userPlantRepositoryProvider).getPlant(plantDetailsId);
}