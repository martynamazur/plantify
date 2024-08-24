import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/search_offer_repository.dart';

part 'searchbar_provider.g.dart';

@riverpod
SearchByOfferRepository searchByOfferRepository(
    SearchByOfferRepositoryRef ref) {
  return SearchByOfferRepository();
}

@Riverpod()
Future<List<String>> autocompleteSearch(AutocompleteSearchRef ref, String inputText,) async {
  final repository = ref.read(searchByOfferRepositoryProvider);
  return repository.autocomplete(inputText);
}


