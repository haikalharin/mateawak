// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_past_response.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMissionPastResponseRemoteCollection on Isar {
  IsarCollection<MissionPastResponseRemote> get missionPastResponseRemotes =>
      this.collection();
}

const MissionPastResponseRemoteSchema = CollectionSchema(
  name: r'MissionPastResponseRemote',
  id: 5993547094643705448,
  properties: {
    r'chapterId': PropertySchema(
      id: 0,
      name: r'chapterId',
      type: IsarType.long,
    ),
    r'chapterName': PropertySchema(
      id: 1,
      name: r'chapterName',
      type: IsarType.string,
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
    r'missionName': PropertySchema(
      id: 7,
      name: r'missionName',
      type: IsarType.string,
    ),
    r'missionReward': PropertySchema(
      id: 8,
      name: r'missionReward',
      type: IsarType.long,
    ),
    r'missionStatus': PropertySchema(
      id: 9,
      name: r'missionStatus',
      type: IsarType.string,
    ),
    r'missionStatusCode': PropertySchema(
      id: 10,
      name: r'missionStatusCode',
      type: IsarType.string,
    ),
    r'startedDate': PropertySchema(
      id: 11,
      name: r'startedDate',
      type: IsarType.string,
    ),
    r'submittedBy': PropertySchema(
      id: 12,
      name: r'submittedBy',
      type: IsarType.string,
    ),
    r'submittedDate': PropertySchema(
      id: 13,
      name: r'submittedDate',
      type: IsarType.string,
    ),
    r'validatorId': PropertySchema(
      id: 14,
      name: r'validatorId',
      type: IsarType.long,
    )
  },
  estimateSize: _missionPastResponseRemoteEstimateSize,
  serialize: _missionPastResponseRemoteSerialize,
  deserialize: _missionPastResponseRemoteDeserialize,
  deserializeProp: _missionPastResponseRemoteDeserializeProp,
  idName: r'employeeMissionId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _missionPastResponseRemoteGetId,
  getLinks: _missionPastResponseRemoteGetLinks,
  attach: _missionPastResponseRemoteAttach,
  version: '3.1.0+1',
);

int _missionPastResponseRemoteEstimateSize(
  MissionPastResponseRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.chapterName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
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
    final value = object.missionName;
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
    final value = object.missionStatusCode;
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

void _missionPastResponseRemoteSerialize(
  MissionPastResponseRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.chapterId);
  writer.writeString(offsets[1], object.chapterName);
  writer.writeString(offsets[2], object.completedBy);
  writer.writeString(offsets[3], object.completedDate);
  writer.writeString(offsets[4], object.dueDate);
  writer.writeLong(offsets[5], object.employeeId);
  writer.writeLong(offsets[6], object.missionId);
  writer.writeString(offsets[7], object.missionName);
  writer.writeLong(offsets[8], object.missionReward);
  writer.writeString(offsets[9], object.missionStatus);
  writer.writeString(offsets[10], object.missionStatusCode);
  writer.writeString(offsets[11], object.startedDate);
  writer.writeString(offsets[12], object.submittedBy);
  writer.writeString(offsets[13], object.submittedDate);
  writer.writeLong(offsets[14], object.validatorId);
}

MissionPastResponseRemote _missionPastResponseRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MissionPastResponseRemote(
    chapterId: reader.readLongOrNull(offsets[0]),
    chapterName: reader.readStringOrNull(offsets[1]),
    completedBy: reader.readStringOrNull(offsets[2]),
    completedDate: reader.readStringOrNull(offsets[3]),
    dueDate: reader.readStringOrNull(offsets[4]),
    employeeId: reader.readLongOrNull(offsets[5]),
    employeeMissionId: id,
    missionId: reader.readLongOrNull(offsets[6]),
    missionName: reader.readStringOrNull(offsets[7]),
    missionReward: reader.readLongOrNull(offsets[8]),
    missionStatus: reader.readStringOrNull(offsets[9]),
    missionStatusCode: reader.readStringOrNull(offsets[10]),
    startedDate: reader.readStringOrNull(offsets[11]),
    submittedBy: reader.readStringOrNull(offsets[12]),
    submittedDate: reader.readStringOrNull(offsets[13]),
    validatorId: reader.readLongOrNull(offsets[14]),
  );
  return object;
}

