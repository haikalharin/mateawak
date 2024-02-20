// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_local.repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getNewsLocalHash() => r'c16e58c82cf17fac7e2d4e629f78db064a987e98';

/// See also [getNewsLocal].
@ProviderFor(getNewsLocal)
final getNewsLocalProvider =
    AutoDisposeFutureProvider<NewsResponseRemote?>.internal(
  getNewsLocal,
  name: r'getNewsLocalProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getNewsLocalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetNewsLocalRef = AutoDisposeFutureProviderRef<NewsResponseRemote?>;
String _$getNewsImageLocalHash() => r'25d8ae9cb91da4ff2a19a9b1cb6f884f741c3414';

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

/// See also [getNewsImageLocal].
@ProviderFor(getNewsImageLocal)
const getNewsImageLocalProvider = GetNewsImageLocalFamily();

/// See also [getNewsImageLocal].
class GetNewsImageLocalFamily
    extends Family<AsyncValue<DownloadAttachmentNewsRequestRemote?>> {
  /// See also [getNewsImageLocal].
  const GetNewsImageLocalFamily();

  /// See also [getNewsImageLocal].
  GetNewsImageLocalProvider call({
    int? id,
  }) {
    return GetNewsImageLocalProvider(
      id: id,
    );
  }

  @override
  GetNewsImageLocalProvider getProviderOverride(
    covariant GetNewsImageLocalProvider provider,
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
  String? get name => r'getNewsImageLocalProvider';
}

/// See also [getNewsImageLocal].
class GetNewsImageLocalProvider
    extends AutoDisposeFutureProvider<DownloadAttachmentNewsRequestRemote?> {
  /// See also [getNewsImageLocal].
  GetNewsImageLocalProvider({
    int? id,
  }) : this._internal(
          (ref) => getNewsImageLocal(
            ref as GetNewsImageLocalRef,
            id: id,
          ),
          from: getNewsImageLocalProvider,
          name: r'getNewsImageLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNewsImageLocalHash,
          dependencies: GetNewsImageLocalFamily._dependencies,
          allTransitiveDependencies:
              GetNewsImageLocalFamily._allTransitiveDependencies,
          id: id,
        );

  GetNewsImageLocalProvider._internal(
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
    FutureOr<DownloadAttachmentNewsRequestRemote?> Function(
            GetNewsImageLocalRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNewsImageLocalProvider._internal(
        (ref) => create(ref as GetNewsImageLocalRef),
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
  AutoDisposeFutureProviderElement<DownloadAttachmentNewsRequestRemote?>
      createElement() {
    return _GetNewsImageLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNewsImageLocalProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetNewsImageLocalRef
    on AutoDisposeFutureProviderRef<DownloadAttachmentNewsRequestRemote?> {
  /// The parameter `id` of this provider.
  int? get id;
}

class _GetNewsImageLocalProviderElement
    extends AutoDisposeFutureProviderElement<
        DownloadAttachmentNewsRequestRemote?> with GetNewsImageLocalRef {
  _GetNewsImageLocalProviderElement(super.provider);

  @override
  int? get id => (origin as GetNewsImageLocalProvider).id;
}

String _$getAchievementProduksiLocalHash() =>
    r'a2b104e54e3794986387a2fef497e25571110aad';

/// See also [getAchievementProduksiLocal].
@ProviderFor(getAchievementProduksiLocal)
const getAchievementProduksiLocalProvider = GetAchievementProduksiLocalFamily();

/// See also [getAchievementProduksiLocal].
class GetAchievementProduksiLocalFamily
    extends Family<AsyncValue<AchievementProduksiResponseRemote?>> {
  /// See also [getAchievementProduksiLocal].
  const GetAchievementProduksiLocalFamily();

  /// See also [getAchievementProduksiLocal].
  GetAchievementProduksiLocalProvider call(
    bool isOb,
  ) {
    return GetAchievementProduksiLocalProvider(
      isOb,
    );
  }

  @override
  GetAchievementProduksiLocalProvider getProviderOverride(
    covariant GetAchievementProduksiLocalProvider provider,
  ) {
    return call(
      provider.isOb,
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
  String? get name => r'getAchievementProduksiLocalProvider';
}

/// See also [getAchievementProduksiLocal].
class GetAchievementProduksiLocalProvider
    extends AutoDisposeFutureProvider<AchievementProduksiResponseRemote?> {
  /// See also [getAchievementProduksiLocal].
  GetAchievementProduksiLocalProvider(
    bool isOb,
  ) : this._internal(
          (ref) => getAchievementProduksiLocal(
            ref as GetAchievementProduksiLocalRef,
            isOb,
          ),
          from: getAchievementProduksiLocalProvider,
          name: r'getAchievementProduksiLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAchievementProduksiLocalHash,
          dependencies: GetAchievementProduksiLocalFamily._dependencies,
          allTransitiveDependencies:
              GetAchievementProduksiLocalFamily._allTransitiveDependencies,
          isOb: isOb,
        );

  GetAchievementProduksiLocalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isOb,
  }) : super.internal();

  final bool isOb;

  @override
  Override overrideWith(
    FutureOr<AchievementProduksiResponseRemote?> Function(
            GetAchievementProduksiLocalRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAchievementProduksiLocalProvider._internal(
        (ref) => create(ref as GetAchievementProduksiLocalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isOb: isOb,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AchievementProduksiResponseRemote?>
      createElement() {
    return _GetAchievementProduksiLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAchievementProduksiLocalProvider && other.isOb == isOb;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isOb.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAchievementProduksiLocalRef
    on AutoDisposeFutureProviderRef<AchievementProduksiResponseRemote?> {
  /// The parameter `isOb` of this provider.
  bool get isOb;
}

class _GetAchievementProduksiLocalProviderElement
    extends AutoDisposeFutureProviderElement<AchievementProduksiResponseRemote?>
    with GetAchievementProduksiLocalRef {
  _GetAchievementProduksiLocalProviderElement(super.provider);

  @override
  bool get isOb => (origin as GetAchievementProduksiLocalProvider).isOb;
}

String _$getDetailHourlyGrafikLocalHash() =>
    r'4d17134464b641675f166da36895b9ea42eda947';

/// See also [getDetailHourlyGrafikLocal].
@ProviderFor(getDetailHourlyGrafikLocal)
const getDetailHourlyGrafikLocalProvider = GetDetailHourlyGrafikLocalFamily();

/// See also [getDetailHourlyGrafikLocal].
class GetDetailHourlyGrafikLocalFamily
    extends Family<AsyncValue<List<DetailHourlyGrafikResponseRemote>>> {
  /// See also [getDetailHourlyGrafikLocal].
  const GetDetailHourlyGrafikLocalFamily();

  /// See also [getDetailHourlyGrafikLocal].
  GetDetailHourlyGrafikLocalProvider call(
    bool isOb,
  ) {
    return GetDetailHourlyGrafikLocalProvider(
      isOb,
    );
  }

  @override
  GetDetailHourlyGrafikLocalProvider getProviderOverride(
    covariant GetDetailHourlyGrafikLocalProvider provider,
  ) {
    return call(
      provider.isOb,
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
  String? get name => r'getDetailHourlyGrafikLocalProvider';
}

/// See also [getDetailHourlyGrafikLocal].
class GetDetailHourlyGrafikLocalProvider
    extends AutoDisposeFutureProvider<List<DetailHourlyGrafikResponseRemote>> {
  /// See also [getDetailHourlyGrafikLocal].
  GetDetailHourlyGrafikLocalProvider(
    bool isOb,
  ) : this._internal(
          (ref) => getDetailHourlyGrafikLocal(
            ref as GetDetailHourlyGrafikLocalRef,
            isOb,
          ),
          from: getDetailHourlyGrafikLocalProvider,
          name: r'getDetailHourlyGrafikLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDetailHourlyGrafikLocalHash,
          dependencies: GetDetailHourlyGrafikLocalFamily._dependencies,
          allTransitiveDependencies:
              GetDetailHourlyGrafikLocalFamily._allTransitiveDependencies,
          isOb: isOb,
        );

  GetDetailHourlyGrafikLocalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isOb,
  }) : super.internal();

  final bool isOb;

  @override
  Override overrideWith(
    FutureOr<List<DetailHourlyGrafikResponseRemote>> Function(
            GetDetailHourlyGrafikLocalRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDetailHourlyGrafikLocalProvider._internal(
        (ref) => create(ref as GetDetailHourlyGrafikLocalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isOb: isOb,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<DetailHourlyGrafikResponseRemote>>
      createElement() {
    return _GetDetailHourlyGrafikLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDetailHourlyGrafikLocalProvider && other.isOb == isOb;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isOb.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetDetailHourlyGrafikLocalRef
    on AutoDisposeFutureProviderRef<List<DetailHourlyGrafikResponseRemote>> {
  /// The parameter `isOb` of this provider.
  bool get isOb;
}

class _GetDetailHourlyGrafikLocalProviderElement
    extends AutoDisposeFutureProviderElement<
        List<DetailHourlyGrafikResponseRemote>>
    with GetDetailHourlyGrafikLocalRef {
  _GetDetailHourlyGrafikLocalProviderElement(super.provider);

  @override
  bool get isOb => (origin as GetDetailHourlyGrafikLocalProvider).isOb;
}

String _$getUnitBreakdownLocalHash() =>
    r'7163f56a9fc0cd4dc7c8e3bdd9f0d305186043dd';

/// See also [getUnitBreakdownLocal].
@ProviderFor(getUnitBreakdownLocal)
const getUnitBreakdownLocalProvider = GetUnitBreakdownLocalFamily();

/// See also [getUnitBreakdownLocal].
class GetUnitBreakdownLocalFamily
    extends Family<AsyncValue<List<UnitBreakdownResponseRemote>>> {
  /// See also [getUnitBreakdownLocal].
  const GetUnitBreakdownLocalFamily();

  /// See also [getUnitBreakdownLocal].
  GetUnitBreakdownLocalProvider call(
    bool isOb,
  ) {
    return GetUnitBreakdownLocalProvider(
      isOb,
    );
  }

  @override
  GetUnitBreakdownLocalProvider getProviderOverride(
    covariant GetUnitBreakdownLocalProvider provider,
  ) {
    return call(
      provider.isOb,
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
  String? get name => r'getUnitBreakdownLocalProvider';
}

/// See also [getUnitBreakdownLocal].
class GetUnitBreakdownLocalProvider
    extends AutoDisposeFutureProvider<List<UnitBreakdownResponseRemote>> {
  /// See also [getUnitBreakdownLocal].
  GetUnitBreakdownLocalProvider(
    bool isOb,
  ) : this._internal(
          (ref) => getUnitBreakdownLocal(
            ref as GetUnitBreakdownLocalRef,
            isOb,
          ),
          from: getUnitBreakdownLocalProvider,
          name: r'getUnitBreakdownLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUnitBreakdownLocalHash,
          dependencies: GetUnitBreakdownLocalFamily._dependencies,
          allTransitiveDependencies:
              GetUnitBreakdownLocalFamily._allTransitiveDependencies,
          isOb: isOb,
        );

  GetUnitBreakdownLocalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isOb,
  }) : super.internal();

  final bool isOb;

  @override
  Override overrideWith(
    FutureOr<List<UnitBreakdownResponseRemote>> Function(
            GetUnitBreakdownLocalRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUnitBreakdownLocalProvider._internal(
        (ref) => create(ref as GetUnitBreakdownLocalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isOb: isOb,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<UnitBreakdownResponseRemote>>
      createElement() {
    return _GetUnitBreakdownLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUnitBreakdownLocalProvider && other.isOb == isOb;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isOb.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUnitBreakdownLocalRef
    on AutoDisposeFutureProviderRef<List<UnitBreakdownResponseRemote>> {
  /// The parameter `isOb` of this provider.
  bool get isOb;
}

class _GetUnitBreakdownLocalProviderElement
    extends AutoDisposeFutureProviderElement<List<UnitBreakdownResponseRemote>>
    with GetUnitBreakdownLocalRef {
  _GetUnitBreakdownLocalProviderElement(super.provider);

  @override
  bool get isOb => (origin as GetUnitBreakdownLocalProvider).isOb;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
