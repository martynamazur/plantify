// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recognise_plant_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'a8960d4631da01dc62fd7f51fffbe9302ef9ed68';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$recognisePlantRepositoryHash() =>
    r'efeaebf610b6cbc732ecf3d29d7c51e30511fd1d';

/// See also [recognisePlantRepository].
@ProviderFor(recognisePlantRepository)
final recognisePlantRepositoryProvider =
    AutoDisposeProvider<RecognisePlantRepository>.internal(
  recognisePlantRepository,
  name: r'recognisePlantRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recognisePlantRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RecognisePlantRepositoryRef
    = AutoDisposeProviderRef<RecognisePlantRepository>;
String _$recognisePlantTypeHash() =>
    r'fa004560cd28868fbe3dbf255f3950b37f983c5f';

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

/// See also [recognisePlantType].
@ProviderFor(recognisePlantType)
const recognisePlantTypeProvider = RecognisePlantTypeFamily();

/// See also [recognisePlantType].
class RecognisePlantTypeFamily extends Family<AsyncValue<String>> {
  /// See also [recognisePlantType].
  const RecognisePlantTypeFamily();

  /// See also [recognisePlantType].
  RecognisePlantTypeProvider call(
    String imageUrl,
  ) {
    return RecognisePlantTypeProvider(
      imageUrl,
    );
  }

  @override
  RecognisePlantTypeProvider getProviderOverride(
    covariant RecognisePlantTypeProvider provider,
  ) {
    return call(
      provider.imageUrl,
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
  String? get name => r'recognisePlantTypeProvider';
}

/// See also [recognisePlantType].
class RecognisePlantTypeProvider extends AutoDisposeFutureProvider<String> {
  /// See also [recognisePlantType].
  RecognisePlantTypeProvider(
    String imageUrl,
  ) : this._internal(
          (ref) => recognisePlantType(
            ref as RecognisePlantTypeRef,
            imageUrl,
          ),
          from: recognisePlantTypeProvider,
          name: r'recognisePlantTypeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recognisePlantTypeHash,
          dependencies: RecognisePlantTypeFamily._dependencies,
          allTransitiveDependencies:
              RecognisePlantTypeFamily._allTransitiveDependencies,
          imageUrl: imageUrl,
        );

  RecognisePlantTypeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageUrl,
  }) : super.internal();

  final String imageUrl;

  @override
  Override overrideWith(
    FutureOr<String> Function(RecognisePlantTypeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RecognisePlantTypeProvider._internal(
        (ref) => create(ref as RecognisePlantTypeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageUrl: imageUrl,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _RecognisePlantTypeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecognisePlantTypeProvider && other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RecognisePlantTypeRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `imageUrl` of this provider.
  String get imageUrl;
}

class _RecognisePlantTypeProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with RecognisePlantTypeRef {
  _RecognisePlantTypeProviderElement(super.provider);

  @override
  String get imageUrl => (origin as RecognisePlantTypeProvider).imageUrl;
}

String _$supabaseUtilsHash() => r'22d56cbba389b95fd72b4df35668997c8ad8ee08';

/// See also [supabaseUtils].
@ProviderFor(supabaseUtils)
final supabaseUtilsProvider = AutoDisposeProvider<SupabaseUtils>.internal(
  supabaseUtils,
  name: r'supabaseUtilsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseUtilsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SupabaseUtilsRef = AutoDisposeProviderRef<SupabaseUtils>;
String _$fetchImageUrlHash() => r'abeaa9a411fd82d921e76e0789c0f6b39ae44dd0';

/// See also [fetchImageUrl].
@ProviderFor(fetchImageUrl)
const fetchImageUrlProvider = FetchImageUrlFamily();

/// See also [fetchImageUrl].
class FetchImageUrlFamily extends Family<AsyncValue<String>> {
  /// See also [fetchImageUrl].
  const FetchImageUrlFamily();

  /// See also [fetchImageUrl].
  FetchImageUrlProvider call(
    File image,
  ) {
    return FetchImageUrlProvider(
      image,
    );
  }

  @override
  FetchImageUrlProvider getProviderOverride(
    covariant FetchImageUrlProvider provider,
  ) {
    return call(
      provider.image,
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
  String? get name => r'fetchImageUrlProvider';
}

/// See also [fetchImageUrl].
class FetchImageUrlProvider extends AutoDisposeFutureProvider<String> {
  /// See also [fetchImageUrl].
  FetchImageUrlProvider(
    File image,
  ) : this._internal(
          (ref) => fetchImageUrl(
            ref as FetchImageUrlRef,
            image,
          ),
          from: fetchImageUrlProvider,
          name: r'fetchImageUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchImageUrlHash,
          dependencies: FetchImageUrlFamily._dependencies,
          allTransitiveDependencies:
              FetchImageUrlFamily._allTransitiveDependencies,
          image: image,
        );

  FetchImageUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.image,
  }) : super.internal();

  final File image;

  @override
  Override overrideWith(
    FutureOr<String> Function(FetchImageUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchImageUrlProvider._internal(
        (ref) => create(ref as FetchImageUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        image: image,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _FetchImageUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchImageUrlProvider && other.image == image;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, image.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchImageUrlRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `image` of this provider.
  File get image;
}

class _FetchImageUrlProviderElement
    extends AutoDisposeFutureProviderElement<String> with FetchImageUrlRef {
  _FetchImageUrlProviderElement(super.provider);

  @override
  File get image => (origin as FetchImageUrlProvider).image;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
