// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_past.repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMissionPastListHash() =>
    r'd4701f217616b4e4b5fe7a8b872ec30dbd125d2e';

/// See also [getMissionPastList].
@ProviderFor(getMissionPastList)
final getMissionPastListProvider =
    AutoDisposeFutureProvider<List<MissionPastResponseRemote>>.internal(
  getMissionPastList,
  name: r'getMissionPastListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getMissionPastListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetMissionPastListRef
    = AutoDisposeFutureProviderRef<List<MissionPastResponseRemote>>;
String _$getMissionDetailHash() => r'80fce9c781a5966a470678d940d17c95787818f3';

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

/// See also [getMissionDetail].
@ProviderFor(getMissionDetail)
const getMissionDetailProvider = GetMissionDetailFamily();

/// See also [getMissionDetail].
class GetMissionDetailFamily
    extends Family<AsyncValue<GamificationResponseRemote>> {
  /// See also [getMissionDetail].
  const GetMissionDetailFamily();

  /// See also [getMissionDetail].
  GetMissionDetailProvider call({
    required int employeeMissionId,
  }) {
    return GetMissionDetailProvider(
      employeeMissionId: employeeMissionId,
    );
  }

  @override
  GetMissionDetailProvider getProviderOverride(
    covariant GetMissionDetailProvider provider,
  ) {
    return call(
      employeeMissionId: provider.employeeMissionId,
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
  String? get name => r'getMissionDetailProvider';
}

/// See also [getMissionDetail].
class GetMissionDetailProvider
    extends AutoDisposeFutureProvider<GamificationResponseRemote> {
  /// See also [getMissionDetail].
  GetMissionDetailProvider({
    required int employeeMissionId,
  }) : this._internal(
          (ref) => getMissionDetail(
            ref as GetMissionDetailRef,
            employeeMissionId: employeeMissionId,
          ),
          from: getMissionDetailProvider,
          name: r'getMissionDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMissionDetailHash,
          dependencies: GetMissionDetailFamily._dependencies,
          allTransitiveDependencies:
              GetMissionDetailFamily._allTransitiveDependencies,
          employeeMissionId: employeeMissionId,
        );

  GetMissionDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.employeeMissionId,
  }) : super.internal();

  final int employeeMissionId;

  @override
  Override overrideWith(
    FutureOr<GamificationResponseRemote> Function(GetMissionDetailRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMissionDetailProvider._internal(
        (ref) => create(ref as GetMissionDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        employeeMissionId: employeeMissionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GamificationResponseRemote> createElement() {
    return _GetMissionDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMissionDetailProvider &&
        other.employeeMissionId == employeeMissionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, employeeMissionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetMissionDetailRef
    on AutoDisposeFutureProviderRef<GamificationResponseRemote> {
  /// The parameter `employeeMissionId` of this provider.
  int get employeeMissionId;
}

class _GetMissionDetailProviderElement
    extends AutoDisposeFutureProviderElement<GamificationResponseRemote>
    with GetMissionDetailRef {
  _GetMissionDetailProviderElement(super.provider);

  @override
  int get employeeMissionId =>
      (origin as GetMissionDetailProvider).employeeMissionId;
}

String _$putAnswerDetailHash() => r'4580cda48d0e313697fc9efdd47805d55f2d8885';

/// See also [putAnswerDetail].
@ProviderFor(putAnswerDetail)
const putAnswerDetailProvider = PutAnswerDetailFamily();

/// See also [putAnswerDetail].
class PutAnswerDetailFamily extends Family<AsyncValue<List<TaskDatumAnswer>>> {
  /// See also [putAnswerDetail].
  const PutAnswerDetailFamily();

  /// See also [putAnswerDetail].
  PutAnswerDetailProvider call({
    required int employeeMissionId,
    required GamificationResponseRemote gamificationResponseRemote,
  }) {
    return PutAnswerDetailProvider(
      employeeMissionId: employeeMissionId,
      gamificationResponseRemote: gamificationResponseRemote,
    );
  }

  @override
  PutAnswerDetailProvider getProviderOverride(
    covariant PutAnswerDetailProvider provider,
  ) {
    return call(
      employeeMissionId: provider.employeeMissionId,
      gamificationResponseRemote: provider.gamificationResponseRemote,
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
  String? get name => r'putAnswerDetailProvider';
}

/// See also [putAnswerDetail].
class PutAnswerDetailProvider
    extends AutoDisposeFutureProvider<List<TaskDatumAnswer>> {
  /// See also [putAnswerDetail].
  PutAnswerDetailProvider({
    required int employeeMissionId,
    required GamificationResponseRemote gamificationResponseRemote,
  }) : this._internal(
          (ref) => putAnswerDetail(
            ref as PutAnswerDetailRef,
            employeeMissionId: employeeMissionId,
            gamificationResponseRemote: gamificationResponseRemote,
          ),
          from: putAnswerDetailProvider,
          name: r'putAnswerDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$putAnswerDetailHash,
          dependencies: PutAnswerDetailFamily._dependencies,
          allTransitiveDependencies:
              PutAnswerDetailFamily._allTransitiveDependencies,
          employeeMissionId: employeeMissionId,
          gamificationResponseRemote: gamificationResponseRemote,
        );

  PutAnswerDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.employeeMissionId,
    required this.gamificationResponseRemote,
  }) : super.internal();

  final int employeeMissionId;
  final GamificationResponseRemote gamificationResponseRemote;

  @override
  Override overrideWith(
    FutureOr<List<TaskDatumAnswer>> Function(PutAnswerDetailRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PutAnswerDetailProvider._internal(
        (ref) => create(ref as PutAnswerDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        employeeMissionId: employeeMissionId,
        gamificationResponseRemote: gamificationResponseRemote,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<TaskDatumAnswer>> createElement() {
    return _PutAnswerDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PutAnswerDetailProvider &&
        other.employeeMissionId == employeeMissionId &&
        other.gamificationResponseRemote == gamificationResponseRemote;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, employeeMissionId.hashCode);
    hash = _SystemHash.combine(hash, gamificationResponseRemote.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PutAnswerDetailRef
    on AutoDisposeFutureProviderRef<List<TaskDatumAnswer>> {
  /// The parameter `employeeMissionId` of this provider.
  int get employeeMissionId;

  /// The parameter `gamificationResponseRemote` of this provider.
  GamificationResponseRemote get gamificationResponseRemote;
}

class _PutAnswerDetailProviderElement
    extends AutoDisposeFutureProviderElement<List<TaskDatumAnswer>>
    with PutAnswerDetailRef {
  _PutAnswerDetailProviderElement(super.provider);

  @override
  int get employeeMissionId =>
      (origin as PutAnswerDetailProvider).employeeMissionId;
  @override
  GamificationResponseRemote get gamificationResponseRemote =>
      (origin as PutAnswerDetailProvider).gamificationResponseRemote;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
