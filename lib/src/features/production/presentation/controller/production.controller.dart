import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/constants/constant.dart';

final productionAreaFilterProvider =
    StateProvider.autoDispose<List<String>>((ref) => [Constant.all]);
final productionUnitFilterProvider =
    StateProvider.autoDispose<String>((ref) => Constant.liveFilterAll);
final productionUnitCategoryProvider =
    StateProvider.autoDispose<String>((ref) => Constant.liveUnitCategoryUnit);
final productionUnitClockFilterProvider =
    StateProvider.autoDispose<String>((ref) => '');
final productionStrippingRatioProdvider =
    StateProvider.autoDispose<String>((ref) => '-');
final productionLoadDateTimeProvider =
    StateProvider.autoDispose<String>((ref) => '');


final productionSelectedHoursProvider =
    StateProvider.autoDispose<String>((ref) => '');
final productionGroupUnitProvider =
    StateProvider.autoDispose<String>((ref) => Constant.loader);
final productionLossResetterProvider =
    StateProvider.autoDispose<String>((ref) => '');
