import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/growth/domain/group_response.remote.dart';
import 'package:module_etamkawa/src/features/growth/domain/growth_additional_detail.remote.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_additional_detail.remote.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/download_attachment_request.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/task_datum_answer_request.remote.dart';
import 'package:module_etamkawa/src/features/telematry/domain/telematry_data_model.dart';
import 'package:module_etamkawa/src/features/validation/domain/validation_response.remote.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../overview/domain/news_response.remote.dart';

part 'isar.repository.g.dart';

@riverpod
Future<Isar> isarInstance(IsarInstanceRef ref) async {
  final dir = await getApplicationSupportDirectory();
  final existingIsarInstance = Isar.getInstance(Constant.etamkawaIsarInstance);

  //Add other Isar Scheme here
  final isar = existingIsarInstance ??
      await Isar.open([

        //Overview
        NewsResponseRemoteSchema,
        DownloadAttachmentNewsRequestRemoteSchema,
        GamificationResponseRemoteSchema,
        TaskDatumAnswerRequestRemoteSchema,
        AnswerRequestRemoteSchema,
        GamificationAdditionalDetailRemoteSchema,
        ValidationResponseRemoteSchema,
        TelematryDataModelSchema,
        GroupResponseRemoteSchema,
        GrowthAdditionalDetailRemoteSchema,
      ], directory: dir.path, name: Constant.etamkawaIsarInstance);

  return isar;
}
