import 'dart:async';
import 'package:plants_manager/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../model/offer.dart';

class FavouriteRepository {
  late final String? _userId;

  FavouriteRepository() {
    final user = supabase.auth.currentUser;
    _userId = user?.id;
  }

  Future<List<Offer>> getFavouriteOfferList() async {
    try {
      final response = await supabase.rpc('get_offers_with_favourites',
          params: {'input_user_id': _userId});

      if (response is List<dynamic>) {
        return response.map((item) => Offer.fromJson(item)).toList();
      } else {
        throw Exception('Unexpected response type');
      }
    } on PostgrestException catch (error) {
      error.code;
      return [];
    }
  }

  Future<void> removeFromFavourite(String offerId) async {
    try {
      await supabase.rpc('remove_offer_from_favourites',
          params: {'p_user_id': _userId, 'p_offer_id': offerId});
    } on PostgrestException catch (error) {
      error.code;
    }
  }

  Future<void> addToFavourite(String offerId) async {
    try {
      await supabase.rpc('add_offer_to_favourites',
          params: {'user_id': _userId.toString(), 'offer_id': offerId});
    } on PostgrestException catch (error) {
      error.code;
    }
  }

  Future<bool> isOfferFavourite(String offerId) async {
    try {
      final response = await supabase
          .from('favourite_offer')
          .select('offer_ids')
          .eq('user_id', _userId!)
          .single();

      final data = response['offer_ids'] as List<dynamic>;
      return data.contains(offerId);
    } on PostgrestException catch (error) {
      error.code;
      return false;
    }
  }
}