P _missionPastResponseRemoteDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _missionPastResponseRemoteGetId(MissionPastResponseRemote object) {
  return object.employeeMissionId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _missionPastResponseRemoteGetLinks(
    MissionPastResponseRemote object) {
  return [];
}

void _missionPastResponseRemoteAttach(
    IsarCollection<dynamic> col, Id id, MissionPastResponseRemote object) {
  object.employeeMissionId = id;
}

extension MissionPastResponseRemoteQueryWhereSort on QueryBuilder<
    MissionPastResponseRemote, MissionPastResponseRemote, QWhere> {
  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterWhere> anyEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MissionPastResponseRemoteQueryWhere on QueryBuilder<
    MissionPastResponseRemote, MissionPastResponseRemote, QWhereClause> {
  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterWhereClause> employeeMissionIdEqualTo(Id employeeMissionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: employeeMissionId,
        upper: employeeMissionId,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
          QAfterWhereClause>
      employeeMissionIdLessThan(Id employeeMissionId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: employeeMissionId, includeUpper: include),
      );
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

extension MissionPastResponseRemoteQueryFilter on QueryBuilder<
    MissionPastResponseRemote, MissionPastResponseRemote, QFilterCondition> {
  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterIdGreaterThan(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterIdLessThan(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterIdBetween(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterName',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterName',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameEqualTo(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameGreaterThan(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameLessThan(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameBetween(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameStartsWith(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameEndsWith(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
          QAfterFilterCondition>
      chapterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chapterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
          QAfterFilterCondition>
      chapterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chapterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> chapterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chapterName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> completedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedBy',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> completedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedBy',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> completedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> completedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'completedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> completedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedDate',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> completedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedDate',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> completedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> completedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'completedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> dueDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dueDate',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> dueDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dueDate',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> dueDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> dueDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> employeeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> employeeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> employeeIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> employeeMissionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> employeeMissionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> employeeMissionIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeMissionId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionName',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionName',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameEqualTo(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameGreaterThan(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameLessThan(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameBetween(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameStartsWith(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameEndsWith(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
          QAfterFilterCondition>
      missionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
          QAfterFilterCondition>
      missionNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionRewardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionReward',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionRewardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionReward',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionRewardEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionReward',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionRewardGreaterThan(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionRewardLessThan(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionRewardBetween(
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionStatus',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionStatus',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionStatusCode',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionStatusCode',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionStatusCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'missionStatusCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'missionStatusCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'missionStatusCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'missionStatusCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'missionStatusCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
          QAfterFilterCondition>
      missionStatusCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionStatusCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
          QAfterFilterCondition>
      missionStatusCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionStatusCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionStatusCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> missionStatusCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionStatusCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> startedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'startedDate',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> startedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'startedDate',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> startedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> startedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'startedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> submittedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'submittedBy',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> submittedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'submittedBy',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> submittedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> submittedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'submittedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> submittedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'submittedDate',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> submittedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'submittedDate',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> submittedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> submittedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'submittedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> validatorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'validatorId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> validatorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'validatorId',
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterFilterCondition> validatorIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
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

extension MissionPastResponseRemoteQueryObject on QueryBuilder<
    MissionPastResponseRemote, MissionPastResponseRemote, QFilterCondition> {}

extension MissionPastResponseRemoteQueryLinks on QueryBuilder<
    MissionPastResponseRemote, MissionPastResponseRemote, QFilterCondition> {}

extension MissionPastResponseRemoteQuerySortBy on QueryBuilder<
    MissionPastResponseRemote, MissionPastResponseRemote, QSortBy> {
  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterId', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterId', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByChapterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterName', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByChapterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterName', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByCompletedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByCompletedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByCompletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByCompletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionName', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionName', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionReward() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionReward', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionRewardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionReward', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByMissionStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByStartedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByStartedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortBySubmittedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortBySubmittedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortBySubmittedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortBySubmittedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByValidatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> sortByValidatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.desc);
    });
  }
}

extension MissionPastResponseRemoteQuerySortThenBy on QueryBuilder<
    MissionPastResponseRemote, MissionPastResponseRemote, QSortThenBy> {
  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterId', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByChapterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterId', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByChapterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterName', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByChapterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chapterName', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByCompletedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByCompletedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByCompletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByCompletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByEmployeeMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionName', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionName', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionReward() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionReward', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionRewardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionReward', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByMissionStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByStartedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByStartedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenBySubmittedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenBySubmittedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenBySubmittedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenBySubmittedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.desc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByValidatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.asc);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote,
      QAfterSortBy> thenByValidatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.desc);
    });
  }
}

extension MissionPastResponseRemoteQueryWhereDistinct on QueryBuilder<
    MissionPastResponseRemote, MissionPastResponseRemote, QDistinct> {
  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByChapterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chapterId');
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByChapterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chapterName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByCompletedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByCompletedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByDueDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dueDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeId');
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionId');
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByMissionName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByMissionReward() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionReward');
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByMissionStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByMissionStatusCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionStatusCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByStartedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctBySubmittedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submittedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctBySubmittedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submittedDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MissionPastResponseRemote, MissionPastResponseRemote, QDistinct>
      distinctByValidatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validatorId');
    });
  }
}

extension MissionPastResponseRemoteQueryProperty on QueryBuilder<
    MissionPastResponseRemote, MissionPastResponseRemote, QQueryProperty> {
  QueryBuilder<MissionPastResponseRemote, int, QQueryOperations>
      employeeMissionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeMissionId');
    });
  }

  QueryBuilder<MissionPastResponseRemote, int?, QQueryOperations>
      chapterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chapterId');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      chapterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chapterName');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      completedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedBy');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      completedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedDate');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      dueDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dueDate');
    });
  }

  QueryBuilder<MissionPastResponseRemote, int?, QQueryOperations>
      employeeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeId');
    });
  }

  QueryBuilder<MissionPastResponseRemote, int?, QQueryOperations>
      missionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionId');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      missionNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionName');
    });
  }

  QueryBuilder<MissionPastResponseRemote, int?, QQueryOperations>
      missionRewardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionReward');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      missionStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionStatus');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      missionStatusCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionStatusCode');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      startedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedDate');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      submittedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submittedBy');
    });
  }

  QueryBuilder<MissionPastResponseRemote, String?, QQueryOperations>
      submittedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submittedDate');
    });
  }

  QueryBuilder<MissionPastResponseRemote, int?, QQueryOperations>
      validatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validatorId');
    });
  }
}
