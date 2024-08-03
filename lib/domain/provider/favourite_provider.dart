

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/offert.dart';
import '../repository/favourite_repository.dart';
import 'favourite_notifier.dart';

part 'favourite_provider.g.dart';

@riverpod
FavouriteRepository favouriteRepository (FavouriteRepositoryRef ref) {
  return FavouriteRepository() ;
}



//final favouriteNotifierProvider = StateProvider((ref) => FavouriteNotifier());






