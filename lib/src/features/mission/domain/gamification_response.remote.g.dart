// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamification_response.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGamificationResponseRemoteCollection on Isar {
  IsarCollection<GamificationResponseRemote> get gamificationResponseRemotes =>
      this.collection();
}

const GamificationResponseRemoteSchema = CollectionSchema(
  name: r'GamificationResponseRemote',
  id: -7235016258457041350,
  properties: {
    r'accuracy': PropertySchema(
      id: 0,
      name: r'accuracy',
      type: IsarType.long,
    ),
    r'chapterData': PropertySchema(
      id: 1,
      name: r'chapterData',
      type: IsarType.objectList,
      target: r'ChapterDatum',
    ),
    r'completedBy': PropertySchema(
      id: 2,
      name: r'completedBy',
      type: IsarType.string,
    ),
    r'completedDate': PropertySchema(
      id: 3,
      name: r'completedDate',
      type: IsarType.string,
    ),
    r'dueDate': PropertySchema(
      id: 4,
      name: r'dueDate',
      type: IsarType.string,
    ),
    r'employeeId': PropertySchema(
      id: 5,
      name: r'employeeId',
      type: IsarType.long,
    ),
    r'missionId': PropertySchema(
      id: 6,
      name: r'missionId',
      type: IsarType.long,
    ),
    r'missionStatus': PropertySchema(
      id: 7,
      name: r'missionStatus',
      type: IsarType.string,
    ),
    r'missionStatusCode': PropertySchema(
      id: 8,
      name: r'missionStatusCode',
      type: IsarType.long,
    ),
    r'rewardGained': PropertySchema(
      id: 9,
      name: r'rewardGained',
      type: IsarType.long,
    ),
    r'startedDate': PropertySchema(
      id: 10,
      name: r'startedDate',
      type: IsarType.string,
    ),
    r'submittedBy': PropertySchema(
      id: 11,
      name: r'submittedBy',
      type: IsarType.string,
    ),
    r'submittedDate': PropertySchema(
      id: 12,
      name: r'submittedDate',
      type: IsarType.string,
    ),
    r'validatorId': PropertySchema(
      id: 13,
      name: r'validatorId',
      type: IsarType.long,
    )
  },
  estimateSize: _gamificationResponseRemoteEstimateSize,
  serialize: _gamificationResponseRemoteSerialize,
  deserialize: _gamificationResponseRemoteDeserialize,
  deserializeProp: _gamificationResponseRemoteDeserializeProp,
  idName: r'employeeMissionId',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ChapterDatum': ChapterDatumSchema,
    r'MissionDatum': MissionDatumSchema,
    r'TaskDatum': TaskDatumSchema,
    r'AnswerDatum': AnswerDatumSchema
  },
  getId: _gamificationResponseRemoteGetId,
  getLinks: _gamificationResponseRemoteGetLinks,
  attach: _gamificationResponseRemoteAttach,
  version: '3.1.0+1',
);

int _gamificationResponseRemoteEstimateSize(
  GamificationResponseRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.chapterData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ChapterDatum]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ChapterDatumSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.completedBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.completedDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dueDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.missionStatus;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.startedDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.submittedBy;
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
  return bytesCount;
}

void _gamificationResponseRemoteSerialize(
  GamificationResponseRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.accuracy);
  writer.writeObjectList<ChapterDatum>(
    offsets[1],
    allOffsets,
    ChapterDatumSchema.serialize,
    object.chapterData,
  );
  writer.writeString(offsets[2], object.completedBy);
  writer.writeString(offsets[3], object.completedDate);
  writer.writeString(offsets[4], object.dueDate);
  writer.writeLong(offsets[5], object.employeeId);
  writer.writeLong(offsets[6], object.missionId);
  writer.writeString(offsets[7], object.missionStatus);
  writer.writeLong(offsets[8], object.missionStatusCode);
  writer.writeLong(offsets[9], object.rewardGained);
  writer.writeString(offsets[10], object.startedDate);
  writer.writeString(offsets[11], object.submittedBy);
  writer.writeString(offsets[12], object.submittedDate);
  writer.writeLong(offsets[13], object.validatorId);
}

