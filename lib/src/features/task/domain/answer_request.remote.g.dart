// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_request.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAnswerRequestRemoteCollection on Isar {
  IsarCollection<AnswerRequestRemote> get answerRequestRemotes =>
      this.collection();
}

const AnswerRequestRemoteSchema = CollectionSchema(
  name: r'AnswerRequestRemote',
  id: -3457472311048628609,
  properties: {
    r'employeeName': PropertySchema(
      id: 0,
      name: r'employeeName',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 1,
      name: r'status',
      type: IsarType.long,
    ),
    r'submittedDate': PropertySchema(
      id: 2,
      name: r'submittedDate',
      type: IsarType.string,
    ),
    r'taskData': PropertySchema(
      id: 3,
      name: r'taskData',
      type: IsarType.objectList,
      target: r'TaskDatumAnswer',
    )
  },
  estimateSize: _answerRequestRemoteEstimateSize,
  serialize: _answerRequestRemoteSerialize,
  deserialize: _answerRequestRemoteDeserialize,
  deserializeProp: _answerRequestRemoteDeserializeProp,
  idName: r'employeeMissionId',
  indexes: {},
  links: {},
  embeddedSchemas: {r'TaskDatumAnswer': TaskDatumAnswerSchema},
  getId: _answerRequestRemoteGetId,
  getLinks: _answerRequestRemoteGetLinks,
  attach: _answerRequestRemoteAttach,
  version: '3.1.0+1',
);

int _answerRequestRemoteEstimateSize(
  AnswerRequestRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.employeeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.submittedDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.taskData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[TaskDatumAnswer]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              TaskDatumAnswerSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _answerRequestRemoteSerialize(
  AnswerRequestRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.employeeName);
  writer.writeLong(offsets[1], object.status);
  writer.writeString(offsets[2], object.submittedDate);
  writer.writeObjectList<TaskDatumAnswer>(
    offsets[3],
    allOffsets,
    TaskDatumAnswerSchema.serialize,
    object.taskData,
  );
}

AnswerRequestRemote _answerRequestRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AnswerRequestRemote(
    employeeMissionId: id,
    employeeName: reader.readStringOrNull(offsets[0]),
    status: reader.readLongOrNull(offsets[1]),
    submittedDate: reader.readStringOrNull(offsets[2]),
    taskData: reader.readObjectList<TaskDatumAnswer>(
      offsets[3],
      TaskDatumAnswerSchema.deserialize,
      allOffsets,
      TaskDatumAnswer(),
    ),
  );
  return object;
}

P _answerRequestRemoteDeserializeProp<P>(
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
      return (reader.readObjectList<TaskDatumAnswer>(
        offset,
        TaskDatumAnswerSchema.deserialize,
        allOffsets,
        TaskDatumAnswer(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _answerRequestRemoteGetId(AnswerRequestRemote object) {
  return object.employeeMissionId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _answerRequestRemoteGetLinks(
    AnswerRequestRemote object) {
  return [];
}

void _answerRequestRemoteAttach(
    IsarCollection<dynamic> col, Id id, AnswerRequestRemote object) {
  object.employeeMissionId = id;
}

extension AnswerRequestRemoteQueryWhereSort
    on QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QWhere> {
  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterWhere>
      anyEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AnswerRequestRemoteQueryWhere
    on QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QWhereClause> {
  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterWhereClause>
      employeeMissionIdEqualTo(Id employeeMissionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: employeeMissionId,
        upper: employeeMissionId,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterWhereClause>
      employeeMissionIdNotEqualTo(Id employeeMissionId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: employeeMissionId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: employeeMissionId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: employeeMissionId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: employeeMissionId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterWhereClause>
      employeeMissionIdGreaterThan(Id employeeMissionId,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(
            lower: employeeMissionId, includeLower: include),
      );
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterWhereClause>
      employeeMissionIdLessThan(Id employeeMissionId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: employeeMissionId, includeUpper: include),
      );
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterWhereClause>
      employeeMissionIdBetween(
    Id lowerEmployeeMissionId,
    Id upperEmployeeMissionId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerEmployeeMissionId,
        includeLower: includeLower,
        upper: upperEmployeeMissionId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AnswerRequestRemoteQueryFilter on QueryBuilder<AnswerRequestRemote,
    AnswerRequestRemote, QFilterCondition> {
  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeMissionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeMissionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeMissionIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeMissionId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeMissionIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employeeMissionId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeMissionIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employeeMissionId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeMissionIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employeeMissionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeName',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeName',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employeeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'employeeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeName',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      employeeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'employeeName',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      statusEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      statusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      statusLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      statusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'submittedDate',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'submittedDate',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'submittedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'submittedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'submittedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'submittedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'submittedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'submittedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'submittedDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      submittedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'submittedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      taskDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskData',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      taskDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskData',
      ));
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      taskDataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskData',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      taskDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskData',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      taskDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskData',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      taskDataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskData',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      taskDataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskData',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      taskDataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'taskData',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension AnswerRequestRemoteQueryObject on QueryBuilder<AnswerRequestRemote,
    AnswerRequestRemote, QFilterCondition> {
  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterFilterCondition>
      taskDataElement(FilterQuery<TaskDatumAnswer> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'taskData');
    });
  }
}

extension AnswerRequestRemoteQueryLinks on QueryBuilder<AnswerRequestRemote,
    AnswerRequestRemote, QFilterCondition> {}

extension AnswerRequestRemoteQuerySortBy
    on QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QSortBy> {
  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      sortByEmployeeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeName', Sort.asc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      sortByEmployeeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeName', Sort.desc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      sortBySubmittedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.asc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      sortBySubmittedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.desc);
    });
  }
}

extension AnswerRequestRemoteQuerySortThenBy
    on QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QSortThenBy> {
  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      thenByEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.asc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      thenByEmployeeMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.desc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      thenByEmployeeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeName', Sort.asc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      thenByEmployeeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeName', Sort.desc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      thenBySubmittedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.asc);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QAfterSortBy>
      thenBySubmittedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.desc);
    });
  }
}

