import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/constants/telematry.constant.dart';
import 'package:module_etamkawa/src/features/notifications/infrastructure/repositories/notification.repository.dart';
import 'package:module_etamkawa/src/features/notifications/presentation/controller/notification_controller.dart';
import 'package:module_etamkawa/src/features/notifications/presentation/widgets/fiter_form_widget.dart';
import 'package:module_etamkawa/src/features/notifications/presentation/widgets/item_notif.dart';
import 'package:module_etamkawa/src/features/telematry/presentation/controller/telematry.controller.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/detail_page_appbar_widget.dart';
import '../../../shared_component/empty_state_widget.dart';
import '../../../shared_component/pagination_widget.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (context.mounted) {
      ref
          .read(telematryControllerProvider.notifier)
          .onVisibilityChangedSingleWidget(
            TelematryConstant.notifications,
          );
    }

    final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);

    return Scaffold(
      appBar: DetailPageAppBarWidget(
        title: 'Notifications',
        ref: ref,
        onTap: () => context.pop(),
        trailing: Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 40.h,
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: isConnectionAvailable
                  ? () async {
                      final userModel =
                          await ref.read(helperUserProvider).getUserProfile();

                      await ref.read(markAsReadNotificationProvider(
                              employeeId: userModel?.employeeID ?? 0,
                              notifId: '',
                              isMarkAllRead: 1)
                          .future);

                      ref.invalidate(getNotificationListForUnreadProvider);
                    }
                  : null,
              child: Ink(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: ColorTheme.backgroundLight,
                    border: Border.all(color: ColorTheme.strokeTertiary)),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Row(
                  children: [
                    Icon(
                      Icons.mark_chat_unread_rounded,
                      size: 16.sp,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    SharedComponent.label(
                      text: 'Marks all read',
                      context: context,
                      typographyType: TypographyType.body,
                      color: ColorTheme.textDark,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        key: ref.watch(notificationRefreshKeyProvider),
        onRefresh: () async {
          final userModel = await ref.read(helperUserProvider).getUserProfile();

          final dateFrom = DateFormat('dd MMMM yyyy', 'id')
              .parse(ref.watch(selectedDariProvider));
          final dateKe = DateFormat('dd MMMM yyyy', 'id')
              .parse(ref.watch(selectedKeProvider));

          final pageNo = ref.watch(notificationPagePaginationProvider);
          final pageLimit = ref.watch(notificationPageLimitProvider);

          return await ref.refresh(getNotificationListRemoteProvider(
                  dateFrom: DateFormat('yyyy-MM-dd').format(dateFrom),
                  dateTo: DateFormat('yyyy-MM-dd').format(dateKe),
                  feature: Constant.feature,
                  isAllNotif: 1,
                  pageNo: pageNo,
                  pageSize: pageLimit,
                  userId: userModel?.employeeID,
                  search: ref.watch(searchNotifProvider),
                  notifType: ref.watch(selectedNotifTypeProvider),
                  category: ref.watch(categoryProvider))
              .future);
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Column(
                children: [
                  Consumer(
                    builder: (context, consRef, child) {
                      final selectedNotifType =
                          consRef.watch(selectedNotifTypeProvider);
                      return Container(
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: ColorTheme.backgroundLight,
                        ),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  consRef
                                      .read(selectedNotifTypeProvider.notifier)
                                      .state = Constant.notificationGeneral;
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: selectedNotifType ==
                                            Constant.notificationGeneral
                                        ? BorderRadius.all(
                                            Radius.circular(10.r))
                                        : BorderRadius.only(
                                            topLeft: Radius.circular(10.r),
                                            bottomLeft: Radius.circular(10.r),
                                          ),
                                    color: selectedNotifType ==
                                            Constant.notificationGeneral
                                        ? ColorTheme.primary500
                                        : ColorTheme.backgroundWhite,
                                  ),
                                  child: SharedComponent.label(
                                    text: 'General',
                                    context: context,
                                    typographyType: TypographyType.body,
                                    color: selectedNotifType ==
                                            Constant.notificationGeneral
                                        ? ColorTheme.textWhite
                                        : ColorTheme.textDark,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  consRef
                                      .read(selectedNotifTypeProvider.notifier)
                                      .state = Constant.notificationSystem;
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: selectedNotifType ==
                                            Constant.notificationSystem
                                        ? BorderRadius.all(
                                            Radius.circular(10.r))
                                        : BorderRadius.zero,
                                    color: selectedNotifType ==
                                            Constant.notificationSystem
                                        ? ColorTheme.primary500
                                        : ColorTheme.backgroundWhite,
                                  ),
                                  child: SharedComponent.label(
                                    text: 'System',
                                    context: context,
                                    typographyType: TypographyType.body,
                                    color: selectedNotifType ==
                                            Constant.notificationSystem
                                        ? ColorTheme.textWhite
                                        : ColorTheme.textDark,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Consumer(
                    builder: (context, consRef, child) {
                      final selectedNotifDay =
                          consRef.watch(selectedNotifDayProvider);
                      return Row(
                        children: [
                          Card(
                            margin: EdgeInsets.zero,
                            elevation: 0,
                            color:
                                selectedNotifDay == Constant.notificationToday
                                    ? ColorTheme.primary500
                                    : ColorTheme.backgroundWhite,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                color: ColorTheme.strokeTertiary,
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: () {
                                consRef
                                    .read(selectedNotifDayProvider.notifier)
                                    .state = Constant.notificationToday;

                                final today = CommonUtils.formattedDate(
                                    DateTime.now().toUtc().toIso8601String(),
                                    withDay: false);

                                consRef
                                    .read(selectedDariProvider.notifier)
                                    .state = today;

                                consRef
                                    .read(filterSelectedDariProvider.notifier)
                                    .state = today;
                                consRef
                                    .read(filterSelectedKeProvider.notifier)
                                    .state = today;

                                consRef.invalidate(
                                    notificationPagePaginationProvider);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: SharedComponent.label(
                                    text: 'Today',
                                    context: context,
                                    typographyType: TypographyType.body,
                                    textAlign: TextAlign.center,
                                    color: selectedNotifDay ==
                                            Constant.notificationToday
                                        ? ColorTheme.textWhite
                                        : null),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Card(
                            margin: EdgeInsets.zero,
                            elevation: 0,
                            color: selectedNotifDay ==
                                    Constant.notificationYesterday
                                ? ColorTheme.primary500
                                : ColorTheme.backgroundWhite,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                color: ColorTheme.strokeTertiary,
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: () {
                                consRef
                                    .read(selectedNotifDayProvider.notifier)
                                    .state = Constant.notificationYesterday;

                                final yesterday = CommonUtils.formattedDate(
                                    DateTime.now()
                                        .toUtc()
                                        .subtract(const Duration(days: 1))
                                        .toIso8601String(),
                                    withDay: false);

                                consRef
                                    .read(selectedDariProvider.notifier)
                                    .state = yesterday;

                                consRef
                                    .read(filterSelectedDariProvider.notifier)
                                    .state = yesterday;
                                consRef
                                    .read(filterSelectedKeProvider.notifier)
                                    .state = yesterday;

                                consRef.invalidate(
                                    notificationPagePaginationProvider);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: SharedComponent.label(
                                    text: 'Yesterday',
                                    context: context,
                                    typographyType: TypographyType.body,
                                    textAlign: TextAlign.center,
                                    color: selectedNotifDay ==
                                            Constant.notificationYesterday
                                        ? ColorTheme.textWhite
                                        : null),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(12),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.r),
                                    borderSide: BorderSide(
                                        color:
                                            ColorTheme.buttonSecondaryStroke)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.r),
                                    borderSide: BorderSide(
                                        color:
                                            ColorTheme.buttonSecondaryStroke)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.r),
                                    borderSide: BorderSide(
                                        color:
                                            ColorTheme.buttonSecondaryStroke)),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.sp,
                                  color: ColorTheme.textLight,
                                ),
                                prefixIcon: Icon(
                                  Icons.search_rounded,
                                  size: 16.sp,
                                  color: ColorTheme.iconLightDark,
                                )),
                            autofocus: false,
                            textInputAction: TextInputAction.search,
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            onSubmitted: (value) {
                              ref.read(searchNotifProvider.notifier).state =
                                  value;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(5.r),
                          onTap: () {
                            showModalBottomSheet<void>(
                              context: context,
                              useSafeArea: true,
                              builder: (BuildContext context) {
                                return const FilterFormWidget();
                              },
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: ColorTheme.backgroundLight,
                                border: Border.all(
                                    color: ColorTheme.strokeTertiary)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 12.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.filter_alt_rounded,
                                  size: 16.sp,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                SharedComponent.label(
                                  text: 'Filter',
                                  context: context,
                                  typographyType: TypographyType.body,
                                  color: ColorTheme.textDark,
                                ),
                                Consumer(
                                  builder: (context, consRef, child) {
                                    final category =
                                        consRef.watch(categoryProvider);

                                    final selectedNotifDay =
                                        consRef.watch(selectedNotifDayProvider);

                                    return (category != null ||
                                            selectedNotifDay ==
                                                Constant
                                                    .notificationNeitherTodayOrYesterday)
                                        ? Row(
                                            children: [
                                              SizedBox(
                                                width: 4.w,
                                              ),
                                              Container(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                width: 16.sp,
                                                height: 16.sp,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: ColorTheme.danger500,
                                                  border: Border.all(
                                                    color: ColorTheme
                                                        .backgroundWhite,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: SharedComponent.label(
                                                      text: '1',
                                                      context: context,
                                                      fontSize: 8.sp,
                                                      color:
                                                          ColorTheme.textWhite),
                                                ),
                                              )
                                            ],
                                          )
                                        : const SizedBox.shrink();
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Consumer(
                builder: (context, consRef, child) {
                  return FutureBuilder(
                    future: consRef.read(helperUserProvider).getUserProfile(),
                    builder: (context, snapshot) {
                      final userModel = snapshot.data;
                      if (userModel?.employeeID != null) {
                        final dateFrom = DateFormat('dd MMMM yyyy', 'id')
                            .parse(consRef.watch(selectedDariProvider));
                        final dateKe = DateFormat('dd MMMM yyyy', 'id')
                            .parse(consRef.watch(selectedKeProvider));

                        return AsyncValueWidget(
                          value: consRef.watch(getNotificationListProvider(
                              dateFrom:
                                  DateFormat('yyyy-MM-dd').format(dateFrom),
                              dateTo: DateFormat('yyyy-MM-dd').format(dateKe),
                              feature: Constant.feature,
                              isAllNotif: 1,
                              userId: userModel?.employeeID,
                              search: consRef.watch(searchNotifProvider),
                              notifType:
                                  consRef.watch(selectedNotifTypeProvider),
                              category: consRef.watch(categoryProvider))),
                          data: (value) {
                            return value == null || value.isEmpty
                                ? const SingleChildScrollView(
                                    child: EmptyStateWidget())
                                : ListView(
                                    children:
                                        List.generate(value.length, (index) {
                                      final witaTime =
                                          CommonUtils.convertUTCToWitaTime(
                                              value[index].notifDate ??
                                                  '2023-01-01T00:00:00.000');

                                      return ItemNotif(
                                          notifId: value[index].notifId ?? '',
                                          isHighlight: value[index].isRead == 0,
                                          title:
                                              '${value[index].category} - ${CommonUtils.formattedDate(witaTime.toString(), withHourMinute: true)}',
                                          subTitle:
                                              '${value[index].notifTitle}',
                                          desc:
                                              '${value[index].notifDescription}');
                                    }),
                                  );
                          },
                        );
                      }
                      return const Center(child: CircularProgressIndicator());
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: PaginationWidget(
        pagePagination: ref.watch(notificationPagePaginationProvider),
        pageLimit: ref.watch(notificationPageLimitProvider),
        totalRecords: ref.watch(notificationTotalRecordsProvider),
        totalPages: ref.watch(notificationTotalPagesProvider),
        onBackPage: () {
          ref.read(notificationPagePaginationProvider.notifier).state--;
        },
        onChangeLimit: (limit) {
          ref.read(notificationPageLimitProvider.notifier).state = limit ?? 10;
          ref.read(notificationPagePaginationProvider.notifier).state = 1;
        },
        onNextPage: () {
          ref.read(notificationPagePaginationProvider.notifier).state++;
        },
      ),
    );
  }
}
