import 'package:plants_manager/model/offert.dart';

import '../../main.dart';

class ShopRepository{

  //for testing
  // remember to implement pagination
  Future<List<Offer>> getRecommendationOffers() async{
    final response = await supabase.from('offers').select();
    return response.map((json) => Offer.fromJson(json)).toList();
  }


}