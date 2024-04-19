// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_response.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetValidationResponseRemoteCollection on Isar {
  IsarCollection<ValidationResponseRemote> get validationResponseRemotes =>
      this.collection();
}

const ValidationResponseRemoteSchema = CollectionSchema(
  name: r'ValidationResponseRemote',
  id: -5532930676564295172,
  properties: {
    r'chapterData': PropertySchema(
      id: 0,
      name: r'chapterData',
      type: IsarType.objectList,
      target: r'ChapterValidationDatum',
    ),
    r'completedBy': PropertySchema(
      id: 1,
      name: r'completedBy',
      type: IsarType.string,
    ),
    r'completedDate': PropertySchema(
      id: 2,
      name: r'completedDate',
      type: IsarType.string,
    ),
    r'dueDate': PropertySchema(
      id: 3,
      name: r'dueDate',
      type: IsarType.string,
    ),
    r'employeeId': PropertySchema(
      id: 4,
      name: r'employeeId',
      type: IsarType.long,
    ),
    r'missionId': PropertySchema(
      id: 5,
      name: r'missionId',
      type: IsarType.long,
    ),
    r'missionStatus': PropertySchema(
      id: 6,
      name: r'missionStatus',
      type: IsarType.string,
    ),
    r'missionStatusCode': PropertySchema(
      id: 7,
      name: r'missionStatusCode',
      type: IsarType.long,
    ),
    r'startedDate': PropertySchema(
      id: 8,
      name: r'startedDate',
      type: IsarType.string,
    ),
    r'submittedBy': PropertySchema(
      id: 9,
      name: r'submittedBy',
      type: IsarType.string,
    ),
    r'submittedDate': PropertySchema(
      id: 10,
      name: r'submittedDate',
      type: IsarType.string,
    ),
    r'validatorId': PropertySchema(
      id: 11,
      name: r'validatorId',
      type: IsarType.long,
    )
  },
  estimateSize: _validationResponseRemoteEstimateSize,
  serialize: _validationResponseRemoteSerialize,
  deserialize: _validationResponseRemoteDeserialize,
  deserializeProp: _validationResponseRemoteDeserializeProp,
  idName: r'employeeMissionId',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ChapterValidationDatum': ChapterValidationDatumSchema,
    r'MissionValidationDatum': MissionValidationDatumSchema,
    r'TaskValidationDatum': TaskValidationDatumSchema
  },
  getId: _validationResponseRemoteGetId,
  getLinks: _validationResponseRemoteGetLinks,
  attach: _validationResponseRemoteAttach,
  version: '3.1.0+1',
);

int _validationResponseRemoteEstimateSize(
  ValidationResponseRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.chapterData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ChapterValidationDatum]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += ChapterValidationDatumSchema.estimateSize(
              value, offsets, allOffsets);
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

void _validationResponseRemoteSerialize(
  ValidationResponseRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<ChapterValidationDatum>(
    offsets[0],
    allOffsets,
    ChapterValidationDatumSchema.serialize,
    object.chapterData,
  );
  writer.writeString(offsets[1], object.completedBy);
  writer.writeString(offsets[2], object.completedDate);
  writer.writeString(offsets[3], object.dueDate);
  writer.writeLong(offsets[4], object.employeeId);
  writer.writeLong(offsets[5], object.missionId);
  writer.writeString(offsets[6], object.missionStatus);
  writer.writeLong(offsets[7], object.missionStatusCode);
  writer.writeString(offsets[8], object.startedDate);
  writer.writeString(offsets[9], object.submittedBy);
  writer.writeString(offsets[10], object.submittedDate);
  writer.writeLong(offsets[11], object.validatorId);
}

ValidationResponseRemote _validationResponseRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ValidationResponseRemote(
    chapterData: reader.readObjectList<ChapterValidationDatum>(
      offsets[0],
      ChapterValidationDatumSchema.deserialize,
      allOffsets,
      ChapterValidationDatum(),
    ),
    completedBy: reader.readStringOrNull(offsets[1]),
    completedDate: reader.readStringOrNull(offsets[2]),
    dueDate: reader.readStringOrNull(offsets[3]),
    employeeId: reader.readLongOrNull(offsets[4]),
    employeeMissionId: id,
    missionId: reader.readLongOrNull(offsets[5]),
    missionStatus: reader.readStringOrNull(offsets[6]),
    missionStatusCode: reader.readLongOrNull(offsets[7]),
    startedDate: reader.readStringOrNull(offsets[8]),
    submittedBy: reader.readStringOrNull(offsets[9]),
    submittedDate: reader.readStringOrNull(offsets[10]),
    validatorId: reader.readLongOrNull(offsets[11]),
  );
  return object;
}

