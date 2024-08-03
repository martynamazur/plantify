// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plants_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userPlantRepositoryHash() =>
    r'f5152dcfccf539be571fc1705198ee17be6c567c';

/// See also [userPlantRepository].
@ProviderFor(userPlantRepository)
final userPlantRepositoryProvider =
    AutoDisposeProvider<UserPlantRepository>.internal(
  userPlantRepository,
  name: r'userPlantRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userPlantRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserPlantRepositoryRef = AutoDisposeProviderRef<UserPlantRepository>;
String _$getPlantsHash() => r'fd4292cc198f44260836c078c56bb8ba379e21d4';

/// See also [getPlants].
@ProviderFor(getPlants)
final getPlantsProvider = AutoDisposeFutureProvider<List<PlantUser>>.internal(
  getPlants,
  name: r'getPlantsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getPlantsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetPlantsRef = AutoDisposeFutureProviderRef<List<PlantUser>>;
String _$addNewPlantHash() => r'dafb9ddeb24d6cee6c9b62c50485cdfb33c8eb46';

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

/// See also [addNewPlant].
@ProviderFor(addNewPlant)
const addNewPlantProvider = AddNewPlantFamily();

/// See also [addNewPlant].
class AddNewPlantFamily extends Family<AsyncValue<void>> {
  /// See also [addNewPlant].
  const AddNewPlantFamily();

  /// See also [addNewPlant].
  AddNewPlantProvider call(
    PlantUser plantUser,
  ) {
    return AddNewPlantProvider(
      plantUser,
    );
  }

  @override
  AddNewPlantProvider getProviderOverride(
    covariant AddNewPlantProvider provider,
  ) {
    return call(
      provider.plantUser,
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
  String? get name => r'addNewPlantProvider';
}

/// See also [addNewPlant].
class AddNewPlantProvider extends AutoDisposeFutureProvider<void> {
  /// See also [addNewPlant].
  AddNewPlantProvider(
    PlantUser plantUser,
  ) : this._internal(
          (ref) => addNewPlant(
            ref as AddNewPlantRef,
            plantUser,
          ),
          from: addNewPlantProvider,
          name: r'addNewPlantProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addNewPlantHash,
          dependencies: AddNewPlantFamily._dependencies,
          allTransitiveDependencies:
              AddNewPlantFamily._allTransitiveDependencies,
          plantUser: plantUser,
        );

  AddNewPlantProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plantUser,
  }) : super.internal();

  final PlantUser plantUser;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddNewPlantRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddNewPlantProvider._internal(
        (ref) => create(ref as AddNewPlantRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plantUser: plantUser,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddNewPlantProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddNewPlantProvider && other.plantUser == plantUser;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plantUser.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddNewPlantRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `plantUser` of this provider.
  PlantUser get plantUser;
}

class _AddNewPlantProviderElement extends AutoDisposeFutureProviderElement<void>
    with AddNewPlantRef {
  _AddNewPlantProviderElement(super.provider);

  @override
  PlantUser get plantUser => (origin as AddNewPlantProvider).plantUser;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
