// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview.repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getNewsRemoteHash() => r'160d7d16f442f0db328890309986873a9df5d60c';

/// See also [getNewsRemote].
@ProviderFor(getNewsRemote)
final getNewsRemoteProvider =
    AutoDisposeFutureProvider<NewsResponseRemote>.internal(
  getNewsRemote,
  name: r'getNewsRemoteProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getNewsRemoteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetNewsRemoteRef = AutoDisposeFutureProviderRef<NewsResponseRemote>;
String _$getNewsImageRemoteHash() =>
    r'a8874e2d155c474700a26f260549e5741baa9c05';

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

/// See also [getNewsImageRemote].
@ProviderFor(getNewsImageRemote)
const getNewsImageRemoteProvider = GetNewsImageRemoteFamily();

/// See also [getNewsImageRemote].
class GetNewsImageRemoteFamily
    extends Family<AsyncValue<DownloadAttachmentNewsRequestRemote>> {
  /// See also [getNewsImageRemote].
  const GetNewsImageRemoteFamily();

  /// See also [getNewsImageRemote].
  GetNewsImageRemoteProvider call({
    int? id,
  }) {
    return GetNewsImageRemoteProvider(
      id: id,
    );
  }

  @override
  GetNewsImageRemoteProvider getProviderOverride(
    covariant GetNewsImageRemoteProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'getNewsImageRemoteProvider';
}

/// See also [getNewsImageRemote].
class GetNewsImageRemoteProvider
    extends AutoDisposeFutureProvider<DownloadAttachmentNewsRequestRemote> {
  /// See also [getNewsImageRemote].
  GetNewsImageRemoteProvider({
    int? id,
  }) : this._internal(
          (ref) => getNewsImageRemote(
            ref as GetNewsImageRemoteRef,
            id: id,
          ),
          from: getNewsImageRemoteProvider,
          name: r'getNewsImageRemoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNewsImageRemoteHash,
          dependencies: GetNewsImageRemoteFamily._dependencies,
          allTransitiveDependencies:
              GetNewsImageRemoteFamily._allTransitiveDependencies,
          id: id,
        );

  GetNewsImageRemoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int? id;

  @override
  Override overrideWith(
    FutureOr<DownloadAttachmentNewsRequestRemote> Function(
            GetNewsImageRemoteRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNewsImageRemoteProvider._internal(
        (ref) => create(ref as GetNewsImageRemoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DownloadAttachmentNewsRequestRemote>
      createElement() {
    return _GetNewsImageRemoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNewsImageRemoteProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetNewsImageRemoteRef
    on AutoDisposeFutureProviderRef<DownloadAttachmentNewsRequestRemote> {
  /// The parameter `id` of this provider.
  int? get id;
}

class _GetNewsImageRemoteProviderElement
    extends AutoDisposeFutureProviderElement<
        DownloadAttachmentNewsRequestRemote> with GetNewsImageRemoteRef {
  _GetNewsImageRemoteProviderElement(super.provider);

  @override
  int? get id => (origin as GetNewsImageRemoteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
