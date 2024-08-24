// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchbar_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchByOfferRepositoryHash() =>
    r'395bf12507455d22e959bb5e696ca0525563191d';

/// See also [searchByOfferRepository].
@ProviderFor(searchByOfferRepository)
final searchByOfferRepositoryProvider =
    AutoDisposeProvider<SearchByOfferRepository>.internal(
  searchByOfferRepository,
  name: r'searchByOfferRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchByOfferRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchByOfferRepositoryRef
    = AutoDisposeProviderRef<SearchByOfferRepository>;
String _$autocompleteSearchHash() =>
    r'13c72d56a918ed063aaa2e8670d938d67353c0da';

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

/// See also [autocompleteSearch].
@ProviderFor(autocompleteSearch)
const autocompleteSearchProvider = AutocompleteSearchFamily();

/// See also [autocompleteSearch].
class AutocompleteSearchFamily extends Family<AsyncValue<List<String>>> {
  /// See also [autocompleteSearch].
  const AutocompleteSearchFamily();

  /// See also [autocompleteSearch].
  AutocompleteSearchProvider call(
    String inputText,
  ) {
    return AutocompleteSearchProvider(
      inputText,
    );
  }

  @override
  AutocompleteSearchProvider getProviderOverride(
    covariant AutocompleteSearchProvider provider,
  ) {
    return call(
      provider.inputText,
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
  String? get name => r'autocompleteSearchProvider';
}

/// See also [autocompleteSearch].
class AutocompleteSearchProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// See also [autocompleteSearch].
  AutocompleteSearchProvider(
    String inputText,
  ) : this._internal(
          (ref) => autocompleteSearch(
            ref as AutocompleteSearchRef,
            inputText,
          ),
          from: autocompleteSearchProvider,
          name: r'autocompleteSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$autocompleteSearchHash,
          dependencies: AutocompleteSearchFamily._dependencies,
          allTransitiveDependencies:
              AutocompleteSearchFamily._allTransitiveDependencies,
          inputText: inputText,
        );

  AutocompleteSearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.inputText,
  }) : super.internal();

  final String inputText;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(AutocompleteSearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AutocompleteSearchProvider._internal(
        (ref) => create(ref as AutocompleteSearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        inputText: inputText,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _AutocompleteSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AutocompleteSearchProvider && other.inputText == inputText;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, inputText.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AutocompleteSearchRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `inputText` of this provider.
  String get inputText;
}

class _AutocompleteSearchProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with AutocompleteSearchRef {
  _AutocompleteSearchProviderElement(super.provider);

  @override
  String get inputText => (origin as AutocompleteSearchProvider).inputText;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