P _validationResponseRemoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<ChapterValidationDatum>(
        offset,
        ChapterValidationDatumSchema.deserialize,
        allOffsets,
        ChapterValidationDatum(),
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
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
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _validationResponseRemoteGetId(ValidationResponseRemote object) {
  return object.employeeMissionId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _validationResponseRemoteGetLinks(
    ValidationResponseRemote object) {
  return [];
}

void _validationResponseRemoteAttach(
    IsarCollection<dynamic> col, Id id, ValidationResponseRemote object) {
  object.employeeMissionId = id;
}

extension ValidationResponseRemoteQueryWhereSort on QueryBuilder<
    ValidationResponseRemote, ValidationResponseRemote, QWhere> {
  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterWhere>
      anyEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ValidationResponseRemoteQueryWhere on QueryBuilder<
    ValidationResponseRemote, ValidationResponseRemote, QWhereClause> {
  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterWhereClause> employeeMissionIdEqualTo(Id employeeMissionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: employeeMissionId,
        upper: employeeMissionId,
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
          QAfterWhereClause>
      employeeMissionIdLessThan(Id employeeMissionId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: employeeMissionId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

extension ValidationResponseRemoteQueryFilter on QueryBuilder<
    ValidationResponseRemote, ValidationResponseRemote, QFilterCondition> {
  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> chapterDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterData',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> chapterDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterData',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> completedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedBy',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> completedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedBy',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> completedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> completedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'completedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> completedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedDate',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> completedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedDate',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> completedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> completedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'completedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> dueDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dueDate',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> dueDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dueDate',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> dueDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> dueDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> employeeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> employeeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> employeeIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> employeeMissionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> employeeMissionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> employeeMissionIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeMissionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionStatusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionStatus',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionStatusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionStatus',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionStatusCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionStatusCode',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionStatusCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionStatusCode',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> missionStatusCodeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionStatusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> startedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'startedDate',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> startedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'startedDate',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> startedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> startedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'startedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> submittedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'submittedBy',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> submittedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'submittedBy',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> submittedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> submittedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'submittedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> submittedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'submittedDate',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> submittedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'submittedDate',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> submittedDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submittedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> submittedDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'submittedDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> validatorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'validatorId',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> validatorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'validatorId',
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
      QAfterFilterCondition> validatorIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
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

extension ValidationResponseRemoteQueryObject on QueryBuilder<
    ValidationResponseRemote, ValidationResponseRemote, QFilterCondition> {
  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote,
          QAfterFilterCondition>
      chapterDataElement(FilterQuery<ChapterValidationDatum> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'chapterData');
    });
  }
}

extension ValidationResponseRemoteQueryLinks on QueryBuilder<
    ValidationResponseRemote, ValidationResponseRemote, QFilterCondition> {}

extension ValidationResponseRemoteQuerySortBy on QueryBuilder<
    ValidationResponseRemote, ValidationResponseRemote, QSortBy> {
  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByCompletedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByCompletedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByCompletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByCompletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByMissionStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByMissionStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByMissionStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByMissionStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByStartedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByStartedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortBySubmittedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortBySubmittedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortBySubmittedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortBySubmittedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByValidatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      sortByValidatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.desc);
    });
  }
}

extension ValidationResponseRemoteQuerySortThenBy on QueryBuilder<
    ValidationResponseRemote, ValidationResponseRemote, QSortThenBy> {
  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByCompletedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByCompletedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedBy', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByCompletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByCompletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedDate', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByEmployeeMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionId', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByMissionStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByMissionStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatus', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByMissionStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByMissionStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'missionStatusCode', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByStartedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByStartedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedDate', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenBySubmittedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenBySubmittedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedBy', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenBySubmittedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenBySubmittedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submittedDate', Sort.desc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByValidatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.asc);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QAfterSortBy>
      thenByValidatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validatorId', Sort.desc);
    });
  }
}

