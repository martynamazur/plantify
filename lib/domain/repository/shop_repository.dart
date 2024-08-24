import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/utils/debounce_cancelation.dart';
import 'package:plants_manager/model/offer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../main.dart';

class ShopRepository{

  //for testing
  // remember to implement pagination
  Future<List<Offer>> getRecommendationOffers(Ref ref) async{

    return await ref.executeDebouncedQuery(() async {
      final response = await supabase.from('offers').select();
      return response.map((json) => Offer.fromJson(json)).toList();
    });

  }

  Future<List<Offer>> getRecentlyViewedOffers() async {
    try {
      final user = supabase.auth.currentUser;
      final userId = user?.id;

      final response = await supabase.rpc('get_recently_viewed_offers', params: {'input_user_id': userId});

      if (response is List<dynamic>) {
        return response.map((json) => Offer.fromJson(json)).toList();
      } else {
        throw Exception('Unexpected response type');
      }
    } on PostgrestException {
      return [];
    } catch (e) {
      return [];
    }
  }

  Future<void> addOfferToLastSeen(String offerId) async{
    supabase.rpc('add_offer_to_last_seen', params: {'offer_id': offerId});
  }

  Future<Offer> getPlant(String plantId) async {
    try {

      final response = await supabase.from('offers').select().eq('id', plantId);
      final plant = response.map((json) => Offer.fromJson(json));
      return plant.first;
    } catch (e) {
      throw Exception('Failed to get plant: $e');
    }
  }



}