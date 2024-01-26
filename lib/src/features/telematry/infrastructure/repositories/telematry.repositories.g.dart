// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telematry.repositories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUserInfosRemoteHash() =>
    r'5701ed4934295debcb1e71727e61d1f65d5b277b';

/// See also [getUserInfosRemote].
@ProviderFor(getUserInfosRemote)
final getUserInfosRemoteProvider =
    AutoDisposeFutureProvider<UserInfosResponseRemote>.internal(
  getUserInfosRemote,
  name: r'getUserInfosRemoteProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getUserInfosRemoteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetUserInfosRemoteRef
    = AutoDisposeFutureProviderRef<UserInfosResponseRemote>;
String _$submitTelematryHash() => r'ba84e013824d05fec91d769298171230b797f426';

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

/// See also [submitTelematry].
@ProviderFor(submitTelematry)
const submitTelematryProvider = SubmitTelematryFamily();

/// See also [submitTelematry].
class SubmitTelematryFamily extends Family<AsyncValue<bool>> {
  /// See also [submitTelematry].
  const SubmitTelematryFamily();

  /// See also [submitTelematry].
  SubmitTelematryProvider call({
    required List<TelematryDataModel> telematryData,
  }) {
    return SubmitTelematryProvider(
      telematryData: telematryData,
    );
  }

  @override
  SubmitTelematryProvider getProviderOverride(
    covariant SubmitTelematryProvider provider,
  ) {
    return call(
      telematryData: provider.telematryData,
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
  String? get name => r'submitTelematryProvider';
}

/// See also [submitTelematry].
class SubmitTelematryProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [submitTelematry].
  SubmitTelematryProvider({
    required List<TelematryDataModel> telematryData,
  }) : this._internal(
          (ref) => submitTelematry(
            ref as SubmitTelematryRef,
            telematryData: telematryData,
          ),
          from: submitTelematryProvider,
          name: r'submitTelematryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$submitTelematryHash,
          dependencies: SubmitTelematryFamily._dependencies,
          allTransitiveDependencies:
              SubmitTelematryFamily._allTransitiveDependencies,
          telematryData: telematryData,
        );

  SubmitTelematryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.telematryData,
  }) : super.internal();

  final List<TelematryDataModel> telematryData;

  @override
  Override overrideWith(
    FutureOr<bool> Function(SubmitTelematryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SubmitTelematryProvider._internal(
        (ref) => create(ref as SubmitTelematryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        telematryData: telematryData,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _SubmitTelematryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitTelematryProvider &&
        other.telematryData == telematryData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, telematryData.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SubmitTelematryRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `telematryData` of this provider.
  List<TelematryDataModel> get telematryData;
}

class _SubmitTelematryProviderElement
    extends AutoDisposeFutureProviderElement<bool> with SubmitTelematryRef {
  _SubmitTelematryProviderElement(super.provider);

  @override
  List<TelematryDataModel> get telematryData =>
      (origin as SubmitTelematryProvider).telematryData;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
