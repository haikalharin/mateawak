// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_answer_past.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskAnswerPastRemoteCollection on Isar {
  IsarCollection<TaskAnswerPastRemote> get taskAnswerPastRemotes =>
      this.collection();
}

const TaskAnswerPastRemoteSchema = CollectionSchema(
  name: r'TaskAnswerPastRemote',
  id: -5447280082405135368,
  properties: {
    r'answer': PropertySchema(
      id: 0,
      name: r'answer',
      type: IsarType.string,
    ),
    r'answerAttachmentId': PropertySchema(
      id: 1,
      name: r'answerAttachmentId',
      type: IsarType.long,
    ),
    r'answerAttachmentName': PropertySchema(
      id: 2,
      name: r'answerAttachmentName',
      type: IsarType.string,
    ),
    r'answerAttachmentUrl': PropertySchema(
      id: 3,
      name: r'answerAttachmentUrl',
      type: IsarType.string,
    ),
    r'answerData': PropertySchema(
      id: 4,
      name: r'answerData',
      type: IsarType.objectList,
      target: r'AnswerDatumPast',
    ),
    r'answerReward': PropertySchema(
      id: 5,
      name: r'answerReward',
      type: IsarType.long,
    ),
    r'attachment': PropertySchema(
      id: 6,
      name: r'attachment',
      type: IsarType.string,
    ),
    r'attachmentId': PropertySchema(
      id: 7,
      name: r'attachmentId',
      type: IsarType.long,
    ),
    r'attachmentName': PropertySchema(
      id: 8,
      name: r'attachmentName',
      type: IsarType.string,
    ),
    r'feedbackComment': PropertySchema(
      id: 9,
      name: r'feedbackComment',
      type: IsarType.string,
    ),
    r'listSelectedOption': PropertySchema(
      id: 10,
      name: r'listSelectedOption',
      type: IsarType.longList,
    ),
    r'listSelectedOptionString': PropertySchema(
      id: 11,
      name: r'listSelectedOptionString',
      type: IsarType.stringList,
    ),
    r'qualitativeScoreId': PropertySchema(
      id: 12,
      name: r'qualitativeScoreId',
      type: IsarType.long,
    ),
    r'qualitativeScoreName': PropertySchema(
      id: 13,
      name: r'qualitativeScoreName',
      type: IsarType.string,
    ),
    r'taskCaption': PropertySchema(
      id: 14,
      name: r'taskCaption',
      type: IsarType.string,
    ),
    r'taskReward': PropertySchema(
      id: 15,
      name: r'taskReward',
      type: IsarType.long,
    ),
    r'taskTypeCode': PropertySchema(
      id: 16,
      name: r'taskTypeCode',
      type: IsarType.string,
    ),
    r'taskTypeName': PropertySchema(
      id: 17,
      name: r'taskTypeName',
      type: IsarType.string,
    )
  },
  estimateSize: _taskAnswerPastRemoteEstimateSize,
  serialize: _taskAnswerPastRemoteSerialize,
  deserialize: _taskAnswerPastRemoteDeserialize,
  deserializeProp: _taskAnswerPastRemoteDeserializeProp,
  idName: r'taskId',
  indexes: {},
  links: {},
  embeddedSchemas: {r'AnswerDatumPast': AnswerDatumPastSchema},
  getId: _taskAnswerPastRemoteGetId,
  getLinks: _taskAnswerPastRemoteGetLinks,
  attach: _taskAnswerPastRemoteAttach,
  version: '3.1.0+1',
);

int _taskAnswerPastRemoteEstimateSize(
  TaskAnswerPastRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.answer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.answerAttachmentName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.answerAttachmentUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.answerData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[AnswerDatumPast]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              AnswerDatumPastSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.attachment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.attachmentName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.feedbackComment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.listSelectedOption;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final list = object.listSelectedOptionString;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.qualitativeScoreName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.taskCaption;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.taskTypeCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.taskTypeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _taskAnswerPastRemoteSerialize(
  TaskAnswerPastRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answer);
  writer.writeLong(offsets[1], object.answerAttachmentId);
  writer.writeString(offsets[2], object.answerAttachmentName);
  writer.writeString(offsets[3], object.answerAttachmentUrl);
  writer.writeObjectList<AnswerDatumPast>(
    offsets[4],
    allOffsets,
    AnswerDatumPastSchema.serialize,
    object.answerData,
  );
  writer.writeLong(offsets[5], object.answerReward);
  writer.writeString(offsets[6], object.attachment);
  writer.writeLong(offsets[7], object.attachmentId);
  writer.writeString(offsets[8], object.attachmentName);
  writer.writeString(offsets[9], object.feedbackComment);
  writer.writeLongList(offsets[10], object.listSelectedOption);
  writer.writeStringList(offsets[11], object.listSelectedOptionString);
  writer.writeLong(offsets[12], object.qualitativeScoreId);
  writer.writeString(offsets[13], object.qualitativeScoreName);
  writer.writeString(offsets[14], object.taskCaption);
  writer.writeLong(offsets[15], object.taskReward);
  writer.writeString(offsets[16], object.taskTypeCode);
  writer.writeString(offsets[17], object.taskTypeName);
}