GamificationResponseRemote _gamificationResponseRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GamificationResponseRemote(
    accuracy: reader.readLongOrNull(offsets[0]),
    chapterData: reader.readObjectList<ChapterDatum>(
      offsets[1],
      ChapterDatumSchema.deserialize,
      allOffsets,
      ChapterDatum(),
    ),
    completedBy: reader.readStringOrNull(offsets[2]),
    completedDate: reader.readStringOrNull(offsets[3]),
    dueDate: reader.readStringOrNull(offsets[4]),
    employeeId: reader.readLongOrNull(offsets[5]),
    employeeMissionId: id,
    missionId: reader.readLongOrNull(offsets[6]),
    missionStatus: reader.readStringOrNull(offsets[7]),
    missionStatusCode: reader.readLongOrNull(offsets[8]),
    rewardGained: reader.readLongOrNull(offsets[9]),
    startedDate: reader.readStringOrNull(offsets[10]),
    submittedBy: reader.readStringOrNull(offsets[11]),
    submittedDate: reader.readStringOrNull(offsets[12]),
    validatorId: reader.readLongOrNull(offsets[13]),
  );
  return object;
}

P _gamificationResponseRemoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readObjectList<ChapterDatum>(
        offset,
        ChapterDatumSchema.deserialize,
        allOffsets,
        ChapterDatum(),
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _gamificationResponseRemoteGetId(GamificationResponseRemote object) {
  return object.employeeMissionId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _gamificationResponseRemoteGetLinks(
    GamificationResponseRemote object) {
  return [];
}

void _gamificationResponseRemoteAttach(
    IsarCollection<dynamic> col, Id id, GamificationResponseRemote object) {
  object.employeeMissionId = id;
}

extension GamificationResponseRemoteQueryWhereSort on QueryBuilder<
    GamificationResponseRemote, GamificationResponseRemote, QWhere> {
  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterWhere> anyEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GamificationResponseRemoteQueryWhere on QueryBuilder<
    GamificationResponseRemote, GamificationResponseRemote, QWhereClause> {
  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterWhereClause> employeeMissionIdEqualTo(Id employeeMissionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: employeeMissionId,
        upper: employeeMissionId,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterWhereClause> employeeMissionIdNotEqualTo(Id employeeMissionId) {
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterWhereClause>
      employeeMissionIdGreaterThan(Id employeeMissionId,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(
            lower: employeeMissionId, includeLower: include),
      );
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterWhereClause>
      employeeMissionIdLessThan(Id employeeMissionId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: employeeMissionId, includeUpper: include),
      );
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterWhereClause> employeeMissionIdBetween(
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

extension GamificationResponseRemoteQueryFilter on QueryBuilder<
    GamificationResponseRemote, GamificationResponseRemote, QFilterCondition> {
  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> accuracyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accuracy',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> accuracyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accuracy',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> accuracyEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accuracy',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> accuracyGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accuracy',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> accuracyLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accuracy',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> accuracyBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accuracy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> chapterDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterData',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> chapterDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterData',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> chapterDataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'chapterData',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> chapterDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'chapterData',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> chapterDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'chapterData',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> chapterDataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'chapterData',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> chapterDataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'chapterData',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> chapterDataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'chapterData',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedBy',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedBy',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'completedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'completedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      completedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'completedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      completedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'completedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'completedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedDate',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedDate',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'completedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'completedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      completedDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'completedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      completedDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'completedDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> completedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'completedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dueDate',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dueDate',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dueDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      dueDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      dueDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dueDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> dueDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employeeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeMissionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeMissionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeMissionIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeMissionId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeMissionIdGreaterThan(
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeMissionIdLessThan(
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> employeeMissionIdBetween(
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionStatus',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionStatus',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'missionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'missionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      missionStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      missionStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionStatusCode',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionStatusCode',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusCodeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionStatusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionStatusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionStatusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> missionStatusCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionStatusCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> rewardGainedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rewardGained',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> rewardGainedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rewardGained',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> rewardGainedEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rewardGained',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> rewardGainedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rewardGained',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> rewardGainedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rewardGained',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> rewardGainedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rewardGained',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'startedDate',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'startedDate',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'startedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'startedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      startedDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'startedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      startedDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'startedDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> startedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'startedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'submittedBy',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'submittedBy',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'submittedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'submittedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'submittedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'submittedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'submittedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      submittedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'submittedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      submittedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'submittedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'submittedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'submittedDate',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'submittedDate',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateEqualTo(
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateGreaterThan(
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateLessThan(
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateBetween(
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateStartsWith(
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateEndsWith(
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

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      submittedDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'submittedDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
          QAfterFilterCondition>
      submittedDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'submittedDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> submittedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'submittedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> validatorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'validatorId',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> validatorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'validatorId',
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> validatorIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> validatorIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'validatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> validatorIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'validatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> validatorIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'validatorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GamificationResponseRemoteQueryObject on QueryBuilder<
    GamificationResponseRemote, GamificationResponseRemote, QFilterCondition> {
  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterFilterCondition> chapterDataElement(FilterQuery<ChapterDatum> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'chapterData');
    });
  }
}

extension GamificationResponseRemoteQueryLinks on QueryBuilder<
    GamificationResponseRemote, GamificationResponseRemote, QFilterCondition> {}

extension GamificationResponseRemoteQuerySortBy on QueryBuilder<
    GamificationResponseRemote, GamificationResponseRemote, QSortBy> {
  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByAccuracy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracy', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByAccuracyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracy', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByCompletedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByCompletedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByCompletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByCompletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByMissionStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByMissionStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByMissionStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByMissionStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByRewardGained() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardGained', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByRewardGainedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardGained', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByStartedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByStartedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortBySubmittedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortBySubmittedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortBySubmittedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortBySubmittedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByValidatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> sortByValidatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.desc);
    });
  }
}

extension GamificationResponseRemoteQuerySortThenBy on QueryBuilder<
    GamificationResponseRemote, GamificationResponseRemote, QSortThenBy> {
  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByAccuracy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracy', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByAccuracyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracy', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByCompletedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByCompletedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByCompletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByCompletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByEmployeeMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByMissionStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByMissionStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByMissionStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByMissionStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByRewardGained() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardGained', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByRewardGainedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardGained', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByStartedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByStartedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenBySubmittedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenBySubmittedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenBySubmittedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenBySubmittedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.desc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByValidatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.asc);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QAfterSortBy> thenByValidatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.desc);
    });
  }
}

extension GamificationResponseRemoteQueryWhereDistinct on QueryBuilder<
    GamificationResponseRemote, GamificationResponseRemote, QDistinct> {
  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByAccuracy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accuracy');
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByCompletedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByCompletedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByDueDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dueDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeId');
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionId');
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByMissionStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByMissionStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionStatusCode');
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByRewardGained() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rewardGained');
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByStartedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctBySubmittedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submittedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctBySubmittedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submittedDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GamificationResponseRemote, GamificationResponseRemote,
      QDistinct> distinctByValidatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validatorId');
    });
  }
}

