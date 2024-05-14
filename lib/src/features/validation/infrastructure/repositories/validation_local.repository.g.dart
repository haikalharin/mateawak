// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_local.repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getValidationRemoteHash() =>
    r'aa9da80893f4ef146c70e183fb6f9bf8f46948c1';

/// See also [getValidationRemote].
@ProviderFor(getValidationRemote)
final getValidationRemoteProvider =
    AutoDisposeFutureProvider<List<ValidationResponseRemote>>.internal(
  getValidationRemote,
  name: r'getValidationRemoteProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getValidationRemoteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetValidationRemoteRef
    = AutoDisposeFutureProviderRef<List<ValidationResponseRemote>>;
String _$getValidationLocalHash() =>
    r'b3897187d0ae0a7254de8f4ef90233062dfa8276';

/// See also [getValidationLocal].
@ProviderFor(getValidationLocal)
final getValidationLocalProvider =
    AutoDisposeFutureProvider<List<ValidationResponseRemote>>.internal(
  getValidationLocal,
  name: r'getValidationLocalProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getValidationLocalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetValidationLocalRef
    = AutoDisposeFutureProviderRef<List<ValidationResponseRemote>>;
String _$submitValidationHash() => r'9b0c9870267914e41d1f44c61d70950f9127628f';

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

/// See also [submitValidation].
@ProviderFor(submitValidation)
const submitValidationProvider = SubmitValidationFamily();

/// See also [submitValidation].
class SubmitValidationFamily
    extends Family<AsyncValue<ResultSubmissionRequestRemote>> {
  /// See also [submitValidation].
  const SubmitValidationFamily();

  /// See also [submitValidation].
  SubmitValidationProvider call({
    required ValidateRequestRemote validationRequestRemote,
  }) {
    return SubmitValidationProvider(
      validationRequestRemote: validationRequestRemote,
    );
  }

  @override
  SubmitValidationProvider getProviderOverride(
    covariant SubmitValidationProvider provider,
  ) {
    return call(
      validationRequestRemote: provider.validationRequestRemote,
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
  String? get name => r'submitValidationProvider';
}

/// See also [submitValidation].
class SubmitValidationProvider
    extends AutoDisposeFutureProvider<ResultSubmissionRequestRemote> {
  /// See also [submitValidation].
  SubmitValidationProvider({
    required ValidateRequestRemote validationRequestRemote,
  }) : this._internal(
          (ref) => submitValidation(
            ref as SubmitValidationRef,
            validationRequestRemote: validationRequestRemote,
          ),
          from: submitValidationProvider,
          name: r'submitValidationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$submitValidationHash,
          dependencies: SubmitValidationFamily._dependencies,
          allTransitiveDependencies:
              SubmitValidationFamily._allTransitiveDependencies,
          validationRequestRemote: validationRequestRemote,
        );

  SubmitValidationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.validationRequestRemote,
  }) : super.internal();

  final ValidateRequestRemote validationRequestRemote;

  @override
  Override overrideWith(
    FutureOr<ResultSubmissionRequestRemote> Function(
            SubmitValidationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SubmitValidationProvider._internal(
        (ref) => create(ref as SubmitValidationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        validationRequestRemote: validationRequestRemote,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ResultSubmissionRequestRemote>
      createElement() {
    return _SubmitValidationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitValidationProvider &&
        other.validationRequestRemote == validationRequestRemote;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, validationRequestRemote.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SubmitValidationRef
    on AutoDisposeFutureProviderRef<ResultSubmissionRequestRemote> {
  /// The parameter `validationRequestRemote` of this provider.
  ValidateRequestRemote get validationRequestRemote;
}

class _SubmitValidationProviderElement
    extends AutoDisposeFutureProviderElement<ResultSubmissionRequestRemote>
    with SubmitValidationRef {
  _SubmitValidationProviderElement(super.provider);

  @override
  ValidateRequestRemote get validationRequestRemote =>
      (origin as SubmitValidationProvider).validationRequestRemote;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