TaskAnswerPastRemote _taskAnswerPastRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskAnswerPastRemote(
    answer: reader.readStringOrNull(offsets[0]),
    answerAttachmentId: reader.readLongOrNull(offsets[1]),
    answerAttachmentName: reader.readStringOrNull(offsets[2]),
    answerAttachmentUrl: reader.readStringOrNull(offsets[3]),
    answerData: reader.readObjectList<AnswerDatumPast>(
      offsets[4],
      AnswerDatumPastSchema.deserialize,
      allOffsets,
      AnswerDatumPast(),
    ),
    answerReward: reader.readLongOrNull(offsets[5]),
    attachment: reader.readStringOrNull(offsets[6]),
    attachmentId: reader.readLongOrNull(offsets[7]),
    attachmentName: reader.readStringOrNull(offsets[8]),
    feedbackComment: reader.readStringOrNull(offsets[9]),
    listSelectedOption: reader.readLongList(offsets[10]),
    listSelectedOptionString: reader.readStringList(offsets[11]),
    qualitativeScoreId: reader.readLongOrNull(offsets[12]),
    qualitativeScoreName: reader.readStringOrNull(offsets[13]),
    taskCaption: reader.readStringOrNull(offsets[14]),
    taskId: id,
    taskReward: reader.readLongOrNull(offsets[15]),
    taskTypeCode: reader.readStringOrNull(offsets[16]),
    taskTypeName: reader.readStringOrNull(offsets[17]),
  );
  return object;
}

