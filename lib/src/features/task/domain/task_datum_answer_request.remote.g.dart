// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_datum_answer_request.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskDatumAnswerRequestRemoteCollection on Isar {
  IsarCollection<TaskDatumAnswerRequestRemote>
      get taskDatumAnswerRequestRemotes => this.collection();
}

const TaskDatumAnswerRequestRemoteSchema = CollectionSchema(
  name: r'TaskDatumAnswerRequestRemote',
  id: -9054338593087837023,
  properties: {
    r'answer': PropertySchema(
      id: 0,
      name: r'answer',
      type: IsarType.string,
    ),
    r'attachment': PropertySchema(
      id: 1,
      name: r'attachment',
      type: IsarType.string,
    ),
    r'attachmentId': PropertySchema(
      id: 2,
      name: r'attachmentId',
      type: IsarType.long,
    )
  },
  estimateSize: _taskDatumAnswerRequestRemoteEstimateSize,
  serialize: _taskDatumAnswerRequestRemoteSerialize,
  deserialize: _taskDatumAnswerRequestRemoteDeserialize,
  deserializeProp: _taskDatumAnswerRequestRemoteDeserializeProp,
  idName: r'taskId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _taskDatumAnswerRequestRemoteGetId,
  getLinks: _taskDatumAnswerRequestRemoteGetLinks,
  attach: _taskDatumAnswerRequestRemoteAttach,
  version: '3.1.0+1',
);

int _taskDatumAnswerRequestRemoteEstimateSize(
  TaskDatumAnswerRequestRemote object,
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
    final value = object.attachment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _taskDatumAnswerRequestRemoteSerialize(
  TaskDatumAnswerRequestRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answer);
  writer.writeString(offsets[1], object.attachment);
  writer.writeLong(offsets[2], object.attachmentId);
}

TaskDatumAnswerRequestRemote _taskDatumAnswerRequestRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskDatumAnswerRequestRemote(
    answer: reader.readStringOrNull(offsets[0]),
    attachment: reader.readStringOrNull(offsets[1]),
    attachmentId: reader.readLongOrNull(offsets[2]),
    taskId: id,
  );
  return object;
}

P _taskDatumAnswerRequestRemoteDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _taskDatumAnswerRequestRemoteGetId(TaskDatumAnswerRequestRemote object) {
  return object.taskId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _taskDatumAnswerRequestRemoteGetLinks(
    TaskDatumAnswerRequestRemote object) {
  return [];
}

void _taskDatumAnswerRequestRemoteAttach(
    IsarCollection<dynamic> col, Id id, TaskDatumAnswerRequestRemote object) {
  object.taskId = id;
}

extension TaskDatumAnswerRequestRemoteQueryWhereSort on QueryBuilder<
    TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote, QWhere> {
  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterWhere> anyTaskId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TaskDatumAnswerRequestRemoteQueryWhere on QueryBuilder<
    TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote, QWhereClause> {
  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterWhereClause> taskIdEqualTo(Id taskId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: taskId,
        upper: taskId,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterWhereClause> taskIdNotEqualTo(Id taskId) {
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterWhereClause> taskIdGreaterThan(Id taskId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: taskId, includeLower: include),
      );
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterWhereClause> taskIdLessThan(Id taskId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: taskId, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterWhereClause> taskIdBetween(
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

extension TaskDatumAnswerRequestRemoteQueryFilter on QueryBuilder<
    TaskDatumAnswerRequestRemote,
    TaskDatumAnswerRequestRemote,
    QFilterCondition> {
  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> answerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> answerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> answerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> answerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> attachmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachment',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> attachmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachment',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> attachmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> attachmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> attachmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> attachmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> attachmentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> taskIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> taskIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterFilterCondition> taskIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
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
}

extension TaskDatumAnswerRequestRemoteQueryObject on QueryBuilder<
    TaskDatumAnswerRequestRemote,
    TaskDatumAnswerRequestRemote,
    QFilterCondition> {}

extension TaskDatumAnswerRequestRemoteQueryLinks on QueryBuilder<
    TaskDatumAnswerRequestRemote,
    TaskDatumAnswerRequestRemote,
    QFilterCondition> {}

extension TaskDatumAnswerRequestRemoteQuerySortBy on QueryBuilder<
    TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote, QSortBy> {
  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> sortByAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.asc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> sortByAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.desc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> sortByAttachment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachment', Sort.asc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> sortByAttachmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachment', Sort.desc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> sortByAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.asc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> sortByAttachmentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.desc);
    });
  }
}

extension TaskDatumAnswerRequestRemoteQuerySortThenBy on QueryBuilder<
    TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote, QSortThenBy> {
  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> thenByAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.asc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> thenByAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answer', Sort.desc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> thenByAttachment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachment', Sort.asc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> thenByAttachmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachment', Sort.desc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> thenByAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.asc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> thenByAttachmentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.desc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> thenByTaskId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskId', Sort.asc);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QAfterSortBy> thenByTaskIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskId', Sort.desc);
    });
  }
}

extension TaskDatumAnswerRequestRemoteQueryWhereDistinct on QueryBuilder<
    TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote, QDistinct> {
  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QDistinct> distinctByAnswer({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'answer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QDistinct> distinctByAttachment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, TaskDatumAnswerRequestRemote,
      QDistinct> distinctByAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachmentId');
    });
  }
}

extension TaskDatumAnswerRequestRemoteQueryProperty on QueryBuilder<
    TaskDatumAnswerRequestRemote,
    TaskDatumAnswerRequestRemote,
    QQueryProperty> {
  QueryBuilder<TaskDatumAnswerRequestRemote, int, QQueryOperations>
      taskIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskId');
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, String?, QQueryOperations>
      answerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answer');
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, String?, QQueryOperations>
      attachmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachment');
    });
  }

  QueryBuilder<TaskDatumAnswerRequestRemote, int?, QQueryOperations>
      attachmentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachmentId');
    });
  }
}