extension ValidationResponseRemoteQueryWhereDistinct on QueryBuilder<
    ValidationResponseRemote, ValidationResponseRemote, QDistinct> {
  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctByCompletedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctByCompletedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctByDueDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dueDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeId');
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctByMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionId');
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctByMissionStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctByMissionStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'missionStatusCode');
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctByStartedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctBySubmittedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submittedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctBySubmittedDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submittedDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ValidationResponseRemote, ValidationResponseRemote, QDistinct>
      distinctByValidatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validatorId');
    });
  }
}

extension ValidationResponseRemoteQueryProperty on QueryBuilder<
    ValidationResponseRemote, ValidationResponseRemote, QQueryProperty> {
  QueryBuilder<ValidationResponseRemote, int, QQueryOperations>
      employeeMissionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeMissionId');
    });
  }

  QueryBuilder<ValidationResponseRemote, List<ChapterValidationDatum>?,
      QQueryOperations> chapterDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chapterData');
    });
  }

  QueryBuilder<ValidationResponseRemote, String?, QQueryOperations>
      completedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedBy');
    });
  }

  QueryBuilder<ValidationResponseRemote, String?, QQueryOperations>
      completedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedDate');
    });
  }

  QueryBuilder<ValidationResponseRemote, String?, QQueryOperations>
      dueDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dueDate');
    });
  }

  QueryBuilder<ValidationResponseRemote, int?, QQueryOperations>
      employeeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeId');
    });
  }

  QueryBuilder<ValidationResponseRemote, int?, QQueryOperations>
      missionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionId');
    });
  }

  QueryBuilder<ValidationResponseRemote, String?, QQueryOperations>
      missionStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionStatus');
    });
  }

  QueryBuilder<ValidationResponseRemote, int?, QQueryOperations>
      missionStatusCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionStatusCode');
    });
  }

  QueryBuilder<ValidationResponseRemote, String?, QQueryOperations>
      startedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedDate');
    });
  }

  QueryBuilder<ValidationResponseRemote, String?, QQueryOperations>
      submittedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submittedBy');
    });
  }

  QueryBuilder<ValidationResponseRemote, String?, QQueryOperations>
      submittedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submittedDate');
    });
  }

  QueryBuilder<ValidationResponseRemote, int?, QQueryOperations>
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

const ChapterValidationDatumSchema = Schema(
  name: r'ChapterValidationDatum',
  id: -8749570503288900873,
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
    r'competencyCode': PropertySchema(
      id: 4,
      name: r'competencyCode',
      type: IsarType.string,
    ),
    r'competencyName': PropertySchema(
      id: 5,
      name: r'competencyName',
      type: IsarType.string,
    ),
    r'missionData': PropertySchema(
      id: 6,
      name: r'missionData',
      type: IsarType.objectList,
      target: r'MissionValidationDatum',
    ),
    r'peopleCategoryCode': PropertySchema(
      id: 7,
      name: r'peopleCategoryCode',
      type: IsarType.string,
    ),
    r'peopleCategoryName': PropertySchema(
      id: 8,
      name: r'peopleCategoryName',
      type: IsarType.string,
    )
  },
  estimateSize: _chapterValidationDatumEstimateSize,
  serialize: _chapterValidationDatumSerialize,
  deserialize: _chapterValidationDatumDeserialize,
  deserializeProp: _chapterValidationDatumDeserializeProp,
);

int _chapterValidationDatumEstimateSize(
  ChapterValidationDatum object,
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
    final list = object.missionData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[MissionValidationDatum]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += MissionValidationDatumSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
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
  return bytesCount;
}

void _chapterValidationDatumSerialize(
  ChapterValidationDatum object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.chapterCode);
  writer.writeString(offsets[1], object.chapterGoal);
  writer.writeLong(offsets[2], object.chapterId);
  writer.writeString(offsets[3], object.chapterName);
  writer.writeString(offsets[4], object.competencyCode);
  writer.writeString(offsets[5], object.competencyName);
  writer.writeObjectList<MissionValidationDatum>(
    offsets[6],
    allOffsets,
    MissionValidationDatumSchema.serialize,
    object.missionData,
  );
  writer.writeString(offsets[7], object.peopleCategoryCode);
  writer.writeString(offsets[8], object.peopleCategoryName);
}