P _taskAnswerPastRemoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readObjectList<AnswerDatumPast>(
        offset,
        AnswerDatumPastSchema.deserialize,
        allOffsets,
        AnswerDatumPast(),
      )) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongList(offset)) as P;
    case 11:
      return (reader.readStringList(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _taskAnswerPastRemoteGetId(TaskAnswerPastRemote object) {
  return object.taskId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _taskAnswerPastRemoteGetLinks(
    TaskAnswerPastRemote object) {
  return [];
}

void _taskAnswerPastRemoteAttach(
    IsarCollection<dynamic> col, Id id, TaskAnswerPastRemote object) {
  object.taskId = id;
}

extension TaskAnswerPastRemoteQueryWhereSort
    on QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QWhere> {
  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterWhere>
      anyTaskId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TaskAnswerPastRemoteQueryWhere
    on QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QWhereClause> {
  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterWhereClause>
      taskIdEqualTo(Id taskId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: taskId,
        upper: taskId,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterWhereClause>
      taskIdNotEqualTo(Id taskId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: taskId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: taskId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: taskId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: taskId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterWhereClause>
      taskIdGreaterThan(Id taskId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: taskId, includeLower: include),
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterWhereClause>
      taskIdLessThan(Id taskId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: taskId, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterWhereClause>
      taskIdBetween(
    Id lowerTaskId,
    Id upperTaskId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerTaskId,
        includeLower: includeLower,
        upper: upperTaskId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TaskAnswerPastRemoteQueryFilter on QueryBuilder<TaskAnswerPastRemote,
    TaskAnswerPastRemote, QFilterCondition> {
  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      answerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      answerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerAttachmentId',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerAttachmentId',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerAttachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerAttachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerAttachmentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerAttachmentName',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerAttachmentName',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerAttachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerAttachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerAttachmentName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answerAttachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answerAttachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      answerAttachmentNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerAttachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      answerAttachmentNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerAttachmentName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerAttachmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerAttachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerAttachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerAttachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerAttachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerAttachmentUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answerAttachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answerAttachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      answerAttachmentUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerAttachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      answerAttachmentUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerAttachmentUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerAttachmentUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerAttachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerData',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerData',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerDataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answerData',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answerData',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answerData',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerDataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answerData',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerDataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answerData',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerDataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answerData',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerRewardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerReward',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerRewardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerReward',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerRewardEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerRewardGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerRewardLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerRewardBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerReward',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachment',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachment',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attachment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attachment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      attachmentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      attachmentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachmentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentName',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentName',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachmentName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      attachmentNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      attachmentNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachmentName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> attachmentNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feedbackComment',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feedbackComment',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feedbackComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feedbackComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feedbackComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feedbackComment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'feedbackComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'feedbackComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      feedbackCommentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'feedbackComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      feedbackCommentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'feedbackComment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feedbackComment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> feedbackCommentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'feedbackComment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'listSelectedOption',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'listSelectedOption',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listSelectedOption',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listSelectedOption',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listSelectedOption',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listSelectedOption',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOption',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOption',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOption',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOption',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOption',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOption',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'listSelectedOptionString',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'listSelectedOptionString',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listSelectedOptionString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listSelectedOptionString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listSelectedOptionString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listSelectedOptionString',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'listSelectedOptionString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'listSelectedOptionString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      listSelectedOptionStringElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'listSelectedOptionString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      listSelectedOptionStringElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'listSelectedOptionString',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listSelectedOptionString',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'listSelectedOptionString',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOptionString',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOptionString',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOptionString',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOptionString',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOptionString',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> listSelectedOptionStringLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listSelectedOptionString',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualitativeScoreId',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualitativeScoreId',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualitativeScoreId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qualitativeScoreId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qualitativeScoreId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qualitativeScoreId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualitativeScoreName',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualitativeScoreName',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualitativeScoreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qualitativeScoreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qualitativeScoreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qualitativeScoreName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'qualitativeScoreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'qualitativeScoreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      qualitativeScoreNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'qualitativeScoreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      qualitativeScoreNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'qualitativeScoreName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualitativeScoreName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> qualitativeScoreNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qualitativeScoreName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskCaption',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskCaption',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskCaption',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taskCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taskCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      taskCaptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      taskCaptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskCaption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskCaptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskRewardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskReward',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskRewardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskReward',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskRewardEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskRewardGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskRewardLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskRewardBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskReward',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskTypeCode',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskTypeCode',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskTypeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taskTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taskTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      taskTypeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      taskTypeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskTypeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskTypeName',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskTypeName',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskTypeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taskTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taskTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      taskTypeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
          QAfterFilterCondition>
      taskTypeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskTypeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> taskTypeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskTypeName',
        value: '',
      ));
    });
  }
}

extension TaskAnswerPastRemoteQueryObject on QueryBuilder<TaskAnswerPastRemote,
    TaskAnswerPastRemote, QFilterCondition> {
  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote,
      QAfterFilterCondition> answerDataElement(FilterQuery<AnswerDatumPast> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'answerData');
    });
  }
}

extension TaskAnswerPastRemoteQueryLinks on QueryBuilder<TaskAnswerPastRemote,
    TaskAnswerPastRemote, QFilterCondition> {}

extension TaskAnswerPastRemoteQuerySortBy
    on QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QSortBy> {
  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswerAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentId', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswerAttachmentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentId', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswerAttachmentName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentName', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswerAttachmentNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentName', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswerAttachmentUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentUrl', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswerAttachmentUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentUrl', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswerReward() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerReward', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAnswerRewardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerReward', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAttachment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachment', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAttachmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachment', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAttachmentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAttachmentName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentName', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByAttachmentNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentName', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByFeedbackComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedbackComment', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByFeedbackCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedbackComment', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByQualitativeScoreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScoreId', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByQualitativeScoreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScoreId', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByQualitativeScoreName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScoreName', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByQualitativeScoreNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScoreName', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByTaskCaption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskCaption', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByTaskCaptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskCaption', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByTaskReward() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskReward', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByTaskRewardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskReward', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByTaskTypeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskTypeCode', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByTaskTypeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskTypeCode', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByTaskTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskTypeName', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      sortByTaskTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskTypeName', Sort.desc);
    });
  }
}

extension TaskAnswerPastRemoteQuerySortThenBy
    on QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QSortThenBy> {
  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswerAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentId', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswerAttachmentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentId', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswerAttachmentName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentName', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswerAttachmentNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentName', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswerAttachmentUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentUrl', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswerAttachmentUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerAttachmentUrl', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswerReward() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerReward', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAnswerRewardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerReward', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAttachment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachment', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAttachmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachment', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAttachmentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAttachmentName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentName', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByAttachmentNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentName', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByFeedbackComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedbackComment', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByFeedbackCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feedbackComment', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByQualitativeScoreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScoreId', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByQualitativeScoreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScoreId', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByQualitativeScoreName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScoreName', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByQualitativeScoreNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScoreName', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskCaption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskCaption', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskCaptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskCaption', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskId', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskId', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskReward() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskReward', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskRewardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskReward', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskTypeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskTypeCode', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskTypeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskTypeCode', Sort.desc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskTypeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskTypeName', Sort.asc);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QAfterSortBy>
      thenByTaskTypeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskTypeName', Sort.desc);
    });
  }
}

