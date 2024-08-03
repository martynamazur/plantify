// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPlantHash() => r'1df296202c49bf10b55a111bf765609464d9e661';

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

/// See also [getPlant].
@ProviderFor(getPlant)
const getPlantProvider = GetPlantFamily();

/// See also [getPlant].
class GetPlantFamily extends Family<AsyncValue<PlantUser>> {
  /// See also [getPlant].
  const GetPlantFamily();

  /// See also [getPlant].
  GetPlantProvider call(
    int plantDetailsId,
  ) {
    return GetPlantProvider(
      plantDetailsId,
    );
  }

  @override
  GetPlantProvider getProviderOverride(
    covariant GetPlantProvider provider,
  ) {
    return call(
      provider.plantDetailsId,
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
  String? get name => r'getPlantProvider';
}

/// See also [getPlant].
class GetPlantProvider extends AutoDisposeFutureProvider<PlantUser> {
  /// See also [getPlant].
  GetPlantProvider(
    int plantDetailsId,
  ) : this._internal(
          (ref) => getPlant(
            ref as GetPlantRef,
            plantDetailsId,
          ),
          from: getPlantProvider,
          name: r'getPlantProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPlantHash,
          dependencies: GetPlantFamily._dependencies,
          allTransitiveDependencies: GetPlantFamily._allTransitiveDependencies,
          plantDetailsId: plantDetailsId,
        );

  GetPlantProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plantDetailsId,
  }) : super.internal();

  final int plantDetailsId;

  @override
  Override overrideWith(
    FutureOr<PlantUser> Function(GetPlantRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlantProvider._internal(
        (ref) => create(ref as GetPlantRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plantDetailsId: plantDetailsId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PlantUser> createElement() {
    return _GetPlantProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlantProvider && other.plantDetailsId == plantDetailsId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plantDetailsId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPlantRef on AutoDisposeFutureProviderRef<PlantUser> {
  /// The parameter `plantDetailsId` of this provider.
  int get plantDetailsId;
}

class _GetPlantProviderElement
    extends AutoDisposeFutureProviderElement<PlantUser> with GetPlantRef {
  _GetPlantProviderElement(super.provider);

  @override
  int get plantDetailsId => (origin as GetPlantProvider).plantDetailsId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
