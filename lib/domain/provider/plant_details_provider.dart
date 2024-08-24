
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/provider/plants_provider.dart';
import 'package:plants_manager/model/plant_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'plant_details_provider.g.dart';



@riverpod
Future<PlantUser> getPlant(GetPlantRef ref, String plantDetailsId) async {
  return ref.watch(userPlantRepositoryProvider).getPlant(plantDetailsId);
}