extension TaskAnswerPastRemoteQueryWhereDistinct
    on QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct> {
  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByAnswer({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'answer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByAnswerAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'answerAttachmentId');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByAnswerAttachmentName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'answerAttachmentName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByAnswerAttachmentUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'answerAttachmentUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByAnswerReward() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'answerReward');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByAttachment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachmentId');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByAttachmentName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachmentName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByFeedbackComment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feedbackComment',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByListSelectedOption() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listSelectedOption');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByListSelectedOptionString() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listSelectedOptionString');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByQualitativeScoreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qualitativeScoreId');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByQualitativeScoreName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qualitativeScoreName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByTaskCaption({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taskCaption', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByTaskReward() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taskReward');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByTaskTypeCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taskTypeCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskAnswerPastRemote, TaskAnswerPastRemote, QDistinct>
      distinctByTaskTypeName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taskTypeName', caseSensitive: caseSensitive);
    });
  }
}

extension TaskAnswerPastRemoteQueryProperty on QueryBuilder<
    TaskAnswerPastRemote, TaskAnswerPastRemote, QQueryProperty> {
  QueryBuilder<TaskAnswerPastRemote, int, QQueryOperations> taskIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskId');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      answerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answer');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, int?, QQueryOperations>
      answerAttachmentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answerAttachmentId');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      answerAttachmentNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answerAttachmentName');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      answerAttachmentUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answerAttachmentUrl');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, List<AnswerDatumPast>?, QQueryOperations>
      answerDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answerData');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, int?, QQueryOperations>
      answerRewardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answerReward');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      attachmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachment');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, int?, QQueryOperations>
      attachmentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachmentId');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      attachmentNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachmentName');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      feedbackCommentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feedbackComment');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, List<int>?, QQueryOperations>
      listSelectedOptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listSelectedOption');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, List<String>?, QQueryOperations>
      listSelectedOptionStringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listSelectedOptionString');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, int?, QQueryOperations>
      qualitativeScoreIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qualitativeScoreId');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      qualitativeScoreNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qualitativeScoreName');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      taskCaptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskCaption');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, int?, QQueryOperations>
      taskRewardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskReward');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      taskTypeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskTypeCode');
    });
  }

  QueryBuilder<TaskAnswerPastRemote, String?, QQueryOperations>
      taskTypeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskTypeName');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const AnswerDatumPastSchema = Schema(
  name: r'AnswerDatumPast',
  id: 2263514258210614861,
  properties: {
    r'answerCaption': PropertySchema(
      id: 0,
      name: r'answerCaption',
      type: IsarType.string,
    ),
    r'answerCode': PropertySchema(
      id: 1,
      name: r'answerCode',
      type: IsarType.string,
    ),
    r'answerField': PropertySchema(
      id: 2,
      name: r'answerField',
      type: IsarType.string,
    ),
    r'answerId': PropertySchema(
      id: 3,
      name: r'answerId',
      type: IsarType.long,
    ),
    r'isCorrectAnswer': PropertySchema(
      id: 4,
      name: r'isCorrectAnswer',
      type: IsarType.bool,
    ),
    r'taskId': PropertySchema(
      id: 5,
      name: r'taskId',
      type: IsarType.long,
    )
  },
  estimateSize: _answerDatumPastEstimateSize,
  serialize: _answerDatumPastSerialize,
  deserialize: _answerDatumPastDeserialize,
  deserializeProp: _answerDatumPastDeserializeProp,
);

int _answerDatumPastEstimateSize(
  AnswerDatumPast object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.answerCaption;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.answerCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.answerField;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _answerDatumPastSerialize(
  AnswerDatumPast object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answerCaption);
  writer.writeString(offsets[1], object.answerCode);
  writer.writeString(offsets[2], object.answerField);
  writer.writeLong(offsets[3], object.answerId);
  writer.writeBool(offsets[4], object.isCorrectAnswer);
  writer.writeLong(offsets[5], object.taskId);
}

AnswerDatumPast _answerDatumPastDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AnswerDatumPast(
    answerCaption: reader.readStringOrNull(offsets[0]),
    answerCode: reader.readStringOrNull(offsets[1]),
    answerField: reader.readStringOrNull(offsets[2]),
    answerId: reader.readLongOrNull(offsets[3]),
    isCorrectAnswer: reader.readBoolOrNull(offsets[4]),
    taskId: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _answerDatumPastDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension AnswerDatumPastQueryFilter
    on QueryBuilder<AnswerDatumPast, AnswerDatumPast, QFilterCondition> {
  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerCaption',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerCaption',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerCaption',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answerCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answerCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerCaption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCaptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerCode',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerCode',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answerCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answerCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerField',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerField',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerField',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answerField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answerField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerField',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerField',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerFieldIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerField',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerId',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerId',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      answerIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      isCorrectAnswerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isCorrectAnswer',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      isCorrectAnswerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isCorrectAnswer',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      isCorrectAnswerEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCorrectAnswer',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      taskIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      taskIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      taskIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      taskIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      taskIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatumPast, AnswerDatumPast, QAfterFilterCondition>
      taskIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AnswerDatumPastQueryObject
    on QueryBuilder<AnswerDatumPast, AnswerDatumPast, QFilterCondition> {}
