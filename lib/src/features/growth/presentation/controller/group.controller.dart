import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/growth/domain/group_response.remote.dart';
import 'package:module_etamkawa/src/features/growth/infrastructure/repositories/group_local.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group.controller.g.dart';

final groupListState =
    StateProvider.autoDispose<List<GroupResponseRemote>>((ref) => []);

@riverpod
class GroupController extends _$GroupController {
  @override
  FutureOr<void> build() async {}

  Future<void> getGroupListLocal() async {
    var repo = ref.read(getGroupLocalProvider.future);
    state = await AsyncValue.guard(() => repo).then((value) async {
      if (value.value != null) {
        List<GroupResponseRemote> listGroup = [];
        if (value.hasValue) {
          value.value?.forEach((element) async {
            listGroup.add(element);
          });
          ref.watch(groupListState.notifier).state = listGroup;
        }
      }
      return value;
    });
  }

  Future<void> getGroupList() async {
    try {
      var repo = ref.read(getGroupRemoteProvider.future);
      state = await AsyncValue.guard(() => repo).then((value) async {
        if (value.value != null && value.value != []) {
          List<GroupResponseRemote> listGroup = [];
          if (value.hasValue) {
            value.value?.forEach((element) async {
              listGroup.add(element);
            });
            ref.watch(groupListState.notifier).state = listGroup;
          }
        }
        return value;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