extension GamificationResponseRemoteQueryProperty on QueryBuilder<
    GamificationResponseRemote, GamificationResponseRemote, QQueryProperty> {
  QueryBuilder<GamificationResponseRemote, int, QQueryOperations>
      employeeMissionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeMissionId');
    });
  }

  QueryBuilder<GamificationResponseRemote, int?, QQueryOperations>
      accuracyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accuracy');
    });
  }

  QueryBuilder<GamificationResponseRemote, List<ChapterDatum>?,
      QQueryOperations> chapterDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chapterData');
    });
  }

  QueryBuilder<GamificationResponseRemote, String?, QQueryOperations>
      completedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedBy');
    });
  }

  QueryBuilder<GamificationResponseRemote, String?, QQueryOperations>
      completedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedDate');
    });
  }

  QueryBuilder<GamificationResponseRemote, String?, QQueryOperations>
      dueDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dueDate');
    });
  }

  QueryBuilder<GamificationResponseRemote, int?, QQueryOperations>
      employeeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeId');
    });
  }

  QueryBuilder<GamificationResponseRemote, int?, QQueryOperations>
      missionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionId');
    });
  }

  QueryBuilder<GamificationResponseRemote, String?, QQueryOperations>
      missionStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionStatus');
    });
  }

  QueryBuilder<GamificationResponseRemote, int?, QQueryOperations>
      missionStatusCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionStatusCode');
    });
  }

  QueryBuilder<GamificationResponseRemote, int?, QQueryOperations>
      rewardGainedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rewardGained');
    });
  }

  QueryBuilder<GamificationResponseRemote, String?, QQueryOperations>
      startedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedDate');
    });
  }

  QueryBuilder<GamificationResponseRemote, String?, QQueryOperations>
      submittedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submittedBy');
    });
  }

  QueryBuilder<GamificationResponseRemote, String?, QQueryOperations>
      submittedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submittedDate');
    });
  }

  QueryBuilder<GamificationResponseRemote, int?, QQueryOperations>
      validatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validatorId');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ChapterDatumSchema = Schema(
  name: r'ChapterDatum',
  id: 2421858676215551799,
  properties: {
    r'chapterCode': PropertySchema(
      id: 0,
      name: r'chapterCode',
      type: IsarType.string,
    ),
    r'chapterGoal': PropertySchema(
      id: 1,
      name: r'chapterGoal',
      type: IsarType.string,
    ),
    r'chapterId': PropertySchema(
      id: 2,
      name: r'chapterId',
      type: IsarType.long,
    ),
    r'chapterName': PropertySchema(
      id: 3,
      name: r'chapterName',
      type: IsarType.string,
    ),
    r'missionData': PropertySchema(
      id: 4,
      name: r'missionData',
      type: IsarType.objectList,
      target: r'MissionDatum',
    )
  },
  estimateSize: _chapterDatumEstimateSize,
  serialize: _chapterDatumSerialize,
  deserialize: _chapterDatumDeserialize,
  deserializeProp: _chapterDatumDeserializeProp,
);