extension AnswerRequestRemoteQueryWhereDistinct
    on QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QDistinct> {
  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QDistinct>
      distinctByEmployeeName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QDistinct>
      distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QDistinct>
      distinctBySubmittedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submittedDate',
          caseSensitive: caseSensitive);
    });
  }
}

extension AnswerRequestRemoteQueryProperty
    on QueryBuilder<AnswerRequestRemote, AnswerRequestRemote, QQueryProperty> {
  QueryBuilder<AnswerRequestRemote, int, QQueryOperations>
      employeeMissionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeMissionId');
    });
  }

  QueryBuilder<AnswerRequestRemote, String?, QQueryOperations>
      employeeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeName');
    });
  }

  QueryBuilder<AnswerRequestRemote, int?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<AnswerRequestRemote, String?, QQueryOperations>
      submittedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submittedDate');
    });
  }

  QueryBuilder<AnswerRequestRemote, List<TaskDatumAnswer>?, QQueryOperations>
      taskDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskData');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TaskDatumAnswerSchema = Schema(
  name: r'TaskDatumAnswer',
  id: 7254821061353201201,
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
    ),
    r'attachmentName': PropertySchema(
      id: 3,
      name: r'attachmentName',
      type: IsarType.string,
    ),
    r'taskGroup': PropertySchema(
      id: 4,
      name: r'taskGroup',
      type: IsarType.string,
    ),
    r'taskId': PropertySchema(
      id: 5,
      name: r'taskId',
      type: IsarType.long,
    )
  },
  estimateSize: _taskDatumAnswerEstimateSize,
  serialize: _taskDatumAnswerSerialize,
  deserialize: _taskDatumAnswerDeserialize,
  deserializeProp: _taskDatumAnswerDeserializeProp,
);

int _taskDatumAnswerEstimateSize(
  TaskDatumAnswer object,
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
  {
    final value = object.attachmentName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.taskGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _taskDatumAnswerSerialize(
  TaskDatumAnswer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answer);
  writer.writeString(offsets[1], object.attachment);
  writer.writeLong(offsets[2], object.attachmentId);
  writer.writeString(offsets[3], object.attachmentName);
  writer.writeString(offsets[4], object.taskGroup);
  writer.writeLong(offsets[5], object.taskId);
}

TaskDatumAnswer _taskDatumAnswerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskDatumAnswer(
    answer: reader.readStringOrNull(offsets[0]),
    attachment: reader.readStringOrNull(offsets[1]),
    attachmentId: reader.readLongOrNull(offsets[2]),
    attachmentName: reader.readStringOrNull(offsets[3]),
    taskGroup: reader.readStringOrNull(offsets[4]),
    taskId: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _taskDatumAnswerDeserializeProp<P>(
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
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TaskDatumAnswerQueryFilter
    on QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QFilterCondition> {
  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerEqualTo(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerGreaterThan(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerLessThan(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerBetween(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerStartsWith(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerEndsWith(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      answerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachment',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachment',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentEqualTo(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentGreaterThan(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentLessThan(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentBetween(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentStartsWith(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentEndsWith(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIdGreaterThan(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIdLessThan(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentIdBetween(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentName',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentName',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameEqualTo(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameGreaterThan(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameLessThan(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameBetween(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameStartsWith(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameEndsWith(
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachmentName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      attachmentNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskGroup',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskGroup',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taskGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taskGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
      taskIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
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

  QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QAfterFilterCondition>
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

extension TaskDatumAnswerQueryObject
    on QueryBuilder<TaskDatumAnswer, TaskDatumAnswer, QFilterCondition> {}
