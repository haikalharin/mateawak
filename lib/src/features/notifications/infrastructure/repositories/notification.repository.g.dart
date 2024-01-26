// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getNotificationListRemoteHash() =>
    r'850955e2d8c1c5e07babcba9fdd6ea680f8ab4e0';

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

/// See also [getNotificationListRemote].
@ProviderFor(getNotificationListRemote)
const getNotificationListRemoteProvider = GetNotificationListRemoteFamily();

/// See also [getNotificationListRemote].
class GetNotificationListRemoteFamily
    extends Family<AsyncValue<List<NotificationResponseRemote>?>> {
  /// See also [getNotificationListRemote].
  const GetNotificationListRemoteFamily();

  /// See also [getNotificationListRemote].
  GetNotificationListRemoteProvider call({
    required int? userId,
    required String? dateFrom,
    required String? dateTo,
    required String? feature,
    required String? notifType,
    String? search,
    String? category,
    required int isAllNotif,
    required int pageNo,
    required int pageSize,
  }) {
    return GetNotificationListRemoteProvider(
      userId: userId,
      dateFrom: dateFrom,
      dateTo: dateTo,
      feature: feature,
      notifType: notifType,
      search: search,
      category: category,
      isAllNotif: isAllNotif,
      pageNo: pageNo,
      pageSize: pageSize,
    );
  }

  @override
  GetNotificationListRemoteProvider getProviderOverride(
    covariant GetNotificationListRemoteProvider provider,
  ) {
    return call(
      userId: provider.userId,
      dateFrom: provider.dateFrom,
      dateTo: provider.dateTo,
      feature: provider.feature,
      notifType: provider.notifType,
      search: provider.search,
      category: provider.category,
      isAllNotif: provider.isAllNotif,
      pageNo: provider.pageNo,
      pageSize: provider.pageSize,
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
  String? get name => r'getNotificationListRemoteProvider';
}

/// See also [getNotificationListRemote].
class GetNotificationListRemoteProvider
    extends AutoDisposeFutureProvider<List<NotificationResponseRemote>?> {
  /// See also [getNotificationListRemote].
  GetNotificationListRemoteProvider({
    required int? userId,
    required String? dateFrom,
    required String? dateTo,
    required String? feature,
    required String? notifType,
    String? search,
    String? category,
    required int isAllNotif,
    required int pageNo,
    required int pageSize,
  }) : this._internal(
          (ref) => getNotificationListRemote(
            ref as GetNotificationListRemoteRef,
            userId: userId,
            dateFrom: dateFrom,
            dateTo: dateTo,
            feature: feature,
            notifType: notifType,
            search: search,
            category: category,
            isAllNotif: isAllNotif,
            pageNo: pageNo,
            pageSize: pageSize,
          ),
          from: getNotificationListRemoteProvider,
          name: r'getNotificationListRemoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNotificationListRemoteHash,
          dependencies: GetNotificationListRemoteFamily._dependencies,
          allTransitiveDependencies:
              GetNotificationListRemoteFamily._allTransitiveDependencies,
          userId: userId,
          dateFrom: dateFrom,
          dateTo: dateTo,
          feature: feature,
          notifType: notifType,
          search: search,
          category: category,
          isAllNotif: isAllNotif,
          pageNo: pageNo,
          pageSize: pageSize,
        );

  GetNotificationListRemoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.dateFrom,
    required this.dateTo,
    required this.feature,
    required this.notifType,
    required this.search,
    required this.category,
    required this.isAllNotif,
    required this.pageNo,
    required this.pageSize,
  }) : super.internal();

  final int? userId;
  final String? dateFrom;
  final String? dateTo;
  final String? feature;
  final String? notifType;
  final String? search;
  final String? category;
  final int isAllNotif;
  final int pageNo;
  final int pageSize;

  @override
  Override overrideWith(
    FutureOr<List<NotificationResponseRemote>?> Function(
            GetNotificationListRemoteRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNotificationListRemoteProvider._internal(
        (ref) => create(ref as GetNotificationListRemoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        dateFrom: dateFrom,
        dateTo: dateTo,
        feature: feature,
        notifType: notifType,
        search: search,
        category: category,
        isAllNotif: isAllNotif,
        pageNo: pageNo,
        pageSize: pageSize,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<NotificationResponseRemote>?>
      createElement() {
    return _GetNotificationListRemoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNotificationListRemoteProvider &&
        other.userId == userId &&
        other.dateFrom == dateFrom &&
        other.dateTo == dateTo &&
        other.feature == feature &&
        other.notifType == notifType &&
        other.search == search &&
        other.category == category &&
        other.isAllNotif == isAllNotif &&
        other.pageNo == pageNo &&
        other.pageSize == pageSize;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, dateFrom.hashCode);
    hash = _SystemHash.combine(hash, dateTo.hashCode);
    hash = _SystemHash.combine(hash, feature.hashCode);
    hash = _SystemHash.combine(hash, notifType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, isAllNotif.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);
    hash = _SystemHash.combine(hash, pageSize.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetNotificationListRemoteRef
    on AutoDisposeFutureProviderRef<List<NotificationResponseRemote>?> {
  /// The parameter `userId` of this provider.
  int? get userId;

  /// The parameter `dateFrom` of this provider.
  String? get dateFrom;

  /// The parameter `dateTo` of this provider.
  String? get dateTo;

  /// The parameter `feature` of this provider.
  String? get feature;

  /// The parameter `notifType` of this provider.
  String? get notifType;

  /// The parameter `search` of this provider.
  String? get search;

  /// The parameter `category` of this provider.
  String? get category;

  /// The parameter `isAllNotif` of this provider.
  int get isAllNotif;

  /// The parameter `pageNo` of this provider.
  int get pageNo;

  /// The parameter `pageSize` of this provider.
  int get pageSize;
}

class _GetNotificationListRemoteProviderElement
    extends AutoDisposeFutureProviderElement<List<NotificationResponseRemote>?>
    with GetNotificationListRemoteRef {
  _GetNotificationListRemoteProviderElement(super.provider);

  @override
  int? get userId => (origin as GetNotificationListRemoteProvider).userId;
  @override
  String? get dateFrom =>
      (origin as GetNotificationListRemoteProvider).dateFrom;
  @override
  String? get dateTo => (origin as GetNotificationListRemoteProvider).dateTo;
  @override
  String? get feature => (origin as GetNotificationListRemoteProvider).feature;
  @override
  String? get notifType =>
      (origin as GetNotificationListRemoteProvider).notifType;
  @override
  String? get search => (origin as GetNotificationListRemoteProvider).search;
  @override
  String? get category =>
      (origin as GetNotificationListRemoteProvider).category;
  @override
  int get isAllNotif =>
      (origin as GetNotificationListRemoteProvider).isAllNotif;
  @override
  int get pageNo => (origin as GetNotificationListRemoteProvider).pageNo;
  @override
  int get pageSize => (origin as GetNotificationListRemoteProvider).pageSize;
}

String _$markAsReadNotificationRemoteHash() =>
    r'2b83ce788e7ea583e7d2abba60ed2c41bfbd60cd';

/// See also [markAsReadNotificationRemote].
@ProviderFor(markAsReadNotificationRemote)
const markAsReadNotificationRemoteProvider =
    MarkAsReadNotificationRemoteFamily();

/// See also [markAsReadNotificationRemote].
class MarkAsReadNotificationRemoteFamily extends Family<AsyncValue<bool>> {
  /// See also [markAsReadNotificationRemote].
  const MarkAsReadNotificationRemoteFamily();

  /// See also [markAsReadNotificationRemote].
  MarkAsReadNotificationRemoteProvider call({
    required int employeeId,
    required String notifId,
    required int isMarkAllRead,
  }) {
    return MarkAsReadNotificationRemoteProvider(
      employeeId: employeeId,
      notifId: notifId,
      isMarkAllRead: isMarkAllRead,
    );
  }

  @override
  MarkAsReadNotificationRemoteProvider getProviderOverride(
    covariant MarkAsReadNotificationRemoteProvider provider,
  ) {
    return call(
      employeeId: provider.employeeId,
      notifId: provider.notifId,
      isMarkAllRead: provider.isMarkAllRead,
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
  String? get name => r'markAsReadNotificationRemoteProvider';
}

/// See also [markAsReadNotificationRemote].
class MarkAsReadNotificationRemoteProvider
    extends AutoDisposeFutureProvider<bool> {
  /// See also [markAsReadNotificationRemote].
  MarkAsReadNotificationRemoteProvider({
    required int employeeId,
    required String notifId,
    required int isMarkAllRead,
  }) : this._internal(
          (ref) => markAsReadNotificationRemote(
            ref as MarkAsReadNotificationRemoteRef,
            employeeId: employeeId,
            notifId: notifId,
            isMarkAllRead: isMarkAllRead,
          ),
          from: markAsReadNotificationRemoteProvider,
          name: r'markAsReadNotificationRemoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$markAsReadNotificationRemoteHash,
          dependencies: MarkAsReadNotificationRemoteFamily._dependencies,
          allTransitiveDependencies:
              MarkAsReadNotificationRemoteFamily._allTransitiveDependencies,
          employeeId: employeeId,
          notifId: notifId,
          isMarkAllRead: isMarkAllRead,
        );

  MarkAsReadNotificationRemoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.employeeId,
    required this.notifId,
    required this.isMarkAllRead,
  }) : super.internal();

  final int employeeId;
  final String notifId;
  final int isMarkAllRead;

  @override
  Override overrideWith(
    FutureOr<bool> Function(MarkAsReadNotificationRemoteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MarkAsReadNotificationRemoteProvider._internal(
        (ref) => create(ref as MarkAsReadNotificationRemoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        employeeId: employeeId,
        notifId: notifId,
        isMarkAllRead: isMarkAllRead,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _MarkAsReadNotificationRemoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MarkAsReadNotificationRemoteProvider &&
        other.employeeId == employeeId &&
        other.notifId == notifId &&
        other.isMarkAllRead == isMarkAllRead;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, employeeId.hashCode);
    hash = _SystemHash.combine(hash, notifId.hashCode);
    hash = _SystemHash.combine(hash, isMarkAllRead.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MarkAsReadNotificationRemoteRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `employeeId` of this provider.
  int get employeeId;

  /// The parameter `notifId` of this provider.
  String get notifId;

  /// The parameter `isMarkAllRead` of this provider.
  int get isMarkAllRead;
}

class _MarkAsReadNotificationRemoteProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with MarkAsReadNotificationRemoteRef {
  _MarkAsReadNotificationRemoteProviderElement(super.provider);

  @override
  int get employeeId =>
      (origin as MarkAsReadNotificationRemoteProvider).employeeId;
  @override
  String get notifId =>
      (origin as MarkAsReadNotificationRemoteProvider).notifId;
  @override
  int get isMarkAllRead =>
      (origin as MarkAsReadNotificationRemoteProvider).isMarkAllRead;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