int _chapterDatumEstimateSize(
  ChapterDatum object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.chapterCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.chapterGoal;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.chapterName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.missionData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[MissionDatum]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              MissionDatumSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _chapterDatumSerialize(
  ChapterDatum object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.chapterCode);
  writer.writeString(offsets[1], object.chapterGoal);
  writer.writeLong(offsets[2], object.chapterId);
  writer.writeString(offsets[3], object.chapterName);
  writer.writeObjectList<MissionDatum>(
    offsets[4],
    allOffsets,
    MissionDatumSchema.serialize,
    object.missionData,
  );
}

ChapterDatum _chapterDatumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChapterDatum(
    chapterCode: reader.readStringOrNull(offsets[0]),
    chapterGoal: reader.readStringOrNull(offsets[1]),
    chapterId: reader.readLongOrNull(offsets[2]),
    chapterName: reader.readStringOrNull(offsets[3]),
    missionData: reader.readObjectList<MissionDatum>(
      offsets[4],
      MissionDatumSchema.deserialize,
      allOffsets,
      MissionDatum(),
    ),
  );
  return object;
}

P _chapterDatumDeserializeProp<P>(
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
      return (reader.readObjectList<MissionDatum>(
        offset,
        MissionDatumSchema.deserialize,
        allOffsets,
        MissionDatum(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ChapterDatumQueryFilter
    on QueryBuilder<ChapterDatum, ChapterDatum, QFilterCondition> {
  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterCode',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterCode',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chapterCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chapterCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chapterCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chapterCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chapterCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chapterCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chapterCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chapterCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterGoal',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterGoal',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterGoal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chapterGoal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chapterGoal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chapterGoal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chapterGoal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chapterGoal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chapterGoal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chapterGoal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterGoal',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterGoalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chapterGoal',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chapterId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterName',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterName',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chapterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chapterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chapterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chapterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chapterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chapterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chapterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      chapterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chapterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      missionDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionData',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      missionDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionData',
      ));
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      missionDataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'missionData',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      missionDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'missionData',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      missionDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'missionData',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      missionDataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'missionData',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      missionDataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'missionData',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      missionDataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'missionData',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ChapterDatumQueryObject
    on QueryBuilder<ChapterDatum, ChapterDatum, QFilterCondition> {
  QueryBuilder<ChapterDatum, ChapterDatum, QAfterFilterCondition>
      missionDataElement(FilterQuery<MissionDatum> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'missionData');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MissionDatumSchema = Schema(
  name: r'MissionDatum',
  id: 3504753367554079077,
  properties: {
    r'chapterId': PropertySchema(
      id: 0,
      name: r'chapterId',
      type: IsarType.long,
    ),
    r'competencyCode': PropertySchema(
      id: 1,
      name: r'competencyCode',
      type: IsarType.string,
    ),
    r'competencyName': PropertySchema(
      id: 2,
      name: r'competencyName',
      type: IsarType.string,
    ),
    r'isMandatoryAttachment': PropertySchema(
      id: 3,
      name: r'isMandatoryAttachment',
      type: IsarType.bool,
    ),
    r'missionActiveOnDay': PropertySchema(
      id: 4,
      name: r'missionActiveOnDay',
      type: IsarType.long,
    ),
    r'missionCode': PropertySchema(
      id: 5,
      name: r'missionCode',
      type: IsarType.string,
    ),
    r'missionDuration': PropertySchema(
      id: 6,
      name: r'missionDuration',
      type: IsarType.long,
    ),
    r'missionId': PropertySchema(
      id: 7,
      name: r'missionId',
      type: IsarType.long,
    ),
    r'missionInstruction': PropertySchema(
      id: 8,
      name: r'missionInstruction',
      type: IsarType.string,
    ),
    r'missionName': PropertySchema(
      id: 9,
      name: r'missionName',
      type: IsarType.string,
    ),
    r'missionReward': PropertySchema(
      id: 10,
      name: r'missionReward',
      type: IsarType.long,
    ),
    r'missionTypeCode': PropertySchema(
      id: 11,
      name: r'missionTypeCode',
      type: IsarType.string,
    ),
    r'missionTypeName': PropertySchema(
      id: 12,
      name: r'missionTypeName',
      type: IsarType.string,
    ),
    r'peopleCategoryCode': PropertySchema(
      id: 13,
      name: r'peopleCategoryCode',
      type: IsarType.string,
    ),
    r'peopleCategoryName': PropertySchema(
      id: 14,
      name: r'peopleCategoryName',
      type: IsarType.string,
    ),
    r'taskData': PropertySchema(
      id: 15,
      name: r'taskData',
      type: IsarType.objectList,
      target: r'TaskDatum',
    )
  },
  estimateSize: _missionDatumEstimateSize,
  serialize: _missionDatumSerialize,
  deserialize: _missionDatumDeserialize,
  deserializeProp: _missionDatumDeserializeProp,
);

int _missionDatumEstimateSize(
  MissionDatum object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.competencyCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.competencyName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.missionCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.missionInstruction;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.missionName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.missionTypeCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.missionTypeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.peopleCategoryCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.peopleCategoryName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.taskData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[TaskDatum]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              TaskDatumSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _missionDatumSerialize(
  MissionDatum object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.chapterId);
  writer.writeString(offsets[1], object.competencyCode);
  writer.writeString(offsets[2], object.competencyName);
  writer.writeBool(offsets[3], object.isMandatoryAttachment);
  writer.writeLong(offsets[4], object.missionActiveOnDay);
  writer.writeString(offsets[5], object.missionCode);
  writer.writeLong(offsets[6], object.missionDuration);
  writer.writeLong(offsets[7], object.missionId);
  writer.writeString(offsets[8], object.missionInstruction);
  writer.writeString(offsets[9], object.missionName);
  writer.writeLong(offsets[10], object.missionReward);
  writer.writeString(offsets[11], object.missionTypeCode);
  writer.writeString(offsets[12], object.missionTypeName);
  writer.writeString(offsets[13], object.peopleCategoryCode);
  writer.writeString(offsets[14], object.peopleCategoryName);
  writer.writeObjectList<TaskDatum>(
    offsets[15],
    allOffsets,
    TaskDatumSchema.serialize,
    object.taskData,
  );
}

MissionDatum _missionDatumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MissionDatum(
    chapterId: reader.readLongOrNull(offsets[0]),
    competencyCode: reader.readStringOrNull(offsets[1]),
    competencyName: reader.readStringOrNull(offsets[2]),
    isMandatoryAttachment: reader.readBoolOrNull(offsets[3]),
    missionActiveOnDay: reader.readLongOrNull(offsets[4]),
    missionCode: reader.readStringOrNull(offsets[5]),
    missionDuration: reader.readLongOrNull(offsets[6]),
    missionId: reader.readLongOrNull(offsets[7]),
    missionInstruction: reader.readStringOrNull(offsets[8]),
    missionName: reader.readStringOrNull(offsets[9]),
    missionReward: reader.readLongOrNull(offsets[10]),
    missionTypeCode: reader.readStringOrNull(offsets[11]),
    missionTypeName: reader.readStringOrNull(offsets[12]),
    peopleCategoryCode: reader.readStringOrNull(offsets[13]),
    peopleCategoryName: reader.readStringOrNull(offsets[14]),
    taskData: reader.readObjectList<TaskDatum>(
      offsets[15],
      TaskDatumSchema.deserialize,
      allOffsets,
      TaskDatum(),
    ),
  );
  return object;
}

P _missionDatumDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readObjectList<TaskDatum>(
        offset,
        TaskDatumSchema.deserialize,
        allOffsets,
        TaskDatum(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MissionDatumQueryFilter
    on QueryBuilder<MissionDatum, MissionDatum, QFilterCondition> {
  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      chapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      chapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      chapterIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      chapterIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      chapterIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      chapterIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chapterId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'competencyCode',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'competencyCode',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'competencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'competencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'competencyCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'competencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'competencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'competencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'competencyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competencyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'competencyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'competencyName',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'competencyName',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competencyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'competencyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'competencyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'competencyName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'competencyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'competencyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'competencyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'competencyName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competencyName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      competencyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'competencyName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      isMandatoryAttachmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMandatoryAttachment',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      isMandatoryAttachmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMandatoryAttachment',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      isMandatoryAttachmentEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMandatoryAttachment',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionActiveOnDayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionActiveOnDay',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionActiveOnDayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionActiveOnDay',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionActiveOnDayEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionActiveOnDay',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionActiveOnDayGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionActiveOnDay',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionActiveOnDayLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionActiveOnDay',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionActiveOnDayBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionActiveOnDay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionCode',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionCode',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'missionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'missionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionDurationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionDuration',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionDurationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionDuration',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionDurationEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionDurationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionDurationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionDurationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionDuration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionInstruction',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionInstruction',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionInstruction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'missionInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'missionInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionInstruction',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionInstruction',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionInstructionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionInstruction',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionName',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionName',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'missionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'missionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionRewardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionReward',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionRewardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionReward',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionRewardEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionReward',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionRewardGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionReward',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionRewardLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionReward',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionRewardBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionReward',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionTypeCode',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionTypeCode',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionTypeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'missionTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'missionTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionTypeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionTypeName',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionTypeName',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionTypeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'missionTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'missionTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionTypeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      missionTypeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'peopleCategoryCode',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'peopleCategoryCode',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peopleCategoryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'peopleCategoryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'peopleCategoryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'peopleCategoryCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'peopleCategoryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'peopleCategoryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'peopleCategoryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'peopleCategoryCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peopleCategoryCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'peopleCategoryCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'peopleCategoryName',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'peopleCategoryName',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peopleCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'peopleCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'peopleCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'peopleCategoryName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'peopleCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'peopleCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'peopleCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'peopleCategoryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peopleCategoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      peopleCategoryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'peopleCategoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      taskDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskData',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      taskDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskData',
      ));
    });
  }

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
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

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
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

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
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

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
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

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
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

  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
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

extension MissionDatumQueryObject
    on QueryBuilder<MissionDatum, MissionDatum, QFilterCondition> {
  QueryBuilder<MissionDatum, MissionDatum, QAfterFilterCondition>
      taskDataElement(FilterQuery<TaskDatum> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'taskData');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TaskDatumSchema = Schema(
  name: r'TaskDatum',
  id: -4788584108905818851,
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
      target: r'AnswerDatum',
    ),
    r'answerReward': PropertySchema(
      id: 5,
      name: r'answerReward',
      type: IsarType.long,
    ),
    r'attachmentId': PropertySchema(
      id: 6,
      name: r'attachmentId',
      type: IsarType.long,
    ),
    r'attachmentPath': PropertySchema(
      id: 7,
      name: r'attachmentPath',
      type: IsarType.string,
    ),
    r'attachmentUrl': PropertySchema(
      id: 8,
      name: r'attachmentUrl',
      type: IsarType.string,
    ),
    r'feedbackComment': PropertySchema(
      id: 9,
      name: r'feedbackComment',
      type: IsarType.string,
    ),
    r'missionId': PropertySchema(
      id: 10,
      name: r'missionId',
      type: IsarType.long,
    ),
    r'qualitativeScoreId': PropertySchema(
      id: 11,
      name: r'qualitativeScoreId',
      type: IsarType.long,
    ),
    r'qualitativeScoreName': PropertySchema(
      id: 12,
      name: r'qualitativeScoreName',
      type: IsarType.string,
    ),
    r'taskAnswerId': PropertySchema(
      id: 13,
      name: r'taskAnswerId',
      type: IsarType.long,
    ),
    r'taskCaption': PropertySchema(
      id: 14,
      name: r'taskCaption',
      type: IsarType.string,
    ),
    r'taskCode': PropertySchema(
      id: 15,
      name: r'taskCode',
      type: IsarType.string,
    ),
    r'taskGroup': PropertySchema(
      id: 16,
      name: r'taskGroup',
      type: IsarType.string,
    ),
    r'taskId': PropertySchema(
      id: 17,
      name: r'taskId',
      type: IsarType.long,
    ),
    r'taskReward': PropertySchema(
      id: 18,
      name: r'taskReward',
      type: IsarType.long,
    ),
    r'taskTypeCode': PropertySchema(
      id: 19,
      name: r'taskTypeCode',
      type: IsarType.string,
    ),
    r'taskTypeName': PropertySchema(
      id: 20,
      name: r'taskTypeName',
      type: IsarType.string,
    )
  },
  estimateSize: _taskDatumEstimateSize,
  serialize: _taskDatumSerialize,
  deserialize: _taskDatumDeserialize,
  deserializeProp: _taskDatumDeserializeProp,
);

