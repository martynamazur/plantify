import 'package:plants_manager/model/offer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../main.dart';

class ShopRepository{

  //for testing
  // remember to implement pagination
  Future<List<Offer>> getRecommendationOffers() async{
    final response = await supabase.from('offers').select();
    return response.map((json) => Offer.fromJson(json)).toList();
  }

  Future<List<Offer>> getRecentlyViewedOffers() async {
    try {
      final user = supabase.auth.currentUser;
      final userId = user?.id;

      final response = await supabase.rpc('get_recently_viewed_offers', params: {'input_user_id': userId});

      if (response is List<dynamic>) {
        return response.map((item) => Offer.fromJson(item as Map<String, dynamic>)).toList();
      } else {
        throw Exception('Unexpected response type');
      }
    } on PostgrestException {
      return [];
    } catch (e) {
      return [];
    }
  }



}