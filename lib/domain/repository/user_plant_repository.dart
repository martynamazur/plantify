
import 'dart:convert';

import 'package:plants_manager/main.dart';
import 'package:plants_manager/model/plant_user.dart';

class UserPlantRepository {

  Future<void> addNewPlant(PlantUser plantUser) async {
    try {
      final user = supabase.auth.currentUser;
      final userId = user!.id;

      /*
      final response = await supabase
          .from('plantuser')
          .insert({
              'id': plantUser.id,
              'user_id': userId,
              'plant_type_id': plantUser.plantTypeId,
              'nickname': plantUser.nickname,
              'acquired_date': plantUser.acquiredDate?.toIso8601String(),
              'last_watered': plantUser.lastWatered?.toIso8601String(),
              'watering_frequency_days': plantUser.wateringFrequencyDays,
              'image_url': plantUser.imageUrl,
              'location': plantUser.location,
      });

       */

    } catch (e) {

    }
  }

  Future<void> deletePlant(int plantId) async {

  }

  Future<void> updatePlantNickName() async {

  }

  Future<void> updatePlantCoverImage() async {

  }

  Future<List<PlantUser>> getPlants() async {
    try {
      final user = supabase.auth.currentUser;
      final userId = user!.id;

      final response = await supabase
          .from('plantuser')
          .select()
          .eq('user_id', userId);

      print(response.isNotEmpty);
      print(response.last.values);
      return response.map((json) => PlantUser.fromJson(json)).toList();
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<PlantUser> getPlant(int plantId) async {
    try {
      final user = supabase.auth.currentUser;
      final userId = user!.id;

      final response = await supabase.from('plantuser').select().eq(
          'user_id', userId).eq('id', plantId);
      final plant = response.map((json) => PlantUser.fromJson(json));
      return plant.first;
    } catch (e) {
      throw Exception('Failed to get plant: $e');
    }
  }

  Future<List<PlantUser>> getPlantsToWater() async {
    try {
      final user = supabase.auth.currentUser;
      final userId = user!.id;
      
      final today = DateTime.now();
      
      final response = supabase
          .from('plantuser')
          .select()
          .eq('user_id', userId)
          .lt('last_day_watering', today)
          .eq('next_day_watering', today)
          .withConverter((data) => data.map(PlantUser.fromJson).toList());

      return response;

    } catch (e) {
      return [];
    }
  }

  Future<void> scheduleNewWaterDay(plantId) async {
    try {
      final user = supabase.auth.currentUser;
      final userId = user!.id;

      DateTime today = DateTime.now();
      DateTime tomorrow = today.add(Duration(days: 1)); //for testing

      await supabase
          .from('plantuser')
          .update({'next_day_watering': tomorrow.toIso8601String()})
          .eq('user_id', userId)
          .eq('id', plantId);

      updateLastWateringDay(plantId);
    } catch(e) {
      print(e);
    }
  }

  Future<void> updateLastWateringDay(plantId) async{
    try {
      final user = supabase.auth.currentUser;
      final userId = user!.id;
      final today = DateTime.now();

      await supabase
          .from('plantuser')
          .update({'last_day_watering': today.toIso8601String()})
          .eq('user_id', userId)
          .eq('id', plantId);
    } catch(e) {
      print(e);
    }
  }

}