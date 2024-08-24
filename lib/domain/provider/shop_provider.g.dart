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
String _$getRecommendationHash() => r'c0ee36c01a03e101db66919658d7ca5bb5343bde';

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
String _$recentlyViewedOfferHash() =>
    r'5472240dc4344ecb35c2b34f99b0057a2e2f796a';

/// See also [recentlyViewedOffer].
@ProviderFor(recentlyViewedOffer)
final recentlyViewedOfferProvider =
    AutoDisposeFutureProvider<List<Offer>>.internal(
  recentlyViewedOffer,
  name: r'recentlyViewedOfferProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentlyViewedOfferHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RecentlyViewedOfferRef = AutoDisposeFutureProviderRef<List<Offer>>;
String _$getPlantDetailsHash() => r'71b015f0d939fee4f027d03fe958cd86c92d06c0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getPlantDetails].
@ProviderFor(getPlantDetails)
const getPlantDetailsProvider = GetPlantDetailsFamily();

/// See also [getPlantDetails].
class GetPlantDetailsFamily extends Family<AsyncValue<Offer>> {
  /// See also [getPlantDetails].
  const GetPlantDetailsFamily();

  /// See also [getPlantDetails].
  GetPlantDetailsProvider call(
    String plantId,
  ) {
    return GetPlantDetailsProvider(
      plantId,
    );
  }

  @override
  GetPlantDetailsProvider getProviderOverride(
    covariant GetPlantDetailsProvider provider,
  ) {
    return call(
      provider.plantId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlantDetailsProvider';
}

/// See also [getPlantDetails].
class GetPlantDetailsProvider extends AutoDisposeFutureProvider<Offer> {
  /// See also [getPlantDetails].
  GetPlantDetailsProvider(
    String plantId,
  ) : this._internal(
          (ref) => getPlantDetails(
            ref as GetPlantDetailsRef,
            plantId,
          ),
          from: getPlantDetailsProvider,
          name: r'getPlantDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPlantDetailsHash,
          dependencies: GetPlantDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetPlantDetailsFamily._allTransitiveDependencies,
          plantId: plantId,
        );

  GetPlantDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plantId,
  }) : super.internal();

  final String plantId;

  @override
  Override overrideWith(
    FutureOr<Offer> Function(GetPlantDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlantDetailsProvider._internal(
        (ref) => create(ref as GetPlantDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plantId: plantId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Offer> createElement() {
    return _GetPlantDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlantDetailsProvider && other.plantId == plantId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plantId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPlantDetailsRef on AutoDisposeFutureProviderRef<Offer> {
  /// The parameter `plantId` of this provider.
  String get plantId;
}

class _GetPlantDetailsProviderElement
    extends AutoDisposeFutureProviderElement<Offer> with GetPlantDetailsRef {
  _GetPlantDetailsProviderElement(super.provider);

  @override
  String get plantId => (origin as GetPlantDetailsProvider).plantId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