int _taskDatumEstimateSize(
  TaskDatum object,
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
        final offsets = allOffsets[AnswerDatum]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              AnswerDatumSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.attachmentPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.attachmentUrl;
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
    final value = object.taskCode;
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

void _taskDatumSerialize(
  TaskDatum object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answer);
  writer.writeLong(offsets[1], object.answerAttachmentId);
  writer.writeString(offsets[2], object.answerAttachmentName);
  writer.writeString(offsets[3], object.answerAttachmentUrl);
  writer.writeObjectList<AnswerDatum>(
    offsets[4],
    allOffsets,
    AnswerDatumSchema.serialize,
    object.answerData,
  );
  writer.writeLong(offsets[5], object.answerReward);
  writer.writeLong(offsets[6], object.attachmentId);
  writer.writeString(offsets[7], object.attachmentPath);
  writer.writeString(offsets[8], object.attachmentUrl);
  writer.writeString(offsets[9], object.feedbackComment);
  writer.writeLong(offsets[10], object.missionId);
  writer.writeLong(offsets[11], object.qualitativeScoreId);
  writer.writeString(offsets[12], object.qualitativeScoreName);
  writer.writeLong(offsets[13], object.taskAnswerId);
  writer.writeString(offsets[14], object.taskCaption);
  writer.writeString(offsets[15], object.taskCode);
  writer.writeString(offsets[16], object.taskGroup);
  writer.writeLong(offsets[17], object.taskId);
  writer.writeLong(offsets[18], object.taskReward);
  writer.writeString(offsets[19], object.taskTypeCode);
  writer.writeString(offsets[20], object.taskTypeName);
}

