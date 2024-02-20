// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview.controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getImageHash() => r'948827fa69b615d6d5a29a851be4e982942abba3';

/// See also [getImage].
@ProviderFor(getImage)
final getImageProvider =
    AutoDisposeFutureProvider<DownloadAttachmentNewsRequestRemote?>.internal(
  getImage,
  name: r'getImageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getImageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetImageRef
    = AutoDisposeFutureProviderRef<DownloadAttachmentNewsRequestRemote?>;
String _$getAchievementProduksiHash() =>
    r'f94a9a123d2a01fc5bc1a0bce8b1a2f20569b8e8';

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

/// See also [getAchievementProduksi].
@ProviderFor(getAchievementProduksi)
const getAchievementProduksiProvider = GetAchievementProduksiFamily();

/// See also [getAchievementProduksi].
class GetAchievementProduksiFamily
    extends Family<AsyncValue<AchievementProduksiResponseRemote?>> {
  /// See also [getAchievementProduksi].
  const GetAchievementProduksiFamily();

  /// See also [getAchievementProduksi].
  GetAchievementProduksiProvider call({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) {
    return GetAchievementProduksiProvider(
      material: material,
      adAccount: adAccount,
      uid: uid,
      areas: areas,
    );
  }

  @override
  GetAchievementProduksiProvider getProviderOverride(
    covariant GetAchievementProduksiProvider provider,
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
  String? get name => r'getAchievementProduksiProvider';
}

/// See also [getAchievementProduksi].
class GetAchievementProduksiProvider
    extends AutoDisposeFutureProvider<AchievementProduksiResponseRemote?> {
  /// See also [getAchievementProduksi].
  GetAchievementProduksiProvider({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) : this._internal(
          (ref) => getAchievementProduksi(
            ref as GetAchievementProduksiRef,
            material: material,
            adAccount: adAccount,
            uid: uid,
            areas: areas,
          ),
          from: getAchievementProduksiProvider,
          name: r'getAchievementProduksiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAchievementProduksiHash,
          dependencies: GetAchievementProduksiFamily._dependencies,
          allTransitiveDependencies:
              GetAchievementProduksiFamily._allTransitiveDependencies,
          material: material,
          adAccount: adAccount,
          uid: uid,
          areas: areas,
        );

  GetAchievementProduksiProvider._internal(
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
    FutureOr<AchievementProduksiResponseRemote?> Function(
            GetAchievementProduksiRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAchievementProduksiProvider._internal(
        (ref) => create(ref as GetAchievementProduksiRef),
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
  AutoDisposeFutureProviderElement<AchievementProduksiResponseRemote?>
      createElement() {
    return _GetAchievementProduksiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAchievementProduksiProvider &&
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

mixin GetAchievementProduksiRef
    on AutoDisposeFutureProviderRef<AchievementProduksiResponseRemote?> {
  /// The parameter `material` of this provider.
  String? get material;

  /// The parameter `adAccount` of this provider.
  String? get adAccount;

  /// The parameter `uid` of this provider.
  int? get uid;

  /// The parameter `areas` of this provider.
  List<String>? get areas;
}

class _GetAchievementProduksiProviderElement
    extends AutoDisposeFutureProviderElement<AchievementProduksiResponseRemote?>
    with GetAchievementProduksiRef {
  _GetAchievementProduksiProviderElement(super.provider);

  @override
  String? get material => (origin as GetAchievementProduksiProvider).material;
  @override
  String? get adAccount => (origin as GetAchievementProduksiProvider).adAccount;
  @override
  int? get uid => (origin as GetAchievementProduksiProvider).uid;
  @override
  List<String>? get areas => (origin as GetAchievementProduksiProvider).areas;
}

String _$getDetailHourlyGrafikHash() =>
    r'09852f567a299010633ad74b5c4b1d9041f4d2f5';

/// See also [getDetailHourlyGrafik].
@ProviderFor(getDetailHourlyGrafik)
const getDetailHourlyGrafikProvider = GetDetailHourlyGrafikFamily();

/// See also [getDetailHourlyGrafik].
class GetDetailHourlyGrafikFamily
    extends Family<AsyncValue<List<DetailHourlyGrafikResponseRemote>>> {
  /// See also [getDetailHourlyGrafik].
  const GetDetailHourlyGrafikFamily();

  /// See also [getDetailHourlyGrafik].
  GetDetailHourlyGrafikProvider call({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) {
    return GetDetailHourlyGrafikProvider(
      material: material,
      adAccount: adAccount,
      uid: uid,
      areas: areas,
    );
  }

  @override
  GetDetailHourlyGrafikProvider getProviderOverride(
    covariant GetDetailHourlyGrafikProvider provider,
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
  String? get name => r'getDetailHourlyGrafikProvider';
}

/// See also [getDetailHourlyGrafik].
class GetDetailHourlyGrafikProvider
    extends AutoDisposeFutureProvider<List<DetailHourlyGrafikResponseRemote>> {
  /// See also [getDetailHourlyGrafik].
  GetDetailHourlyGrafikProvider({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) : this._internal(
          (ref) => getDetailHourlyGrafik(
            ref as GetDetailHourlyGrafikRef,
            material: material,
            adAccount: adAccount,
            uid: uid,
            areas: areas,
          ),
          from: getDetailHourlyGrafikProvider,
          name: r'getDetailHourlyGrafikProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDetailHourlyGrafikHash,
          dependencies: GetDetailHourlyGrafikFamily._dependencies,
          allTransitiveDependencies:
              GetDetailHourlyGrafikFamily._allTransitiveDependencies,
          material: material,
          adAccount: adAccount,
          uid: uid,
          areas: areas,
        );

  GetDetailHourlyGrafikProvider._internal(
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
            GetDetailHourlyGrafikRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDetailHourlyGrafikProvider._internal(
        (ref) => create(ref as GetDetailHourlyGrafikRef),
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
    return _GetDetailHourlyGrafikProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDetailHourlyGrafikProvider &&
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

mixin GetDetailHourlyGrafikRef
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

class _GetDetailHourlyGrafikProviderElement
    extends AutoDisposeFutureProviderElement<
        List<DetailHourlyGrafikResponseRemote>> with GetDetailHourlyGrafikRef {
  _GetDetailHourlyGrafikProviderElement(super.provider);

  @override
  String? get material => (origin as GetDetailHourlyGrafikProvider).material;
  @override
  String? get adAccount => (origin as GetDetailHourlyGrafikProvider).adAccount;
  @override
  int? get uid => (origin as GetDetailHourlyGrafikProvider).uid;
  @override
  List<String>? get areas => (origin as GetDetailHourlyGrafikProvider).areas;
}

String _$getUnitBreakdownHash() => r'30f74807fae7133d3ab7e65c16c63174e53a8b47';

/// See also [getUnitBreakdown].
@ProviderFor(getUnitBreakdown)
const getUnitBreakdownProvider = GetUnitBreakdownFamily();

/// See also [getUnitBreakdown].
class GetUnitBreakdownFamily
    extends Family<AsyncValue<List<UnitBreakdownResponseRemote>>> {
  /// See also [getUnitBreakdown].
  const GetUnitBreakdownFamily();

  /// See also [getUnitBreakdown].
  GetUnitBreakdownProvider call({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) {
    return GetUnitBreakdownProvider(
      material: material,
      adAccount: adAccount,
      uid: uid,
      areas: areas,
    );
  }

  @override
  GetUnitBreakdownProvider getProviderOverride(
    covariant GetUnitBreakdownProvider provider,
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
  String? get name => r'getUnitBreakdownProvider';
}

/// See also [getUnitBreakdown].
class GetUnitBreakdownProvider
    extends AutoDisposeFutureProvider<List<UnitBreakdownResponseRemote>> {
  /// See also [getUnitBreakdown].
  GetUnitBreakdownProvider({
    required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas,
  }) : this._internal(
          (ref) => getUnitBreakdown(
            ref as GetUnitBreakdownRef,
            material: material,
            adAccount: adAccount,
            uid: uid,
            areas: areas,
          ),
          from: getUnitBreakdownProvider,
          name: r'getUnitBreakdownProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUnitBreakdownHash,
          dependencies: GetUnitBreakdownFamily._dependencies,
          allTransitiveDependencies:
              GetUnitBreakdownFamily._allTransitiveDependencies,
          material: material,
          adAccount: adAccount,
          uid: uid,
          areas: areas,
        );

  GetUnitBreakdownProvider._internal(
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
            GetUnitBreakdownRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUnitBreakdownProvider._internal(
        (ref) => create(ref as GetUnitBreakdownRef),
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
    return _GetUnitBreakdownProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUnitBreakdownProvider &&
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

mixin GetUnitBreakdownRef
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

class _GetUnitBreakdownProviderElement
    extends AutoDisposeFutureProviderElement<List<UnitBreakdownResponseRemote>>
    with GetUnitBreakdownRef {
  _GetUnitBreakdownProviderElement(super.provider);

  @override
  String? get material => (origin as GetUnitBreakdownProvider).material;
  @override
  String? get adAccount => (origin as GetUnitBreakdownProvider).adAccount;
  @override
  int? get uid => (origin as GetUnitBreakdownProvider).uid;
  @override
  List<String>? get areas => (origin as GetUnitBreakdownProvider).areas;
}

String _$isDayShiftHash() => r'4f9272fcef88e44f28bfa9f60c9d46464163d0ca';

/// See also [isDayShift].
@ProviderFor(isDayShift)
final isDayShiftProvider = AutoDisposeFutureProvider<bool>.internal(
  isDayShift,
  name: r'isDayShiftProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isDayShiftHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsDayShiftRef = AutoDisposeFutureProviderRef<bool>;
String _$overviewControllerHash() =>
    r'59658c0d562035235589642eb4ed1194440e8ab5';

/// See also [OverviewController].
@ProviderFor(OverviewController)
final overviewControllerProvider =
    AutoDisposeAsyncNotifierProvider<OverviewController, void>.internal(
  OverviewController.new,
  name: r'overviewControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$overviewControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OverviewController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
