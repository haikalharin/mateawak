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

String _$getTaskAnswerFinalLocalHash() =>
    r'ab447036c5a2364bb7b748f3843206b003409f0d';

/// See also [getTaskAnswerFinalLocal].
@ProviderFor(getTaskAnswerFinalLocal)
const getTaskAnswerFinalLocalProvider = GetTaskAnswerFinalLocalFamily();

/// See also [getTaskAnswerFinalLocal].
class GetTaskAnswerFinalLocalFamily
    extends Family<AsyncValue<List<TaskDatumAnswerRequestRemote>>> {
  /// See also [getTaskAnswerFinalLocal].
  const GetTaskAnswerFinalLocalFamily();

  /// See also [getTaskAnswerFinalLocal].
  GetTaskAnswerFinalLocalProvider call({
    required int employeeMissionId,
  }) {
    return GetTaskAnswerFinalLocalProvider(
      employeeMissionId: employeeMissionId,
    );
  }

  @override
  GetTaskAnswerFinalLocalProvider getProviderOverride(
    covariant GetTaskAnswerFinalLocalProvider provider,
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
  String? get name => r'getTaskAnswerFinalLocalProvider';
}

/// See also [getTaskAnswerFinalLocal].
class GetTaskAnswerFinalLocalProvider
    extends AutoDisposeFutureProvider<List<TaskDatumAnswerRequestRemote>> {
  /// See also [getTaskAnswerFinalLocal].
  GetTaskAnswerFinalLocalProvider({
    required int employeeMissionId,
  }) : this._internal(
          (ref) => getTaskAnswerFinalLocal(
            ref as GetTaskAnswerFinalLocalRef,
            employeeMissionId: employeeMissionId,
          ),
          from: getTaskAnswerFinalLocalProvider,
          name: r'getTaskAnswerFinalLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTaskAnswerFinalLocalHash,
          dependencies: GetTaskAnswerFinalLocalFamily._dependencies,
          allTransitiveDependencies:
              GetTaskAnswerFinalLocalFamily._allTransitiveDependencies,
          employeeMissionId: employeeMissionId,
        );

  GetTaskAnswerFinalLocalProvider._internal(
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
    FutureOr<List<TaskDatumAnswerRequestRemote>> Function(
            GetTaskAnswerFinalLocalRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTaskAnswerFinalLocalProvider._internal(
        (ref) => create(ref as GetTaskAnswerFinalLocalRef),
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
  AutoDisposeFutureProviderElement<List<TaskDatumAnswerRequestRemote>>
      createElement() {
    return _GetTaskAnswerFinalLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTaskAnswerFinalLocalProvider &&
        other.employeeMissionId == employeeMissionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, employeeMissionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetTaskAnswerFinalLocalRef
    on AutoDisposeFutureProviderRef<List<TaskDatumAnswerRequestRemote>> {
  /// The parameter `employeeMissionId` of this provider.
  int get employeeMissionId;
}

class _GetTaskAnswerFinalLocalProviderElement
    extends AutoDisposeFutureProviderElement<List<TaskDatumAnswerRequestRemote>>
    with GetTaskAnswerFinalLocalRef {
  _GetTaskAnswerFinalLocalProviderElement(super.provider);

  @override
  int get employeeMissionId =>
      (origin as GetTaskAnswerFinalLocalProvider).employeeMissionId;
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
String _$deleteAnswerLocalHash() => r'a749896ea449a0694cb6c90ddbfdeada5a907c74';

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

String _$putAnswerFinalLocalHash() =>
    r'0b2c58cc03557c1dce78b03504994a1cceaf5ad4';

/// See also [putAnswerFinalLocal].
@ProviderFor(putAnswerFinalLocal)
const putAnswerFinalLocalProvider = PutAnswerFinalLocalFamily();

/// See also [putAnswerFinalLocal].
class PutAnswerFinalLocalFamily extends Family<AsyncValue<bool>> {
  /// See also [putAnswerFinalLocal].
  const PutAnswerFinalLocalFamily();

  /// See also [putAnswerFinalLocal].
  PutAnswerFinalLocalProvider call({
    required AnswerRequestRemote answerRequestRemote,
  }) {
    return PutAnswerFinalLocalProvider(
      answerRequestRemote: answerRequestRemote,
    );
  }

  @override
  PutAnswerFinalLocalProvider getProviderOverride(
    covariant PutAnswerFinalLocalProvider provider,
  ) {
    return call(
      answerRequestRemote: provider.answerRequestRemote,
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
  String? get name => r'putAnswerFinalLocalProvider';
}

/// See also [putAnswerFinalLocal].
class PutAnswerFinalLocalProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [putAnswerFinalLocal].
  PutAnswerFinalLocalProvider({
    required AnswerRequestRemote answerRequestRemote,
  }) : this._internal(
          (ref) => putAnswerFinalLocal(
            ref as PutAnswerFinalLocalRef,
            answerRequestRemote: answerRequestRemote,
          ),
          from: putAnswerFinalLocalProvider,
          name: r'putAnswerFinalLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$putAnswerFinalLocalHash,
          dependencies: PutAnswerFinalLocalFamily._dependencies,
          allTransitiveDependencies:
              PutAnswerFinalLocalFamily._allTransitiveDependencies,
          answerRequestRemote: answerRequestRemote,
        );

  PutAnswerFinalLocalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.answerRequestRemote,
  }) : super.internal();

  final AnswerRequestRemote answerRequestRemote;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PutAnswerFinalLocalRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PutAnswerFinalLocalProvider._internal(
        (ref) => create(ref as PutAnswerFinalLocalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        answerRequestRemote: answerRequestRemote,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PutAnswerFinalLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PutAnswerFinalLocalProvider &&
        other.answerRequestRemote == answerRequestRemote;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, answerRequestRemote.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PutAnswerFinalLocalRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `answerRequestRemote` of this provider.
  AnswerRequestRemote get answerRequestRemote;
}

class _PutAnswerFinalLocalProviderElement
    extends AutoDisposeFutureProviderElement<bool> with PutAnswerFinalLocalRef {
  _PutAnswerFinalLocalProviderElement(super.provider);

  @override
  AnswerRequestRemote get answerRequestRemote =>
      (origin as PutAnswerFinalLocalProvider).answerRequestRemote;
}

String _$getAnswerFinalLocalHash() =>
    r'aa32bae2aa64fada3d25a89e4388bf6c0e12c933';

/// See also [getAnswerFinalLocal].
@ProviderFor(getAnswerFinalLocal)
final getAnswerFinalLocalProvider =
    AutoDisposeFutureProvider<List<TaskDatumAnswer>>.internal(
  getAnswerFinalLocal,
  name: r'getAnswerFinalLocalProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAnswerFinalLocalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAnswerFinalLocalRef
    = AutoDisposeFutureProviderRef<List<TaskDatumAnswer>>;
String _$changeStatusTaskLocalHash() =>
    r'7edd7d496a6d3acb1fe698dc0c690ed3301dce29';

/// See also [changeStatusTaskLocal].
@ProviderFor(changeStatusTaskLocal)
const changeStatusTaskLocalProvider = ChangeStatusTaskLocalFamily();

/// See also [changeStatusTaskLocal].
class ChangeStatusTaskLocalFamily extends Family<AsyncValue<bool>> {
  /// See also [changeStatusTaskLocal].
  const ChangeStatusTaskLocalFamily();

  /// See also [changeStatusTaskLocal].
  ChangeStatusTaskLocalProvider call({
    required GamificationResponseRemote task,
  }) {
    return ChangeStatusTaskLocalProvider(
      task: task,
    );
  }

  @override
  ChangeStatusTaskLocalProvider getProviderOverride(
    covariant ChangeStatusTaskLocalProvider provider,
  ) {
    return call(
      task: provider.task,
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
  String? get name => r'changeStatusTaskLocalProvider';
}

/// See also [changeStatusTaskLocal].
class ChangeStatusTaskLocalProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [changeStatusTaskLocal].
  ChangeStatusTaskLocalProvider({
    required GamificationResponseRemote task,
  }) : this._internal(
          (ref) => changeStatusTaskLocal(
            ref as ChangeStatusTaskLocalRef,
            task: task,
          ),
          from: changeStatusTaskLocalProvider,
          name: r'changeStatusTaskLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changeStatusTaskLocalHash,
          dependencies: ChangeStatusTaskLocalFamily._dependencies,
          allTransitiveDependencies:
              ChangeStatusTaskLocalFamily._allTransitiveDependencies,
          task: task,
        );

  ChangeStatusTaskLocalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.task,
  }) : super.internal();

  final GamificationResponseRemote task;

  @override
  Override overrideWith(
    FutureOr<bool> Function(ChangeStatusTaskLocalRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChangeStatusTaskLocalProvider._internal(
        (ref) => create(ref as ChangeStatusTaskLocalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        task: task,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _ChangeStatusTaskLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChangeStatusTaskLocalProvider && other.task == task;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, task.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChangeStatusTaskLocalRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `task` of this provider.
  GamificationResponseRemote get task;
}

class _ChangeStatusTaskLocalProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with ChangeStatusTaskLocalRef {
  _ChangeStatusTaskLocalProviderElement(super.provider);

  @override
  GamificationResponseRemote get task =>
      (origin as ChangeStatusTaskLocalProvider).task;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