ChapterValidationDatum _chapterValidationDatumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChapterValidationDatum(
    chapterCode: reader.readStringOrNull(offsets[0]),
    chapterGoal: reader.readStringOrNull(offsets[1]),
    chapterId: reader.readLongOrNull(offsets[2]),
    chapterName: reader.readStringOrNull(offsets[3]),
    competencyCode: reader.readStringOrNull(offsets[4]),
    competencyName: reader.readStringOrNull(offsets[5]),
    missionData: reader.readObjectList<MissionValidationDatum>(
      offsets[6],
      MissionValidationDatumSchema.deserialize,
      allOffsets,
      MissionValidationDatum(),
    ),
    peopleCategoryCode: reader.readStringOrNull(offsets[7]),
    peopleCategoryName: reader.readStringOrNull(offsets[8]),
  );
  return object;
}

P _chapterValidationDatumDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readObjectList<MissionValidationDatum>(
        offset,
        MissionValidationDatumSchema.deserialize,
        allOffsets,
        MissionValidationDatum(),
      )) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ChapterValidationDatumQueryFilter on QueryBuilder<
    ChapterValidationDatum, ChapterValidationDatum, QFilterCondition> {
  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterCode',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterCode',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeEqualTo(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeGreaterThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeLessThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeBetween(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeStartsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeEndsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      chapterCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chapterCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      chapterCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chapterCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chapterCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterGoal',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterGoal',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalEqualTo(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalGreaterThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalLessThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalBetween(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalStartsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalEndsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      chapterGoalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chapterGoal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      chapterGoalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chapterGoal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterGoal',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterGoalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chapterGoal',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterName',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterName',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> chapterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chapterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'competencyCode',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'competencyCode',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeEqualTo(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeGreaterThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeLessThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeBetween(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeStartsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeEndsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      competencyCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'competencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      competencyCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'competencyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competencyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'competencyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'competencyName',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'competencyName',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameEqualTo(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameGreaterThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameLessThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameBetween(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameStartsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameEndsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      competencyNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'competencyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      competencyNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'competencyName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competencyName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> competencyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'competencyName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> missionDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionData',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> missionDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionData',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> missionDataLengthEqualTo(int length) {
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> missionDataIsEmpty() {
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> missionDataIsNotEmpty() {
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> missionDataLengthLessThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> missionDataLengthGreaterThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> missionDataLengthBetween(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'peopleCategoryCode',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'peopleCategoryCode',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeEqualTo(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeGreaterThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeLessThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeBetween(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeStartsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeEndsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      peopleCategoryCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'peopleCategoryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      peopleCategoryCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'peopleCategoryCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peopleCategoryCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'peopleCategoryCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'peopleCategoryName',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'peopleCategoryName',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameEqualTo(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameGreaterThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameLessThan(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameBetween(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameStartsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameEndsWith(
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

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      peopleCategoryNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'peopleCategoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      peopleCategoryNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'peopleCategoryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peopleCategoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
      QAfterFilterCondition> peopleCategoryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'peopleCategoryName',
        value: '',
      ));
    });
  }
}

extension ChapterValidationDatumQueryObject on QueryBuilder<
    ChapterValidationDatum, ChapterValidationDatum, QFilterCondition> {
  QueryBuilder<ChapterValidationDatum, ChapterValidationDatum,
          QAfterFilterCondition>
      missionDataElement(FilterQuery<MissionValidationDatum> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'missionData');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MissionValidationDatumSchema = Schema(
  name: r'MissionValidationDatum',
  id: 203142300562641329,
  properties: {
    r'chapterId': PropertySchema(
      id: 0,
      name: r'chapterId',
      type: IsarType.long,
    ),
    r'isMandatoryAttachment': PropertySchema(
      id: 1,
      name: r'isMandatoryAttachment',
      type: IsarType.long,
    ),
    r'missionActiveOnDay': PropertySchema(
      id: 2,
      name: r'missionActiveOnDay',
      type: IsarType.long,
    ),
    r'missionCode': PropertySchema(
      id: 3,
      name: r'missionCode',
      type: IsarType.string,
    ),
    r'missionDuration': PropertySchema(
      id: 4,
      name: r'missionDuration',
      type: IsarType.long,
    ),
    r'missionId': PropertySchema(
      id: 5,
      name: r'missionId',
      type: IsarType.long,
    ),
    r'missionInstruction': PropertySchema(
      id: 6,
      name: r'missionInstruction',
      type: IsarType.string,
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
    r'missionTypeCode': PropertySchema(
      id: 9,
      name: r'missionTypeCode',
      type: IsarType.string,
    ),
    r'missionTypeName': PropertySchema(
      id: 10,
      name: r'missionTypeName',
      type: IsarType.string,
    ),
    r'taskData': PropertySchema(
      id: 11,
      name: r'taskData',
      type: IsarType.objectList,
      target: r'TaskValidationDatum',
    )
  },
  estimateSize: _missionValidationDatumEstimateSize,
  serialize: _missionValidationDatumSerialize,
  deserialize: _missionValidationDatumDeserialize,
  deserializeProp: _missionValidationDatumDeserializeProp,
);

int _missionValidationDatumEstimateSize(
  MissionValidationDatum object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
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
    final list = object.taskData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[TaskValidationDatum]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += TaskValidationDatumSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _missionValidationDatumSerialize(
  MissionValidationDatum object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.chapterId);
  writer.writeLong(offsets[1], object.isMandatoryAttachment);
  writer.writeLong(offsets[2], object.missionActiveOnDay);
  writer.writeString(offsets[3], object.missionCode);
  writer.writeLong(offsets[4], object.missionDuration);
  writer.writeLong(offsets[5], object.missionId);
  writer.writeString(offsets[6], object.missionInstruction);
  writer.writeString(offsets[7], object.missionName);
  writer.writeLong(offsets[8], object.missionReward);
  writer.writeString(offsets[9], object.missionTypeCode);
  writer.writeString(offsets[10], object.missionTypeName);
  writer.writeObjectList<TaskValidationDatum>(
    offsets[11],
    allOffsets,
    TaskValidationDatumSchema.serialize,
    object.taskData,
  );
}

MissionValidationDatum _missionValidationDatumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MissionValidationDatum(
    chapterId: reader.readLongOrNull(offsets[0]),
    isMandatoryAttachment: reader.readLongOrNull(offsets[1]),
    missionActiveOnDay: reader.readLongOrNull(offsets[2]),
    missionCode: reader.readStringOrNull(offsets[3]),
    missionDuration: reader.readLongOrNull(offsets[4]),
    missionId: reader.readLongOrNull(offsets[5]),
    missionInstruction: reader.readStringOrNull(offsets[6]),
    missionName: reader.readStringOrNull(offsets[7]),
    missionReward: reader.readLongOrNull(offsets[8]),
    missionTypeCode: reader.readStringOrNull(offsets[9]),
    missionTypeName: reader.readStringOrNull(offsets[10]),
    taskData: reader.readObjectList<TaskValidationDatum>(
      offsets[11],
      TaskValidationDatumSchema.deserialize,
      allOffsets,
      TaskValidationDatum(),
    ),
  );
  return object;
}

P _missionValidationDatumDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readObjectList<TaskValidationDatum>(
        offset,
        TaskValidationDatumSchema.deserialize,
        allOffsets,
        TaskValidationDatum(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MissionValidationDatumQueryFilter on QueryBuilder<
    MissionValidationDatum, MissionValidationDatum, QFilterCondition> {
  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> chapterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> chapterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chapterId',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> chapterIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chapterId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> isMandatoryAttachmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMandatoryAttachment',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> isMandatoryAttachmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMandatoryAttachment',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> isMandatoryAttachmentEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMandatoryAttachment',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> isMandatoryAttachmentGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isMandatoryAttachment',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> isMandatoryAttachmentLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isMandatoryAttachment',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> isMandatoryAttachmentBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isMandatoryAttachment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionActiveOnDayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionActiveOnDay',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionActiveOnDayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionActiveOnDay',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionActiveOnDayEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionActiveOnDay',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionActiveOnDayGreaterThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionActiveOnDayLessThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionActiveOnDayBetween(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionCode',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionCode',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeEqualTo(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeGreaterThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeLessThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeBetween(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeStartsWith(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeEndsWith(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
          QAfterFilterCondition>
      missionCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
          QAfterFilterCondition>
      missionCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionDurationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionDuration',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionDurationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionDuration',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionDurationEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionDurationGreaterThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionDurationLessThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionDurationBetween(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionInstruction',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionInstruction',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionEqualTo(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionGreaterThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionLessThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionBetween(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionStartsWith(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionEndsWith(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
          QAfterFilterCondition>
      missionInstructionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionInstruction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
          QAfterFilterCondition>
      missionInstructionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionInstruction',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionInstruction',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionInstructionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionInstruction',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionName',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionName',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionRewardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionReward',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionRewardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionReward',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionRewardEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionReward',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionTypeCode',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionTypeCode',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeEqualTo(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeGreaterThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeLessThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeBetween(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeStartsWith(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeEndsWith(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
          QAfterFilterCondition>
      missionTypeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
          QAfterFilterCondition>
      missionTypeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionTypeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionTypeName',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionTypeName',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameEqualTo(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameGreaterThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameLessThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameBetween(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameStartsWith(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameEndsWith(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
          QAfterFilterCondition>
      missionTypeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
          QAfterFilterCondition>
      missionTypeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionTypeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> missionTypeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> taskDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskData',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> taskDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskData',
      ));
    });
  }

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> taskDataLengthEqualTo(int length) {
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> taskDataIsEmpty() {
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> taskDataIsNotEmpty() {
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> taskDataLengthLessThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> taskDataLengthGreaterThan(
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

  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
      QAfterFilterCondition> taskDataLengthBetween(
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

extension MissionValidationDatumQueryObject on QueryBuilder<
    MissionValidationDatum, MissionValidationDatum, QFilterCondition> {
  QueryBuilder<MissionValidationDatum, MissionValidationDatum,
          QAfterFilterCondition>
      taskDataElement(FilterQuery<TaskValidationDatum> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'taskData');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TaskValidationDatumSchema = Schema(
  name: r'TaskValidationDatum',
  id: -2396294195178267378,
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
    r'answerAttachmentPath': PropertySchema(
      id: 2,
      name: r'answerAttachmentPath',
      type: IsarType.string,
    ),
    r'answerAttachmentUrl': PropertySchema(
      id: 3,
      name: r'answerAttachmentUrl',
      type: IsarType.string,
    ),
    r'answerReward': PropertySchema(
      id: 4,
      name: r'answerReward',
      type: IsarType.long,
    ),
    r'attachmentId': PropertySchema(
      id: 5,
      name: r'attachmentId',
      type: IsarType.long,
    ),
    r'attachmentPath': PropertySchema(
      id: 6,
      name: r'attachmentPath',
      type: IsarType.string,
    ),
    r'attachmentUrl': PropertySchema(
      id: 7,
      name: r'attachmentUrl',
      type: IsarType.string,
    ),
    r'feedbackComment': PropertySchema(
      id: 8,
      name: r'feedbackComment',
      type: IsarType.string,
    ),
    r'missionId': PropertySchema(
      id: 9,
      name: r'missionId',
      type: IsarType.long,
    ),
    r'qualitativeScoreId': PropertySchema(
      id: 10,
      name: r'qualitativeScoreId',
      type: IsarType.long,
    ),
    r'taskAnswerId': PropertySchema(
      id: 11,
      name: r'taskAnswerId',
      type: IsarType.long,
    ),
    r'taskCaption': PropertySchema(
      id: 12,
      name: r'taskCaption',
      type: IsarType.string,
    ),
    r'taskCode': PropertySchema(
      id: 13,
      name: r'taskCode',
      type: IsarType.string,
    ),
    r'taskGroup': PropertySchema(
      id: 14,
      name: r'taskGroup',
      type: IsarType.string,
    ),
    r'taskId': PropertySchema(
      id: 15,
      name: r'taskId',
      type: IsarType.long,
    ),
    r'taskReward': PropertySchema(
      id: 16,
      name: r'taskReward',
      type: IsarType.long,
    ),
    r'taskTypeCode': PropertySchema(
      id: 17,
      name: r'taskTypeCode',
      type: IsarType.string,
    ),
    r'taskTypeName': PropertySchema(
      id: 18,
      name: r'taskTypeName',
      type: IsarType.string,
    )
  },
  estimateSize: _taskValidationDatumEstimateSize,
  serialize: _taskValidationDatumSerialize,
  deserialize: _taskValidationDatumDeserialize,
  deserializeProp: _taskValidationDatumDeserializeProp,
);

int _taskValidationDatumEstimateSize(
  TaskValidationDatum object,
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
    final value = object.answerAttachmentPath;
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

void _taskValidationDatumSerialize(
  TaskValidationDatum object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answer);
  writer.writeLong(offsets[1], object.answerAttachmentId);
  writer.writeString(offsets[2], object.answerAttachmentPath);
  writer.writeString(offsets[3], object.answerAttachmentUrl);
  writer.writeLong(offsets[4], object.answerReward);
  writer.writeLong(offsets[5], object.attachmentId);
  writer.writeString(offsets[6], object.attachmentPath);
  writer.writeString(offsets[7], object.attachmentUrl);
  writer.writeString(offsets[8], object.feedbackComment);
  writer.writeLong(offsets[9], object.missionId);
  writer.writeLong(offsets[10], object.qualitativeScoreId);
  writer.writeLong(offsets[11], object.taskAnswerId);
  writer.writeString(offsets[12], object.taskCaption);
  writer.writeString(offsets[13], object.taskCode);
  writer.writeString(offsets[14], object.taskGroup);
  writer.writeLong(offsets[15], object.taskId);
  writer.writeLong(offsets[16], object.taskReward);
  writer.writeString(offsets[17], object.taskTypeCode);
  writer.writeString(offsets[18], object.taskTypeName);
}

TaskValidationDatum _taskValidationDatumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskValidationDatum(
    answer: reader.readStringOrNull(offsets[0]),
    answerAttachmentId: reader.readLongOrNull(offsets[1]),
    answerAttachmentPath: reader.readStringOrNull(offsets[2]),
    answerAttachmentUrl: reader.readStringOrNull(offsets[3]),
    answerReward: reader.readLongOrNull(offsets[4]),
    attachmentId: reader.readLongOrNull(offsets[5]),
    attachmentPath: reader.readStringOrNull(offsets[6]),
    attachmentUrl: reader.readStringOrNull(offsets[7]),
    feedbackComment: reader.readStringOrNull(offsets[8]),
    missionId: reader.readLongOrNull(offsets[9]),
    qualitativeScoreId: reader.readLongOrNull(offsets[10]),
    taskAnswerId: reader.readLongOrNull(offsets[11]),
    taskCaption: reader.readStringOrNull(offsets[12]),
    taskCode: reader.readStringOrNull(offsets[13]),
    taskGroup: reader.readStringOrNull(offsets[14]),
    taskId: reader.readLongOrNull(offsets[15]),
    taskReward: reader.readLongOrNull(offsets[16]),
    taskTypeCode: reader.readStringOrNull(offsets[17]),
    taskTypeName: reader.readStringOrNull(offsets[18]),
  );
  return object;
}

P _taskValidationDatumDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TaskValidationDatumQueryFilter on QueryBuilder<TaskValidationDatum,
    TaskValidationDatum, QFilterCondition> {
  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerAttachmentId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerAttachmentId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerAttachmentPath',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerAttachmentPath',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerAttachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerAttachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerAttachmentPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answerAttachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answerAttachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerAttachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerAttachmentPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerAttachmentPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerAttachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerAttachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerAttachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerAttachmentUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerAttachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerAttachmentUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerAttachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerRewardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerReward',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerRewardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerReward',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerRewardEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      answerRewardBetween(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentPath',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentPath',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachmentPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachmentPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachmentPath',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentUrl',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attachmentUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attachmentUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      attachmentUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attachmentUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      feedbackCommentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feedbackComment',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      feedbackCommentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feedbackComment',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      feedbackCommentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'feedbackComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      feedbackCommentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'feedbackComment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      feedbackCommentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feedbackComment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      feedbackCommentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'feedbackComment',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      missionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      missionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      missionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      qualitativeScoreIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualitativeScoreId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      qualitativeScoreIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualitativeScoreId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      qualitativeScoreIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualitativeScoreId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskAnswerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskAnswerId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskAnswerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskAnswerId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskAnswerIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskAnswerId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskAnswerIdBetween(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskCaption',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskCaption',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionEqualTo(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionLessThan(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionBetween(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionEndsWith(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskCaption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskCaption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCaptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskCaption',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskCode',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskCode',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeEqualTo(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeGreaterThan(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeLessThan(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeBetween(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeStartsWith(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeEndsWith(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskGroup',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskGroup',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskRewardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskReward',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskRewardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskReward',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskRewardEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskReward',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskRewardLessThan(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskRewardBetween(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskTypeCode',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskTypeCode',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeCodeEqualTo(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeCodeBetween(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskTypeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskTypeName',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskTypeName',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeNameEqualTo(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeNameBetween(
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
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

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskTypeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskTypeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskTypeName',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskValidationDatum, TaskValidationDatum, QAfterFilterCondition>
      taskTypeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskTypeName',
        value: '',
      ));
    });
  }
}

extension TaskValidationDatumQueryObject on QueryBuilder<TaskValidationDatum,
    TaskValidationDatum, QFilterCondition> {}