TaskDatum _taskDatumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskDatum(
    answer: reader.readStringOrNull(offsets[0]),
    answerAttachmentId: reader.readLongOrNull(offsets[1]),
    answerAttachmentName: reader.readStringOrNull(offsets[2]),
    answerAttachmentUrl: reader.readStringOrNull(offsets[3]),
    answerData: reader.readObjectList<AnswerDatum>(
      offsets[4],
      AnswerDatumSchema.deserialize,
      allOffsets,
      AnswerDatum(),
    ),
    answerReward: reader.readLongOrNull(offsets[5]),
    attachmentId: reader.readLongOrNull(offsets[6]),
    attachmentPath: reader.readStringOrNull(offsets[7]),
    attachmentUrl: reader.readStringOrNull(offsets[8]),
    feedbackComment: reader.readStringOrNull(offsets[9]),
    missionId: reader.readLongOrNull(offsets[10]),
    qualitativeScoreId: reader.readLongOrNull(offsets[11]),
    qualitativeScoreName: reader.readStringOrNull(offsets[12]),
    taskAnswerId: reader.readLongOrNull(offsets[13]),
    taskCaption: reader.readStringOrNull(offsets[14]),
    taskCode: reader.readStringOrNull(offsets[15]),
    taskGroup: reader.readStringOrNull(offsets[16]),
    taskId: reader.readLongOrNull(offsets[17]),
    taskReward: reader.readLongOrNull(offsets[18]),
    taskTypeCode: reader.readStringOrNull(offsets[19]),
    taskTypeName: reader.readStringOrNull(offsets[20]),
  );
  return object;
}

