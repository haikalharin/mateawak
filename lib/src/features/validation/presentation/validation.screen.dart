import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/validation/domain/validation_response.remote.dart';
import 'package:module_etamkawa/src/features/validation/presentation/controller/validation.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../constants/constant.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/refreshable_starter_widget.dart';
import '../../task/presentation/controller/task.controller.dart';

class ValidationScreen extends ConsumerStatefulWidget {
  const ValidationScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ValidationScreenState();
}

Future<void> myAsyncMethodMoved(
    BuildContext context, ValidationResponseRemote validation) async {
  context.goNamed(detailValidationEtamkawa);
}

class _ValidationScreenState extends ConsumerState<ValidationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final ctrl = ref.watch(validationControllerProvider.notifier);
          final listValidation = ref.watch(validationInReviewState);
          debugPrint(listValidation.toString());
          return AsyncValueWidget(
              value: ref.watch(taskControllerProvider),
              data: (data) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                          hintText: "${EtamKawaTranslate.search}...",
                          suffixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onFieldSubmitted: (keyword) {
                          ctrl.filterValidationList(keyword);
                        },
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: ColorTheme.neutral100,
                        child: RefreshableStarterWidget(
                          onRefresh: () async {
                            ctrl.getValidationList();
                          },
                          slivers: [
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  if (listValidation.isNotEmpty) {
                                    return _buildListItem(
                                        index, ctrl, listValidation);
                                  } else {
                                    return Container();
                                  }
                                },
                                childCount: listValidation.length,
                              ),
                            ),
                            SliverToBoxAdapter(
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 10.0,
                                ), // Sesuaikan margin sesuai kebutuhan
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Center(
                                      child: Text(
                                        EtamKawaTranslate.noData,
                                        style: SharedComponent.textStyleCustom(
                                          typographyType: TypographyType.body,
                                          fontColor: ColorTheme.neutral600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }

  Widget _buildListItem(int index, ValidationController ctrl,
      List<ValidationResponseRemote> validation) {
    // Future<void> putData() async {
    //   List<MissionValidationDatum> listValidation = [];
    //   for (var element in validation) {
    //     listValidation.add(element.chapterData?.single.missionData?.single ??
    //         MissionValidationDatum());
    //   }
    //   //ref.watch(listValidationState.notifier).state = listValidation;
    //   // List<TaskValidationDatum> listTask =
    //   //     (validation[index].chapterData?.single.missionData?.single.taskData ??
    //   //         []);
    //   //ref.watch(listTaskState.notifier).state = listTask;
    // }

    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: ColorTheme.strokeTertiary,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
          elevation: 0,
          margin: const EdgeInsets.all(8),
          child: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.r)),
                                    color: EtamKawaUtils()
                                        .getMissionStatusBGColorByCode(
                                            (validation[index]
                                                        .missionStatusCode ??
                                                    3)
                                                .toString())),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 4.h),
                                  child: Text(
                                      EtamKawaUtils().getMissionStatus(
                                          validation[index].missionStatus!),
                                      style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.paragraph,
                                          fontColor: EtamKawaUtils()
                                              .getMissionStatusFontColorByCode(
                                                  (validation[index]
                                                              .missionStatusCode ??
                                                          3)
                                                      .toString()))),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(ImageConstant.iconReward,
                                    width: 16.sp,
                                    height: 16.sp,
                                    package: Constant.moduleEtamkawa),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 0, 0, 0),
                                  child: Text(
                                      '${validation[index].chapterData?.single.missionData?.single.taskData?.first.answerReward ?? 0.toString()} ${EtamKawaTranslate.pts}',
                                      style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.paragraph,
                                          fontColor: ColorTheme.neutral500)
                                      //TextStyle(fontSize: 12.sp),
                                      ),
                                ),
                              ],
                            ),
                          ]),
                      Text(
                          validation[index]
                                  .chapterData
                                  ?.single
                                  .missionData
                                  ?.single
                                  .missionName ??
                              '',
                          style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.largeH5,
                              fontColor: ColorTheme.neutral600)),
                      Text(validation[index].chapterData?[0].chapterName ?? '',
                          style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.paragraph,
                              fontColor: ColorTheme.neutral500)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 16.sp,
                              height: 16.sp,
                              decoration: BoxDecoration(
                                  color: ColorTheme.primary100,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.r))),
                              child: Center(
                                  child: Text(
                                (validation[index].employeeName ?? 'Name')[0]
                                    .toUpperCase(),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                  validation[index].employeeName ?? 'Name',
                                  style: SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.small,
                                      fontColor: ColorTheme.primary500)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(ImageConstant.iconCalendar,
                                width: 16.sp,
                                height: 16.sp,
                                package: Constant.moduleEtamkawa),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                  '${EtamKawaTranslate.submittedAt}: ${CommonUtils.formattedDateHoursUtcToLocal(validation[index].submittedDate ?? DateTime.now().toString())}',
                                  style: SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.small,
                                      fontColor: ColorTheme.neutral500)
                                  //TextStyle(fontSize: 11.sp),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      if (validation[index].missionStatusCode != 3)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(ImageConstant.iconValidated,
                                  width: 16.sp,
                                  height: 16.sp,
                                  package: Constant.moduleEtamkawa),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                    '${EtamKawaTranslate.validatedAt}: ${CommonUtils.formattedDateHoursUtcToLocal(validation[index].completedDate ?? DateTime.now().toString())}',
                                    style: SharedComponent.textStyleCustom(
                                        typographyType: TypographyType.small,
                                        fontColor: ColorTheme.neutral500)
                                    //TextStyle(fontSize: 11.sp),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 7),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorTheme.neutral0,
                              foregroundColor: ColorTheme.primary500,
                              side: BorderSide(
                                color: ColorTheme.primary500,
                              ),
                            ),
                            onPressed: () async {
                              ref.watch(validationInReviewDetailState.notifier).state = validation[index];
                              myAsyncMethodMoved(context, validation[index]);
                            },
                            child: Text(EtamKawaTranslate.view,
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.paragraph)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
