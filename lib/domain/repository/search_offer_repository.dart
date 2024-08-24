import 'package:plants_manager/model/offer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../main.dart';

class SearchByOfferRepository{
  

  Future<List<String>> autocomplete(String searchPhrase) async {
    final response = supabase.from('offers').select("*").ilike(
        'offer_title', '%$searchPhrase%');

    final List<dynamic> data = response as List<dynamic>;
    return data.map((e) => e['offer_title'] as String).toList();
  }


  Future<List<Offer>> getOffers(String searchPhrase) async{
    try{
      final response = await supabase.from('offers').select("*").ilike('offer_title', '%$searchPhrase%');
      return response.map((json) => Offer.fromJson(json)).toList();

    }catch(e){
      print(e);
      return [];
    }
  }
}