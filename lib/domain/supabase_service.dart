// supabase_utils.dart

import 'dart:io';



import 'package:supabase_flutter/supabase_flutter.dart';

import '../main.dart';

class SupabaseUtils {


  Future<String> uploadImageToStorageAndDatabase(File imageFile) async {

    try{
      final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
      final userId = supabase.auth.currentUser!.id;
      final path = '/$userId/temporaryImage/image.jpeg';
      await supabase.storage.from('plant-images').upload(path, imageFile);
      final imageUrl = supabase.storage.from('plant-images').getPublicUrl(path);
      print('jaki jest url ${imageUrl}');
      return imageUrl;

    }on PostgrestException catch(error){
      rethrow;
    }

  }

  Future<void> uploadImageToStorage(String plantId, String imagePath) async {
    final file = File(imagePath);
    final storageResponse = await supabase.storage
        .from('plants')
        .upload('$plantId/image.jpg',file);
  }

  Future<List<String>> getPlantImages(String plantId) async{
    final userId = supabase.auth.currentUser!.id;
    final folderPath = '$userId/userPlants/$plantId';
    final List<String> imageUrls = [];


    final List<FileObject> objects = await supabase
        .storage
        .from('plant-images')
        .list(path: folderPath);
    
    for(final file in objects){
      final url = supabase.storage.from('plant-images').getPublicUrl('$folderPath/${file.name}');
      imageUrls.add(url);
    }
    return imageUrls;
  }

}
