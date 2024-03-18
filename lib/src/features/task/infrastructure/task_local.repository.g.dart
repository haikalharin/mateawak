// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_local.repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$putTaskAnswerLocalHash() =>
    r'd5acb41d44ea8e78d4bf2f9283753488ed15d7c4';

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

/// See also [putTaskAnswerLocal].
@ProviderFor(putTaskAnswerLocal)
const putTaskAnswerLocalProvider = PutTaskAnswerLocalFamily();

/// See also [putTaskAnswerLocal].
class PutTaskAnswerLocalFamily extends Family<AsyncValue<bool>> {
  /// See also [putTaskAnswerLocal].
  const PutTaskAnswerLocalFamily();

  /// See also [putTaskAnswerLocal].
  PutTaskAnswerLocalProvider call({
    required TaskDatumAnswerRequestRemote taskAnswer,
  }) {
    return PutTaskAnswerLocalProvider(
      taskAnswer: taskAnswer,
    );
  }

  @override
  PutTaskAnswerLocalProvider getProviderOverride(
    covariant PutTaskAnswerLocalProvider provider,
  ) {
    return call(
      taskAnswer: provider.taskAnswer,
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
  String? get name => r'putTaskAnswerLocalProvider';
}

/// See also [putTaskAnswerLocal].
class PutTaskAnswerLocalProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [putTaskAnswerLocal].
  PutTaskAnswerLocalProvider({
    required TaskDatumAnswerRequestRemote taskAnswer,
  }) : this._internal(
          (ref) => putTaskAnswerLocal(
            ref as PutTaskAnswerLocalRef,
            taskAnswer: taskAnswer,
          ),
          from: putTaskAnswerLocalProvider,
          name: r'putTaskAnswerLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$putTaskAnswerLocalHash,
          dependencies: PutTaskAnswerLocalFamily._dependencies,
          allTransitiveDependencies:
              PutTaskAnswerLocalFamily._allTransitiveDependencies,
          taskAnswer: taskAnswer,
        );

  PutTaskAnswerLocalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskAnswer,
  }) : super.internal();

  final TaskDatumAnswerRequestRemote taskAnswer;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PutTaskAnswerLocalRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PutTaskAnswerLocalProvider._internal(
        (ref) => create(ref as PutTaskAnswerLocalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskAnswer: taskAnswer,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PutTaskAnswerLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PutTaskAnswerLocalProvider &&
        other.taskAnswer == taskAnswer;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskAnswer.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PutTaskAnswerLocalRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `taskAnswer` of this provider.
  TaskDatumAnswerRequestRemote get taskAnswer;
}

class _PutTaskAnswerLocalProviderElement
    extends AutoDisposeFutureProviderElement<bool> with PutTaskAnswerLocalRef {
  _PutTaskAnswerLocalProviderElement(super.provider);

  @override
  TaskDatumAnswerRequestRemote get taskAnswer =>
      (origin as PutTaskAnswerLocalProvider).taskAnswer;
}

String _$getAnswerLocalHash() => r'ea7a703af7e1c6e5dc76d1379bbee47251f84b49';

/// See also [getAnswerLocal].
@ProviderFor(getAnswerLocal)
final getAnswerLocalProvider =
    AutoDisposeFutureProvider<List<TaskDatumAnswerRequestRemote>>.internal(
  getAnswerLocal,
  name: r'getAnswerLocalProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAnswerLocalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAnswerLocalRef
    = AutoDisposeFutureProviderRef<List<TaskDatumAnswerRequestRemote>>;
String _$deleteAnswerLocalHash() => r'2f93977f69a7bd37730a074802c1bc4efa0a9ac2';

/// See also [deleteAnswerLocal].
@ProviderFor(deleteAnswerLocal)
const deleteAnswerLocalProvider = DeleteAnswerLocalFamily();

/// See also [deleteAnswerLocal].
class DeleteAnswerLocalFamily extends Family<AsyncValue<void>> {
  /// See also [deleteAnswerLocal].
  const DeleteAnswerLocalFamily();

  /// See also [deleteAnswerLocal].
  DeleteAnswerLocalProvider call({
    required List<TaskDatumAnswerRequestRemote> listTaskAnswer,
  }) {
    return DeleteAnswerLocalProvider(
      listTaskAnswer: listTaskAnswer,
    );
  }

  @override
  DeleteAnswerLocalProvider getProviderOverride(
    covariant DeleteAnswerLocalProvider provider,
  ) {
    return call(
      listTaskAnswer: provider.listTaskAnswer,
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
  String? get name => r'deleteAnswerLocalProvider';
}

/// See also [deleteAnswerLocal].
class DeleteAnswerLocalProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteAnswerLocal].
  DeleteAnswerLocalProvider({
    required List<TaskDatumAnswerRequestRemote> listTaskAnswer,
  }) : this._internal(
          (ref) => deleteAnswerLocal(
            ref as DeleteAnswerLocalRef,
            listTaskAnswer: listTaskAnswer,
          ),
          from: deleteAnswerLocalProvider,
          name: r'deleteAnswerLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteAnswerLocalHash,
          dependencies: DeleteAnswerLocalFamily._dependencies,
          allTransitiveDependencies:
              DeleteAnswerLocalFamily._allTransitiveDependencies,
          listTaskAnswer: listTaskAnswer,
        );

  DeleteAnswerLocalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.listTaskAnswer,
  }) : super.internal();

  final List<TaskDatumAnswerRequestRemote> listTaskAnswer;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteAnswerLocalRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteAnswerLocalProvider._internal(
        (ref) => create(ref as DeleteAnswerLocalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        listTaskAnswer: listTaskAnswer,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteAnswerLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteAnswerLocalProvider &&
        other.listTaskAnswer == listTaskAnswer;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, listTaskAnswer.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteAnswerLocalRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `listTaskAnswer` of this provider.
  List<TaskDatumAnswerRequestRemote> get listTaskAnswer;
}

class _DeleteAnswerLocalProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteAnswerLocalRef {
  _DeleteAnswerLocalProviderElement(super.provider);

  @override
  List<TaskDatumAnswerRequestRemote> get listTaskAnswer =>
      (origin as DeleteAnswerLocalProvider).listTaskAnswer;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
