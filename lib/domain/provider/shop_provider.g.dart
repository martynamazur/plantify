// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shopRepositoryHash() => r'9f5379d716fcb45a949d95e8613c7e1bc3dd2548';

/// See also [shopRepository].
@ProviderFor(shopRepository)
final shopRepositoryProvider = AutoDisposeProvider<ShopRepository>.internal(
  shopRepository,
  name: r'shopRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$shopRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ShopRepositoryRef = AutoDisposeProviderRef<ShopRepository>;
String _$getRecommendationHash() => r'9b367bf53c6d12afd32ae887a4830ce5ef928976';

/// See also [getRecommendation].
@ProviderFor(getRecommendation)
final getRecommendationProvider =
    AutoDisposeFutureProvider<List<Offer>>.internal(
  getRecommendation,
  name: r'getRecommendationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getRecommendationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetRecommendationRef = AutoDisposeFutureProviderRef<List<Offer>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
