import 'dart:async';

import 'package:plants_manager/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';
import '../../model/offert.dart';

class FavouriteRepository {

  /*
  Future<List<Offer>> getFavouriteOfferList() async {
    final user = supabase.auth.currentUser;
    final userId = user?.id;

    final response = await supabase.rpc('get_favourite_offers',
        params: {'input_user_id': userId});

    return response.map((json) => Offer.fromJson(json)).toList();
  }

   */

  Future<List<Offer>> getFavouriteOfferList() async {
    final user = supabase.auth.currentUser;
    final userId = user?.id;

    final response = await supabase
        .rpc('get_offers_with_favourites', params: {'input_user_id': userId});

    if (response is List<dynamic>) {
      return response
          .map((item) => Offer.fromJson(item as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Unexpected response type');
    }
  }

    Future<void> removeFromFavourite(String offerId) async {
      try {
        final user = supabase.auth.currentUser;
        final userId = user?.id;

        await supabase.rpc('remove_offer_from_favourites',
            params: {'p_user_id': userId, 'p_offer_id': offerId});
      } on PostgrestException catch (error) {
        error.code;
      }
    }

    Future<void> addToFavourite(String offerId) async {
      try {
        final user = supabase.auth.currentUser;
        final userId = user?.id;

        await supabase.rpc('add_offer_to_favourites',
            params: {'user_id': userId.toString(), 'offer_id': offerId});
      } on PostgrestException catch (error) {
        error.code;
      }
    }

    Future<bool> isOfferFavourite(String offerId) async {
      try {
        final user = supabase.auth.currentUser;
        final userId = user!.id;

        final response = await supabase
            .from('favourite_offer')
            .select('offer_ids')
            .eq('user_id', userId)
            .single();

        final data = response['offer_ids'] as List<dynamic>;
        return data.contains(offerId);
      } on PostgrestException catch (error) {
        error.code;
        return false;
      }
    }
  }

