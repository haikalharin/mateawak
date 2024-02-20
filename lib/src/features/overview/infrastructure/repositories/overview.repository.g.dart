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

String _$getAchievementProduksiRemoteHash() =>
    r'33ab767b49cd8f5628ccb6d0bc5b256563f929d8';

/// See also [getAchievementProduksiRemote].
@ProviderFor(getAchievementProduksiRemote)
const getAchievementProduksiRemoteProvider =
    GetAchievementProduksiRemoteFamily();

/// See also [getAchievementProduksiRemote].
class GetAchievementProduksiRemoteFamily
    extends Family<AsyncValue<AchievementProduksiResponseRemote>> {
  /// See also [getAchievementProduksiRemote].
  const GetAchievementProduksiRemoteFamily();

  /// See also [getAchievementProduksiRemote].
  GetAchievementProduksiRemoteProvider call({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) {
    return GetAchievementProduksiRemoteProvider(
      material: material,
      adAccount: adAccount,
      uid: uid,
      areas: areas,
    );
  }

  @override
  GetAchievementProduksiRemoteProvider getProviderOverride(
    covariant GetAchievementProduksiRemoteProvider provider,
  ) {
    return call(
      material: provider.material,
      adAccount: provider.adAccount,
      uid: provider.uid,
      areas: provider.areas,
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
  String? get name => r'getAchievementProduksiRemoteProvider';
}

/// See also [getAchievementProduksiRemote].
class GetAchievementProduksiRemoteProvider
    extends AutoDisposeFutureProvider<AchievementProduksiResponseRemote> {
  /// See also [getAchievementProduksiRemote].
  GetAchievementProduksiRemoteProvider({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) : this._internal(
          (ref) => getAchievementProduksiRemote(
            ref as GetAchievementProduksiRemoteRef,
            material: material,
            adAccount: adAccount,
            uid: uid,
            areas: areas,
          ),
          from: getAchievementProduksiRemoteProvider,
          name: r'getAchievementProduksiRemoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAchievementProduksiRemoteHash,
          dependencies: GetAchievementProduksiRemoteFamily._dependencies,
          allTransitiveDependencies:
              GetAchievementProduksiRemoteFamily._allTransitiveDependencies,
          material: material,
          adAccount: adAccount,
          uid: uid,
          areas: areas,
        );

  GetAchievementProduksiRemoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.material,
    required this.adAccount,
    required this.uid,
    required this.areas,
  }) : super.internal();

  final String? material;
  final String? adAccount;
  final int? uid;
  final List<String>? areas;

  @override
  Override overrideWith(
    FutureOr<AchievementProduksiResponseRemote> Function(
            GetAchievementProduksiRemoteRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAchievementProduksiRemoteProvider._internal(
        (ref) => create(ref as GetAchievementProduksiRemoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        material: material,
        adAccount: adAccount,
        uid: uid,
        areas: areas,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AchievementProduksiResponseRemote>
      createElement() {
    return _GetAchievementProduksiRemoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAchievementProduksiRemoteProvider &&
        other.material == material &&
        other.adAccount == adAccount &&
        other.uid == uid &&
        other.areas == areas;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, material.hashCode);
    hash = _SystemHash.combine(hash, adAccount.hashCode);
    hash = _SystemHash.combine(hash, uid.hashCode);
    hash = _SystemHash.combine(hash, areas.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAchievementProduksiRemoteRef
    on AutoDisposeFutureProviderRef<AchievementProduksiResponseRemote> {
  /// The parameter `material` of this provider.
  String? get material;

  /// The parameter `adAccount` of this provider.
  String? get adAccount;

  /// The parameter `uid` of this provider.
  int? get uid;

  /// The parameter `areas` of this provider.
  List<String>? get areas;
}

class _GetAchievementProduksiRemoteProviderElement
    extends AutoDisposeFutureProviderElement<AchievementProduksiResponseRemote>
    with GetAchievementProduksiRemoteRef {
  _GetAchievementProduksiRemoteProviderElement(super.provider);

  @override
  String? get material =>
      (origin as GetAchievementProduksiRemoteProvider).material;
  @override
  String? get adAccount =>
      (origin as GetAchievementProduksiRemoteProvider).adAccount;
  @override
  int? get uid => (origin as GetAchievementProduksiRemoteProvider).uid;
  @override
  List<String>? get areas =>
      (origin as GetAchievementProduksiRemoteProvider).areas;
}

String _$getDetailHourlyGrafikRemoteHash() =>
    r'3e307130f8cb45c523d474999714d34ddc1b0216';

/// See also [getDetailHourlyGrafikRemote].
@ProviderFor(getDetailHourlyGrafikRemote)
const getDetailHourlyGrafikRemoteProvider = GetDetailHourlyGrafikRemoteFamily();

/// See also [getDetailHourlyGrafikRemote].
class GetDetailHourlyGrafikRemoteFamily
    extends Family<AsyncValue<List<DetailHourlyGrafikResponseRemote>>> {
  /// See also [getDetailHourlyGrafikRemote].
  const GetDetailHourlyGrafikRemoteFamily();

  /// See also [getDetailHourlyGrafikRemote].
  GetDetailHourlyGrafikRemoteProvider call({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) {
    return GetDetailHourlyGrafikRemoteProvider(
      material: material,
      adAccount: adAccount,
      uid: uid,
      areas: areas,
    );
  }

  @override
  GetDetailHourlyGrafikRemoteProvider getProviderOverride(
    covariant GetDetailHourlyGrafikRemoteProvider provider,
  ) {
    return call(
      material: provider.material,
      adAccount: provider.adAccount,
      uid: provider.uid,
      areas: provider.areas,
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
  String? get name => r'getDetailHourlyGrafikRemoteProvider';
}

/// See also [getDetailHourlyGrafikRemote].
class GetDetailHourlyGrafikRemoteProvider
    extends AutoDisposeFutureProvider<List<DetailHourlyGrafikResponseRemote>> {
  /// See also [getDetailHourlyGrafikRemote].
  GetDetailHourlyGrafikRemoteProvider({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) : this._internal(
          (ref) => getDetailHourlyGrafikRemote(
            ref as GetDetailHourlyGrafikRemoteRef,
            material: material,
            adAccount: adAccount,
            uid: uid,
            areas: areas,
          ),
          from: getDetailHourlyGrafikRemoteProvider,
          name: r'getDetailHourlyGrafikRemoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDetailHourlyGrafikRemoteHash,
          dependencies: GetDetailHourlyGrafikRemoteFamily._dependencies,
          allTransitiveDependencies:
              GetDetailHourlyGrafikRemoteFamily._allTransitiveDependencies,
          material: material,
          adAccount: adAccount,
          uid: uid,
          areas: areas,
        );

  GetDetailHourlyGrafikRemoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.material,
    required this.adAccount,
    required this.uid,
    required this.areas,
  }) : super.internal();

  final String? material;
  final String? adAccount;
  final int? uid;
  final List<String>? areas;

  @override
  Override overrideWith(
    FutureOr<List<DetailHourlyGrafikResponseRemote>> Function(
            GetDetailHourlyGrafikRemoteRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDetailHourlyGrafikRemoteProvider._internal(
        (ref) => create(ref as GetDetailHourlyGrafikRemoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        material: material,
        adAccount: adAccount,
        uid: uid,
        areas: areas,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<DetailHourlyGrafikResponseRemote>>
      createElement() {
    return _GetDetailHourlyGrafikRemoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDetailHourlyGrafikRemoteProvider &&
        other.material == material &&
        other.adAccount == adAccount &&
        other.uid == uid &&
        other.areas == areas;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, material.hashCode);
    hash = _SystemHash.combine(hash, adAccount.hashCode);
    hash = _SystemHash.combine(hash, uid.hashCode);
    hash = _SystemHash.combine(hash, areas.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetDetailHourlyGrafikRemoteRef
    on AutoDisposeFutureProviderRef<List<DetailHourlyGrafikResponseRemote>> {
  /// The parameter `material` of this provider.
  String? get material;

  /// The parameter `adAccount` of this provider.
  String? get adAccount;

  /// The parameter `uid` of this provider.
  int? get uid;

  /// The parameter `areas` of this provider.
  List<String>? get areas;
}

class _GetDetailHourlyGrafikRemoteProviderElement
    extends AutoDisposeFutureProviderElement<
        List<DetailHourlyGrafikResponseRemote>>
    with GetDetailHourlyGrafikRemoteRef {
  _GetDetailHourlyGrafikRemoteProviderElement(super.provider);

  @override
  String? get material =>
      (origin as GetDetailHourlyGrafikRemoteProvider).material;
  @override
  String? get adAccount =>
      (origin as GetDetailHourlyGrafikRemoteProvider).adAccount;
  @override
  int? get uid => (origin as GetDetailHourlyGrafikRemoteProvider).uid;
  @override
  List<String>? get areas =>
      (origin as GetDetailHourlyGrafikRemoteProvider).areas;
}

String _$getUnitBreakdownRemoteHash() =>
    r'9c69f59301da95b3bf23f05015849ba7e531a3e2';

/// See also [getUnitBreakdownRemote].
@ProviderFor(getUnitBreakdownRemote)
const getUnitBreakdownRemoteProvider = GetUnitBreakdownRemoteFamily();

/// See also [getUnitBreakdownRemote].
class GetUnitBreakdownRemoteFamily
    extends Family<AsyncValue<List<UnitBreakdownResponseRemote>>> {
  /// See also [getUnitBreakdownRemote].
  const GetUnitBreakdownRemoteFamily();

  /// See also [getUnitBreakdownRemote].
  GetUnitBreakdownRemoteProvider call({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) {
    return GetUnitBreakdownRemoteProvider(
      material: material,
      adAccount: adAccount,
      uid: uid,
      areas: areas,
    );
  }

  @override
  GetUnitBreakdownRemoteProvider getProviderOverride(
    covariant GetUnitBreakdownRemoteProvider provider,
  ) {
    return call(
      material: provider.material,
      adAccount: provider.adAccount,
      uid: provider.uid,
      areas: provider.areas,
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
  String? get name => r'getUnitBreakdownRemoteProvider';
}

/// See also [getUnitBreakdownRemote].
class GetUnitBreakdownRemoteProvider
    extends AutoDisposeFutureProvider<List<UnitBreakdownResponseRemote>> {
  /// See also [getUnitBreakdownRemote].
  GetUnitBreakdownRemoteProvider({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) : this._internal(
          (ref) => getUnitBreakdownRemote(
            ref as GetUnitBreakdownRemoteRef,
            material: material,
            adAccount: adAccount,
            uid: uid,
            areas: areas,
          ),
          from: getUnitBreakdownRemoteProvider,
          name: r'getUnitBreakdownRemoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUnitBreakdownRemoteHash,
          dependencies: GetUnitBreakdownRemoteFamily._dependencies,
          allTransitiveDependencies:
              GetUnitBreakdownRemoteFamily._allTransitiveDependencies,
          material: material,
          adAccount: adAccount,
          uid: uid,
          areas: areas,
        );

  GetUnitBreakdownRemoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.material,
    required this.adAccount,
    required this.uid,
    required this.areas,
  }) : super.internal();

  final String? material;
  final String? adAccount;
  final int? uid;
  final List<String>? areas;

  @override
  Override overrideWith(
    FutureOr<List<UnitBreakdownResponseRemote>> Function(
            GetUnitBreakdownRemoteRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUnitBreakdownRemoteProvider._internal(
        (ref) => create(ref as GetUnitBreakdownRemoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        material: material,
        adAccount: adAccount,
        uid: uid,
        areas: areas,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<UnitBreakdownResponseRemote>>
      createElement() {
    return _GetUnitBreakdownRemoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUnitBreakdownRemoteProvider &&
        other.material == material &&
        other.adAccount == adAccount &&
        other.uid == uid &&
        other.areas == areas;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, material.hashCode);
    hash = _SystemHash.combine(hash, adAccount.hashCode);
    hash = _SystemHash.combine(hash, uid.hashCode);
    hash = _SystemHash.combine(hash, areas.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUnitBreakdownRemoteRef
    on AutoDisposeFutureProviderRef<List<UnitBreakdownResponseRemote>> {
  /// The parameter `material` of this provider.
  String? get material;

  /// The parameter `adAccount` of this provider.
  String? get adAccount;

  /// The parameter `uid` of this provider.
  int? get uid;

  /// The parameter `areas` of this provider.
  List<String>? get areas;
}

class _GetUnitBreakdownRemoteProviderElement
    extends AutoDisposeFutureProviderElement<List<UnitBreakdownResponseRemote>>
    with GetUnitBreakdownRemoteRef {
  _GetUnitBreakdownRemoteProviderElement(super.provider);

  @override
  String? get material => (origin as GetUnitBreakdownRemoteProvider).material;
  @override
  String? get adAccount => (origin as GetUnitBreakdownRemoteProvider).adAccount;
  @override
  int? get uid => (origin as GetUnitBreakdownRemoteProvider).uid;
  @override
  List<String>? get areas => (origin as GetUnitBreakdownRemoteProvider).areas;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
