// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:module_etamkawa/src/constants/constant.dart';
// import 'package:module_etamkawa/src/constants/telematry.constant.dart';
// import 'package:module_etamkawa/src/features/live/domain/live_production/live_production_grouping_summary_response.remote.dart';
// import 'package:module_etamkawa/src/features/live/presentation/controller/live.controller.dart';
// import 'package:module_etamkawa/src/features/live/presentation/controller/live_production.controller.dart';
// import 'package:module_etamkawa/src/features/production/presentation/controller/production.controller.dart';
// import 'package:module_etamkawa/src/features/production/presentation/widgets/pic_production/pic_production_widget.dart';
// import 'package:module_etamkawa/src/features/production/presentation/widgets/production_gen_ob_filter.dart';
// import 'package:module_etamkawa/src/features/production/presentation/widgets/production_report.dart';
// import 'package:module_etamkawa/src/features/production/presentation/widgets/production_section_item.dart';
// import 'package:module_etamkawa/src/features/production/presentation/widgets/production_summary.dart';
// import 'package:module_etamkawa/src/features/production/presentation/widgets/shift_and_fase/shift_and_fase_widget.dart';
// import 'package:module_etamkawa/src/features/production/presentation/widgets/sub_material/sub_material_widget.dart';
// import 'package:module_etamkawa/src/features/production/presentation/widgets/unit_not_achieved/unit_not_achieved_widget.dart';
// import 'package:module_etamkawa/src/features/production/presentation/widgets/unit_production/unit_production_widget.dart';
// import 'package:module_etamkawa/src/features/setting/domain/setting.model.dart';
// import 'package:module_etamkawa/src/features/setting/presentation/controller/setting.controller.dart';
// import 'package:module_etamkawa/src/features/telematry/presentation/controller/telematry.controller.dart';
// import 'package:module_etamkawa/src/shared_component/async_value_widget.dart';
// import 'package:module_etamkawa/src/utils/common_utils.dart';
// import 'package:module_shared/module_shared.dart';
// import 'package:visibility_detector/visibility_detector.dart';
//
// import '../../shared_component/async_value_widget.dart';
//
// class ProductionScreen extends ConsumerWidget {
//   const ProductionScreen(this.screenOccupationProduction, {super.key});
//
//   final List<int> screenOccupationProduction;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final userrole = ref.watch(userRoleProvider);
//     final selectedMaterial = ref.watch(liveSelectedMaterialProvider);
//     final selectedSubMaterial = ref.watch(liveSelectedSubMaterialProvider);
//     final loadDateTime = ref.watch(productionLoadDateTimeProvider);
//     return Column(
//       children: [
//         VisibilityDetector(
//           key: const ValueKey(TelematryConstant.liveProdGrafikshiftfase),
//           onVisibilityChanged: (visibilityInfo) {
//             if (context.mounted) {
//               ref
//                   .read(telematryControllerProvider.notifier)
//                   .onVisibilityChangedMultiWidget(
//                       visibilityInfo,
//                       context,
//                       TelematryConstant.liveProdGrafikshiftfase,
//                       1,
//                       screenOccupationProduction);
//             }
//           },
//           child: Column(
//             children: [
//               FutureBuilder(
//                 future: Future.wait([
//                   ref.watch(
//                       getActiveSwitchersProvider(SwitcherMode.material).future),
//                   ref.watch(
//                       getActiveSwitchersProvider(SwitcherMode.area).future),
//                   ref.read(helperUserProvider).getUserProfile(),
//                 ]),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     final materials = snapshot.data?[0] as List<String>;
//                     final areas = snapshot.data?[1] as List<String>;
//                     final userModel = snapshot.data?[2] as UserModel?;
//
//                     return AsyncValueWidget(
//                       value: ref.watch(
//                         getLiveProductionGroupingSummaryProvider(
//                           areas: areas.length > 1
//                               ? !ref
//                                       .watch(productionAreaFilterProvider)
//                                       .contains(Constant.all)
//                                   ? ref.watch(productionAreaFilterProvider)
//                                   : areas
//                               : areas,
//                           material: materials.length > 1
//                               ? selectedMaterial
//                               : selectedMaterial == Constant.obgen
//                                   ? selectedMaterial
//                                   : materials.first,
//                           adAccount: userModel?.adAccount,
//                           uid: userModel?.employeeID ?? 0,
//                           subMaterial: selectedSubMaterial,
//                         ),
//                       ),
//                       data: (result) {
//                         final strippingRatio = ref
//                             .watch(productionStrippingRatioProdvider)
//                             .replaceAll('.', ',')
//                             .split('/');
//
//                         return Column(
//                           children: [
//                             SizedBox(height: 24.h),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     if (userrole ==
//                                         USERROLE.foremanSupervisor) ...[
//                                       AsyncValueWidget(
//                                         value: ref.watch(
//                                           getActiveSwitchersProvider(
//                                               SwitcherMode.area),
//                                         ),
//                                         data: (areas) {
//                                           final editedAreas = areas
//                                               .map(
//                                                 (e) => e.capitalize(),
//                                               )
//                                               .toList()
//                                               .toString()
//                                               .replaceAll('All,', '');
//
//                                           return Row(
//                                             children: [
//                                               Icon(
//                                                 Icons.map_rounded,
//                                                 size: 18.sp,
//                                                 color: ColorTheme.textLightDark,
//                                               ),
//                                               SizedBox(width: 4.w),
//                                               Transform.translate(
//                                                 offset: Offset(0, 2.h),
//                                                 child: SharedComponent.label(
//                                                   text:
//                                                       'Area: ${editedAreas.substring(1, editedAreas.length - 1)}',
//                                                   context: context,
//                                                   typographyType:
//                                                       TypographyType.body,
//                                                 ),
//                                               ),
//                                             ],
//                                           );
//                                         },
//                                       ),
//                                       SizedBox(height: 4.h),
//                                     ],
//                                     if (areas.length > 1 &&
//                                         selectedMaterial != Constant.obgen) ...[
//                                       SharedComponent.label(
//                                         text:
//                                             'SR A: ${strippingRatio.firstOrNull ?? '-'} | P: ${strippingRatio.lastOrNull ?? '-'}',
//                                         context: context,
//                                         typographyType: TypographyType.body,
//                                         color: ColorTheme.textDark,
//                                       ),
//                                     ] else ...[
//                                       const SizedBox.shrink(),
//                                     ],
//                                   ],
//                                 ),
//                                 SharedComponent.label(
//                                   text:
//                                       'Diperbarui, ${CommonUtils.isEmpty(loadDateTime) ? '--:--' : CommonUtils.formatDateToHoursMinute(loadDateTime)}',
//                                   context: context,
//                                   typographyType: TypographyType.body,
//                                   color: ColorTheme.textLightDark,
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 24.h),
//                             if (selectedMaterial == Constant.obgen) ...[
//                               const ProductionGenObFilter(),
//                             ],
//                             if (userrole ==
//                                 USERROLE.superintendentSitemanager) ...[
//                               ProductionReport(userRole: userrole),
//                               SizedBox(height: 24.h),
//                             ],
//                             ProductionSummary(
//                               achievement: result?.achievement ?? 0,
//                               achievementHourly: result?.achievementHourly ?? 0,
//                               groupSummary: result ??
//                                   LiveProductionGroupingSummaryResponseRemote(),
//                               areas: areas,
//                               materials: materials,
//                               userModel: userModel,
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   }
//                   return const CircularProgressIndicator();
//                 },
//               ),
//               SizedBox(height: 24.h),
//               ProductionSectionItem(
//                 isInitialExpanded: true,
//                 pageKey: 'shiftandfase',
//                 sectionTitle: userrole == USERROLE.superintendentSitemanager
//                     ? 'Shift dan Fase'
//                     : 'Fase',
//                 children: const [
//                   ShiftAndFaseWidget(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: 24.h),
//         ProductionSectionItem(
//           isInitialExpanded: true,
//           pageKey: 'unitnotachieved',
//           sectionTitle: 'Unit Not Achieved',
//           children: [
//             UnitNotAchievedWidget(screenOccupationProduction),
//           ],
//         ),
//         SizedBox(height: 24.h),
//         ProductionSectionItem(
//           isInitialExpanded: false,
//           pageKey: 'unitproduction',
//           sectionTitle: 'Unit',
//           children: [
//             UnitProductionWidget(screenOccupationProduction),
//           ],
//         ),
//         SizedBox(height: 24.h),
//         VisibilityDetector(
//           key: const ValueKey(TelematryConstant.liveProdSubMaterialPIC),
//           onVisibilityChanged: (visibilityInfo) {
//             if (context.mounted) {
//               ref
//                   .read(telematryControllerProvider.notifier)
//                   .onVisibilityChangedMultiWidget(
//                       visibilityInfo,
//                       context,
//                       TelematryConstant.liveProdSubMaterialPIC,
//                       4,
//                       screenOccupationProduction);
//             }
//           },
//           child: Column(
//             children: [
//               if (selectedMaterial != Constant.cm) ...[
//                 const ProductionSectionItem(
//                   isInitialExpanded: false,
//                   pageKey: 'submaterialproduction',
//                   sectionTitle: 'Sub Material',
//                   children: [
//                     SubMaterialWidget(),
//                   ],
//                 ),
//                 SizedBox(height: 24.h),
//               ],
//               const ProductionSectionItem(
//                 isInitialExpanded: false,
//                 pageKey: 'picproduction',
//                 sectionTitle: 'PIC',
//                 children: [
//                   PicProductionWidget(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         AsyncValueWidget(
//           value: ref.watch(isOBAndCMProvider),
//           data: (result) {
//             if (result ||
//                 selectedMaterial == Constant.obgen ||
//                 selectedMaterial == Constant.ob) {
//               return SizedBox(height: 64.h);
//             }
//             return const SizedBox.shrink();
//           },
//         ),
//       ],
//     );
//   }
// }
