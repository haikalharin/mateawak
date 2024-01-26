// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$showDialogCongratulationsHash() =>
    r'862558cf56fe8f395ccb8b556d7c1511362affbc';

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

/// See also [showDialogCongratulations].
@ProviderFor(showDialogCongratulations)
const showDialogCongratulationsProvider = ShowDialogCongratulationsFamily();

/// See also [showDialogCongratulations].
class ShowDialogCongratulationsFamily extends Family<AsyncValue<void>> {
  /// See also [showDialogCongratulations].
  const ShowDialogCongratulationsFamily();

  /// See also [showDialogCongratulations].
  ShowDialogCongratulationsProvider call({
    required String body,
    required BuildContext context,
  }) {
    return ShowDialogCongratulationsProvider(
      body: body,
      context: context,
    );
  }

  @override
  ShowDialogCongratulationsProvider getProviderOverride(
    covariant ShowDialogCongratulationsProvider provider,
  ) {
    return call(
      body: provider.body,
      context: provider.context,
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
  String? get name => r'showDialogCongratulationsProvider';
}

/// See also [showDialogCongratulations].
class ShowDialogCongratulationsProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [showDialogCongratulations].
  ShowDialogCongratulationsProvider({
    required String body,
    required BuildContext context,
  }) : this._internal(
          (ref) => showDialogCongratulations(
            ref as ShowDialogCongratulationsRef,
            body: body,
            context: context,
          ),
          from: showDialogCongratulationsProvider,
          name: r'showDialogCongratulationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$showDialogCongratulationsHash,
          dependencies: ShowDialogCongratulationsFamily._dependencies,
          allTransitiveDependencies:
              ShowDialogCongratulationsFamily._allTransitiveDependencies,
          body: body,
          context: context,
        );

  ShowDialogCongratulationsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.body,
    required this.context,
  }) : super.internal();

  final String body;
  final BuildContext context;

  @override
  Override overrideWith(
    FutureOr<void> Function(ShowDialogCongratulationsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ShowDialogCongratulationsProvider._internal(
        (ref) => create(ref as ShowDialogCongratulationsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        body: body,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _ShowDialogCongratulationsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShowDialogCongratulationsProvider &&
        other.body == body &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, body.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ShowDialogCongratulationsRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `body` of this provider.
  String get body;

  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _ShowDialogCongratulationsProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with ShowDialogCongratulationsRef {
  _ShowDialogCongratulationsProviderElement(super.provider);

  @override
  String get body => (origin as ShowDialogCongratulationsProvider).body;
  @override
  BuildContext get context =>
      (origin as ShowDialogCongratulationsProvider).context;
}

String _$getNotificationListHash() =>
    r'0fb79d1ff9c79582025233b1e0ab9b70abf73713';

/// See also [getNotificationList].
@ProviderFor(getNotificationList)
const getNotificationListProvider = GetNotificationListFamily();

/// See also [getNotificationList].
class GetNotificationListFamily
    extends Family<AsyncValue<List<NotificationResponseRemote>?>> {
  /// See also [getNotificationList].
  const GetNotificationListFamily();

  /// See also [getNotificationList].
  GetNotificationListProvider call({
    required int? userId,
    required String? dateFrom,
    required String? dateTo,
    required String? feature,
    required String? notifType,
    String? search,
    String? category,
    required int isAllNotif,
  }) {
    return GetNotificationListProvider(
      userId: userId,
      dateFrom: dateFrom,
      dateTo: dateTo,
      feature: feature,
      notifType: notifType,
      search: search,
      category: category,
      isAllNotif: isAllNotif,
    );
  }

  @override
  GetNotificationListProvider getProviderOverride(
    covariant GetNotificationListProvider provider,
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
  String? get name => r'getNotificationListProvider';
}

/// See also [getNotificationList].
class GetNotificationListProvider
    extends AutoDisposeFutureProvider<List<NotificationResponseRemote>?> {
  /// See also [getNotificationList].
  GetNotificationListProvider({
    required int? userId,
    required String? dateFrom,
    required String? dateTo,
    required String? feature,
    required String? notifType,
    String? search,
    String? category,
    required int isAllNotif,
  }) : this._internal(
          (ref) => getNotificationList(
            ref as GetNotificationListRef,
            userId: userId,
            dateFrom: dateFrom,
            dateTo: dateTo,
            feature: feature,
            notifType: notifType,
            search: search,
            category: category,
            isAllNotif: isAllNotif,
          ),
          from: getNotificationListProvider,
          name: r'getNotificationListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNotificationListHash,
          dependencies: GetNotificationListFamily._dependencies,
          allTransitiveDependencies:
              GetNotificationListFamily._allTransitiveDependencies,
          userId: userId,
          dateFrom: dateFrom,
          dateTo: dateTo,
          feature: feature,
          notifType: notifType,
          search: search,
          category: category,
          isAllNotif: isAllNotif,
        );

  GetNotificationListProvider._internal(
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
  }) : super.internal();

  final int? userId;
  final String? dateFrom;
  final String? dateTo;
  final String? feature;
  final String? notifType;
  final String? search;
  final String? category;
  final int isAllNotif;

  @override
  Override overrideWith(
    FutureOr<List<NotificationResponseRemote>?> Function(
            GetNotificationListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNotificationListProvider._internal(
        (ref) => create(ref as GetNotificationListRef),
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
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<NotificationResponseRemote>?>
      createElement() {
    return _GetNotificationListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNotificationListProvider &&
        other.userId == userId &&
        other.dateFrom == dateFrom &&
        other.dateTo == dateTo &&
        other.feature == feature &&
        other.notifType == notifType &&
        other.search == search &&
        other.category == category &&
        other.isAllNotif == isAllNotif;
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

    return _SystemHash.finish(hash);
  }
}

mixin GetNotificationListRef
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
}

class _GetNotificationListProviderElement
    extends AutoDisposeFutureProviderElement<List<NotificationResponseRemote>?>
    with GetNotificationListRef {
  _GetNotificationListProviderElement(super.provider);

  @override
  int? get userId => (origin as GetNotificationListProvider).userId;
  @override
  String? get dateFrom => (origin as GetNotificationListProvider).dateFrom;
  @override
  String? get dateTo => (origin as GetNotificationListProvider).dateTo;
  @override
  String? get feature => (origin as GetNotificationListProvider).feature;
  @override
  String? get notifType => (origin as GetNotificationListProvider).notifType;
  @override
  String? get search => (origin as GetNotificationListProvider).search;
  @override
  String? get category => (origin as GetNotificationListProvider).category;
  @override
  int get isAllNotif => (origin as GetNotificationListProvider).isAllNotif;
}

String _$getNotificationListForUnreadHash() =>
    r'9b23dd2651733416562c96481ec054cc90f7b7ab';

/// See also [getNotificationListForUnread].
@ProviderFor(getNotificationListForUnread)
final getNotificationListForUnreadProvider =
    AutoDisposeFutureProvider<List<NotificationResponseRemote>?>.internal(
  getNotificationListForUnread,
  name: r'getNotificationListForUnreadProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getNotificationListForUnreadHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetNotificationListForUnreadRef
    = AutoDisposeFutureProviderRef<List<NotificationResponseRemote>?>;
String _$markAsReadNotificationHash() =>
    r'cac60f179d9e6b65660d6b890b4588efc50eb82f';

/// See also [markAsReadNotification].
@ProviderFor(markAsReadNotification)
const markAsReadNotificationProvider = MarkAsReadNotificationFamily();

/// See also [markAsReadNotification].
class MarkAsReadNotificationFamily extends Family<AsyncValue<bool>> {
  /// See also [markAsReadNotification].
  const MarkAsReadNotificationFamily();

  /// See also [markAsReadNotification].
  MarkAsReadNotificationProvider call({
    required int employeeId,
    required String notifId,
    required int isMarkAllRead,
  }) {
    return MarkAsReadNotificationProvider(
      employeeId: employeeId,
      notifId: notifId,
      isMarkAllRead: isMarkAllRead,
    );
  }

  @override
  MarkAsReadNotificationProvider getProviderOverride(
    covariant MarkAsReadNotificationProvider provider,
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
  String? get name => r'markAsReadNotificationProvider';
}

/// See also [markAsReadNotification].
class MarkAsReadNotificationProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [markAsReadNotification].
  MarkAsReadNotificationProvider({
    required int employeeId,
    required String notifId,
    required int isMarkAllRead,
  }) : this._internal(
          (ref) => markAsReadNotification(
            ref as MarkAsReadNotificationRef,
            employeeId: employeeId,
            notifId: notifId,
            isMarkAllRead: isMarkAllRead,
          ),
          from: markAsReadNotificationProvider,
          name: r'markAsReadNotificationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$markAsReadNotificationHash,
          dependencies: MarkAsReadNotificationFamily._dependencies,
          allTransitiveDependencies:
              MarkAsReadNotificationFamily._allTransitiveDependencies,
          employeeId: employeeId,
          notifId: notifId,
          isMarkAllRead: isMarkAllRead,
        );

  MarkAsReadNotificationProvider._internal(
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
    FutureOr<bool> Function(MarkAsReadNotificationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MarkAsReadNotificationProvider._internal(
        (ref) => create(ref as MarkAsReadNotificationRef),
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
    return _MarkAsReadNotificationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MarkAsReadNotificationProvider &&
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

mixin MarkAsReadNotificationRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `employeeId` of this provider.
  int get employeeId;

  /// The parameter `notifId` of this provider.
  String get notifId;

  /// The parameter `isMarkAllRead` of this provider.
  int get isMarkAllRead;
}

class _MarkAsReadNotificationProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with MarkAsReadNotificationRef {
  _MarkAsReadNotificationProviderElement(super.provider);

  @override
  int get employeeId => (origin as MarkAsReadNotificationProvider).employeeId;
  @override
  String get notifId => (origin as MarkAsReadNotificationProvider).notifId;
  @override
  int get isMarkAllRead =>
      (origin as MarkAsReadNotificationProvider).isMarkAllRead;
}

String _$notificationRefreshKeyHash() =>
    r'0ec5897bf1b1136965f116453be2bdb369eb8294';

/// See also [notificationRefreshKey].
@ProviderFor(notificationRefreshKey)
final notificationRefreshKeyProvider =
    AutoDisposeProvider<GlobalKey<RefreshIndicatorState>>.internal(
  notificationRefreshKey,
  name: r'notificationRefreshKeyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$notificationRefreshKeyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NotificationRefreshKeyRef
    = AutoDisposeProviderRef<GlobalKey<RefreshIndicatorState>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
