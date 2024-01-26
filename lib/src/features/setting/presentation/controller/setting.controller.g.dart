// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isPinnedTabConflictHash() =>
    r'b225a3e8e3afe2b813958dea6885b9052320232a';

/// See also [isPinnedTabConflict].
@ProviderFor(isPinnedTabConflict)
final isPinnedTabConflictProvider = AutoDisposeFutureProvider<bool>.internal(
  isPinnedTabConflict,
  name: r'isPinnedTabConflictProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isPinnedTabConflictHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsPinnedTabConflictRef = AutoDisposeFutureProviderRef<bool>;
String _$getSettingLatestValueHash() =>
    r'604d88d4b2363b83d799055536518e4dfb52cfa8';

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

/// See also [getSettingLatestValue].
@ProviderFor(getSettingLatestValue)
const getSettingLatestValueProvider = GetSettingLatestValueFamily();

/// See also [getSettingLatestValue].
class GetSettingLatestValueFamily extends Family<AsyncValue<bool>> {
  /// See also [getSettingLatestValue].
  const GetSettingLatestValueFamily();

  /// See also [getSettingLatestValue].
  GetSettingLatestValueProvider call(
    SettingModeEtamkawa settingMode,
  ) {
    return GetSettingLatestValueProvider(
      settingMode,
    );
  }

  @override
  GetSettingLatestValueProvider getProviderOverride(
    covariant GetSettingLatestValueProvider provider,
  ) {
    return call(
      provider.settingMode,
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
  String? get name => r'getSettingLatestValueProvider';
}

/// See also [getSettingLatestValue].
class GetSettingLatestValueProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [getSettingLatestValue].
  GetSettingLatestValueProvider(
    SettingModeEtamkawa settingMode,
  ) : this._internal(
          (ref) => getSettingLatestValue(
            ref as GetSettingLatestValueRef,
            settingMode,
          ),
          from: getSettingLatestValueProvider,
          name: r'getSettingLatestValueProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSettingLatestValueHash,
          dependencies: GetSettingLatestValueFamily._dependencies,
          allTransitiveDependencies:
              GetSettingLatestValueFamily._allTransitiveDependencies,
          settingMode: settingMode,
        );

  GetSettingLatestValueProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.settingMode,
  }) : super.internal();

  final SettingModeEtamkawa settingMode;

  @override
  Override overrideWith(
    FutureOr<bool> Function(GetSettingLatestValueRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSettingLatestValueProvider._internal(
        (ref) => create(ref as GetSettingLatestValueRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        settingMode: settingMode,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _GetSettingLatestValueProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSettingLatestValueProvider &&
        other.settingMode == settingMode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, settingMode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSettingLatestValueRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `settingMode` of this provider.
  SettingModeEtamkawa get settingMode;
}

class _GetSettingLatestValueProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with GetSettingLatestValueRef {
  _GetSettingLatestValueProviderElement(super.provider);

  @override
  SettingModeEtamkawa get settingMode =>
      (origin as GetSettingLatestValueProvider).settingMode;
}

String _$getActiveSwitchersHash() =>
    r'5bc95749f9214528e52d93ac93536b3a5cfdc46f';

/// See also [getActiveSwitchers].
@ProviderFor(getActiveSwitchers)
const getActiveSwitchersProvider = GetActiveSwitchersFamily();

/// See also [getActiveSwitchers].
class GetActiveSwitchersFamily extends Family<AsyncValue<List<String>>> {
  /// See also [getActiveSwitchers].
  const GetActiveSwitchersFamily();

  /// See also [getActiveSwitchers].
  GetActiveSwitchersProvider call(
    SwitcherModeEtamkawa switcherMode,
  ) {
    return GetActiveSwitchersProvider(
      switcherMode,
    );
  }

  @override
  GetActiveSwitchersProvider getProviderOverride(
    covariant GetActiveSwitchersProvider provider,
  ) {
    return call(
      provider.switcherMode,
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
  String? get name => r'getActiveSwitchersProvider';
}

/// See also [getActiveSwitchers].
class GetActiveSwitchersProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// See also [getActiveSwitchers].
  GetActiveSwitchersProvider(
    SwitcherModeEtamkawa switcherMode,
  ) : this._internal(
          (ref) => getActiveSwitchers(
            ref as GetActiveSwitchersRef,
            switcherMode,
          ),
          from: getActiveSwitchersProvider,
          name: r'getActiveSwitchersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getActiveSwitchersHash,
          dependencies: GetActiveSwitchersFamily._dependencies,
          allTransitiveDependencies:
              GetActiveSwitchersFamily._allTransitiveDependencies,
          switcherMode: switcherMode,
        );

  GetActiveSwitchersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.switcherMode,
  }) : super.internal();

  final SwitcherModeEtamkawa switcherMode;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(GetActiveSwitchersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetActiveSwitchersProvider._internal(
        (ref) => create(ref as GetActiveSwitchersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        switcherMode: switcherMode,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _GetActiveSwitchersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetActiveSwitchersProvider &&
        other.switcherMode == switcherMode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, switcherMode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetActiveSwitchersRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `switcherMode` of this provider.
  SwitcherModeEtamkawa get switcherMode;
}

class _GetActiveSwitchersProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with GetActiveSwitchersRef {
  _GetActiveSwitchersProviderElement(super.provider);

  @override
  SwitcherModeEtamkawa get switcherMode =>
      (origin as GetActiveSwitchersProvider).switcherMode;
}

String _$settingControllerHash() => r'b332201e656d25d8c26cfa868cf17147ec3fbfce';

/// See also [SettingController].
@ProviderFor(SettingController)
final settingControllerProvider =
    AutoDisposeAsyncNotifierProvider<SettingController, void>.internal(
  SettingController.new,
  name: r'settingControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$settingControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SettingController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
