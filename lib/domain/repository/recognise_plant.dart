import 'dart:convert';

import 'package:dio/dio.dart';

class RecognisePlantRepository {
  final Dio dio;

  RecognisePlantRepository(this.dio);

  Future<String> recogniseImage(String imageUrl) async {
    try {
      final response = await dio.get(
        'v2/identify/all',
        queryParameters: {
          'images': [imageUrl],
          'include-related-images': false,
          'no-reject': false,
          'lang': 'en'
        },
      );
      print('Status code ${response.statusCode}');
      return 'test';

      /*
      switch (response.statusCode) {
        case 200:
          final data = jsonDecode(response.data);
          if (data['results'] != null && data['results'].isNotEmpty) {
            final bestMatch = data['results'][0]['species'];
            final scientificName = bestMatch['scientificName'];
            return scientificName;
          }else{
            throw 'No species identified';
          }
        case 400:
          throw 'Bad request';
        case 404:
          throw 'Species not found';
        case 429:
          throw 'Too many requests';
        case 401:
          throw 'Unauthorized';
        default:
          throw 'Unexpected error';
      }
      */
    } catch (e) {
      throw 'Failed to recognize image: $e';
    }
  }
}
