// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_local.repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getNotificationListLocalHash() =>
    r'8f14d0c63b89d626a348bfaee1e2d40dcdbddccf';

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

/// See also [getNotificationListLocal].
@ProviderFor(getNotificationListLocal)
const getNotificationListLocalProvider = GetNotificationListLocalFamily();

/// See also [getNotificationListLocal].
class GetNotificationListLocalFamily
    extends Family<AsyncValue<List<NotificationResponseRemote>?>> {
  /// See also [getNotificationListLocal].
  const GetNotificationListLocalFamily();

  /// See also [getNotificationListLocal].
  GetNotificationListLocalProvider call({
    required String? notifType,
    required int? pageNo,
    required int? pageSize,
    required String? category,
    required String? search,
  }) {
    return GetNotificationListLocalProvider(
      notifType: notifType,
      pageNo: pageNo,
      pageSize: pageSize,
      category: category,
      search: search,
    );
  }

  @override
  GetNotificationListLocalProvider getProviderOverride(
    covariant GetNotificationListLocalProvider provider,
  ) {
    return call(
      notifType: provider.notifType,
      pageNo: provider.pageNo,
      pageSize: provider.pageSize,
      category: provider.category,
      search: provider.search,
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
  String? get name => r'getNotificationListLocalProvider';
}

/// See also [getNotificationListLocal].
class GetNotificationListLocalProvider
    extends AutoDisposeFutureProvider<List<NotificationResponseRemote>?> {
  /// See also [getNotificationListLocal].
  GetNotificationListLocalProvider({
    required String? notifType,
    required int? pageNo,
    required int? pageSize,
    required String? category,
    required String? search,
  }) : this._internal(
          (ref) => getNotificationListLocal(
            ref as GetNotificationListLocalRef,
            notifType: notifType,
            pageNo: pageNo,
            pageSize: pageSize,
            category: category,
            search: search,
          ),
          from: getNotificationListLocalProvider,
          name: r'getNotificationListLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNotificationListLocalHash,
          dependencies: GetNotificationListLocalFamily._dependencies,
          allTransitiveDependencies:
              GetNotificationListLocalFamily._allTransitiveDependencies,
          notifType: notifType,
          pageNo: pageNo,
          pageSize: pageSize,
          category: category,
          search: search,
        );

  GetNotificationListLocalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.notifType,
    required this.pageNo,
    required this.pageSize,
    required this.category,
    required this.search,
  }) : super.internal();

  final String? notifType;
  final int? pageNo;
  final int? pageSize;
  final String? category;
  final String? search;

  @override
  Override overrideWith(
    FutureOr<List<NotificationResponseRemote>?> Function(
            GetNotificationListLocalRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNotificationListLocalProvider._internal(
        (ref) => create(ref as GetNotificationListLocalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        notifType: notifType,
        pageNo: pageNo,
        pageSize: pageSize,
        category: category,
        search: search,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<NotificationResponseRemote>?>
      createElement() {
    return _GetNotificationListLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNotificationListLocalProvider &&
        other.notifType == notifType &&
        other.pageNo == pageNo &&
        other.pageSize == pageSize &&
        other.category == category &&
        other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, notifType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);
    hash = _SystemHash.combine(hash, pageSize.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetNotificationListLocalRef
    on AutoDisposeFutureProviderRef<List<NotificationResponseRemote>?> {
  /// The parameter `notifType` of this provider.
  String? get notifType;

  /// The parameter `pageNo` of this provider.
  int? get pageNo;

  /// The parameter `pageSize` of this provider.
  int? get pageSize;

  /// The parameter `category` of this provider.
  String? get category;

  /// The parameter `search` of this provider.
  String? get search;
}

class _GetNotificationListLocalProviderElement
    extends AutoDisposeFutureProviderElement<List<NotificationResponseRemote>?>
    with GetNotificationListLocalRef {
  _GetNotificationListLocalProviderElement(super.provider);

  @override
  String? get notifType =>
      (origin as GetNotificationListLocalProvider).notifType;
  @override
  int? get pageNo => (origin as GetNotificationListLocalProvider).pageNo;
  @override
  int? get pageSize => (origin as GetNotificationListLocalProvider).pageSize;
  @override
  String? get category => (origin as GetNotificationListLocalProvider).category;
  @override
  String? get search => (origin as GetNotificationListLocalProvider).search;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