P _taskDatumDeserializeProp<P>(
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
      return (reader.readObjectList<AnswerDatum>(
        offset,
        AnswerDatumSchema.deserialize,
        allOffsets,
        AnswerDatum(),
      )) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    case 18:
      return (reader.readLongOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TaskDatumQueryFilter
    on QueryBuilder<TaskDatum, TaskDatum, QFilterCondition> {
  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerEqualTo(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerStartsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerEndsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerAttachmentId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerAttachmentId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentIdGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentIdLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentIdBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerAttachmentName',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerAttachmentName',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameEqualTo(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameStartsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameEndsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerAttachmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerAttachmentName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerAttachmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerAttachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerAttachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlEqualTo(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlStartsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlEndsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerAttachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerAttachmentUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerAttachmentUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerAttachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerData',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerData',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerDataLengthEqualTo(int length) {
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerDataIsEmpty() {
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerDataIsNotEmpty() {
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerDataLengthLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerDataLengthGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerDataLengthBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerRewardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerReward',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerRewardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerReward',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerRewardEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerRewardGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      answerRewardLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerRewardBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> attachmentIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> attachmentIdBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentPath',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentPath',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachmentPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachmentPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachmentPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachmentUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachmentUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      attachmentUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feedbackComment',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feedbackComment',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentEqualTo(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentStartsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentEndsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'feedbackComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'feedbackComment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feedbackComment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      feedbackCommentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'feedbackComment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> missionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      missionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> missionIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      missionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> missionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> missionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualitativeScoreId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualitativeScoreId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualitativeScoreId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreIdGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreIdLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreIdBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualitativeScoreName',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualitativeScoreName',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameEqualTo(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameStartsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameEndsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'qualitativeScoreName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'qualitativeScoreName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualitativeScoreName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      qualitativeScoreNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qualitativeScoreName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskAnswerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskAnswerId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskAnswerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskAnswerId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskAnswerIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskAnswerId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskAnswerIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskAnswerId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskAnswerIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskAnswerId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskAnswerIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskAnswerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskCaptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskCaption',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskCaptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskCaption',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCaptionEqualTo(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskCaptionGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCaptionLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCaptionBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskCaptionStartsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCaptionEndsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCaptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCaptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskCaption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskCaptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskCaptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskCode',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskCode',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taskCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taskCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskGroup',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskGroup',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskGroupEqualTo(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskGroupLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskGroupBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskGroupStartsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskGroupEndsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskGroupContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskGroupMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskIdGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskIdLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskIdBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskRewardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskReward',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskRewardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskReward',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskRewardEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskRewardGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskRewardLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskRewardBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskTypeCode',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskTypeCode',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskTypeCodeEqualTo(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeCodeGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeCodeLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskTypeCodeBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeCodeStartsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeCodeEndsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskTypeCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskTypeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskTypeName',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskTypeName',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskTypeNameEqualTo(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeNameGreaterThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeNameLessThan(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskTypeNameBetween(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeNameStartsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeNameEndsWith(
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

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> taskTypeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskTypeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition>
      taskTypeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskTypeName',
        value: '',
      ));
    });
  }
}

extension TaskDatumQueryObject
    on QueryBuilder<TaskDatum, TaskDatum, QFilterCondition> {
  QueryBuilder<TaskDatum, TaskDatum, QAfterFilterCondition> answerDataElement(
      FilterQuery<AnswerDatum> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'answerData');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const AnswerDatumSchema = Schema(
  name: r'AnswerDatum',
  id: -6092151214697887668,
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
  estimateSize: _answerDatumEstimateSize,
  serialize: _answerDatumSerialize,
  deserialize: _answerDatumDeserialize,
  deserializeProp: _answerDatumDeserializeProp,
);

int _answerDatumEstimateSize(
  AnswerDatum object,
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

void _answerDatumSerialize(
  AnswerDatum object,
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

AnswerDatum _answerDatumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AnswerDatum(
    answerCaption: reader.readStringOrNull(offsets[0]),
    answerCode: reader.readStringOrNull(offsets[1]),
    answerField: reader.readStringOrNull(offsets[2]),
    answerId: reader.readLongOrNull(offsets[3]),
    isCorrectAnswer: reader.readBoolOrNull(offsets[4]),
    taskId: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _answerDatumDeserializeProp<P>(
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

extension AnswerDatumQueryFilter
    on QueryBuilder<AnswerDatum, AnswerDatum, QFilterCondition> {
  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCaptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerCaption',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCaptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerCaption',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCaptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCaptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerCaption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCaptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCaptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerCode',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerCode',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerCode',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerFieldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerField',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerFieldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerField',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerFieldContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerFieldMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerField',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerFieldIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerField',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerFieldIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerField',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerId',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      answerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerId',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition> answerIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition> answerIdBetween(
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      isCorrectAnswerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isCorrectAnswer',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      isCorrectAnswerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isCorrectAnswer',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      isCorrectAnswerEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCorrectAnswer',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition> taskIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
      taskIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition> taskIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition>
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition> taskIdLessThan(
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

  QueryBuilder<AnswerDatum, AnswerDatum, QAfterFilterCondition> taskIdBetween(
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

extension AnswerDatumQueryObject
    on QueryBuilder<AnswerDatum, AnswerDatum, QFilterCondition> {}
