import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/repository/recognise_plant.dart';
import 'package:plants_manager/domain/supabase_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recognise_plant_provider.g.dart';


@riverpod
Dio dio(DioRef ref) {
  final apiKey = dotenv.env['PLANTCAREGARDEN_API'];
  final options =
      BaseOptions(baseUrl: "https://my-api.plantnet.org/", queryParameters: {
    'api-key': apiKey,
  });
  return Dio(options);
}

@riverpod
RecognisePlantRepository recognisePlantRepository(
    RecognisePlantRepositoryRef ref) {
  return RecognisePlantRepository(ref.watch(dioProvider));
}

@riverpod
Future<String> recognisePlantType(RecognisePlantTypeRef ref, String imageUrl) {
  final repository = ref.watch(recognisePlantRepositoryProvider);

  final type = repository.recogniseImage(imageUrl);
  return type;

}


@riverpod
SupabaseUtils supabaseUtils(SupabaseUtilsRef ref) {
  return SupabaseUtils();
}

@riverpod
Future<String> fetchImageUrl(FetchImageUrlRef ref, File image) {
  return ref.read(supabaseUtilsProvider).uploadImageToStorageAndDatabase(image);
}

final temporaryImageUrl = StateProvider<String>((ref) => '');
final plantTypeProvider = StateProvider<String>((ref) => '');


