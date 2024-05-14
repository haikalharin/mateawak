// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_request.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetValidateRequestRemoteCollection on Isar {
  IsarCollection<ValidateRequestRemote> get validateRequestRemotes =>
      this.collection();
}

const ValidateRequestRemoteSchema = CollectionSchema(
  name: r'ValidateRequestRemote',
  id: 4398198154390207107,
  properties: {
    r'comment': PropertySchema(
      id: 0,
      name: r'comment',
      type: IsarType.string,
    ),
    r'qualitativeScore': PropertySchema(
      id: 1,
      name: r'qualitativeScore',
      type: IsarType.long,
    ),
    r'taskId': PropertySchema(
      id: 2,
      name: r'taskId',
      type: IsarType.long,
    ),
    r'validationDate': PropertySchema(
      id: 3,
      name: r'validationDate',
      type: IsarType.string,
    )
  },
  estimateSize: _validateRequestRemoteEstimateSize,
  serialize: _validateRequestRemoteSerialize,
  deserialize: _validateRequestRemoteDeserialize,
  deserializeProp: _validateRequestRemoteDeserializeProp,
  idName: r'employeeMissionId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _validateRequestRemoteGetId,
  getLinks: _validateRequestRemoteGetLinks,
  attach: _validateRequestRemoteAttach,
  version: '3.1.0+1',
);

int _validateRequestRemoteEstimateSize(
  ValidateRequestRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.comment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.validationDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _validateRequestRemoteSerialize(
  ValidateRequestRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.comment);
  writer.writeLong(offsets[1], object.qualitativeScore);
  writer.writeLong(offsets[2], object.taskId);
  writer.writeString(offsets[3], object.validationDate);
}

ValidateRequestRemote _validateRequestRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ValidateRequestRemote(
    comment: reader.readStringOrNull(offsets[0]),
    employeeMissionId: id,
    qualitativeScore: reader.readLongOrNull(offsets[1]),
    taskId: reader.readLongOrNull(offsets[2]),
    validationDate: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _validateRequestRemoteDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _validateRequestRemoteGetId(ValidateRequestRemote object) {
  return object.employeeMissionId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _validateRequestRemoteGetLinks(
    ValidateRequestRemote object) {
  return [];
}

void _validateRequestRemoteAttach(
    IsarCollection<dynamic> col, Id id, ValidateRequestRemote object) {
  object.employeeMissionId = id;
}

extension ValidateRequestRemoteQueryWhereSort
    on QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QWhere> {
  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterWhere>
      anyEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ValidateRequestRemoteQueryWhere on QueryBuilder<ValidateRequestRemote,
    ValidateRequestRemote, QWhereClause> {
  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterWhereClause>
      employeeMissionIdEqualTo(Id employeeMissionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: employeeMissionId,
        upper: employeeMissionId,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterWhereClause>
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

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterWhereClause>
      employeeMissionIdGreaterThan(Id employeeMissionId,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(
            lower: employeeMissionId, includeLower: include),
      );
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterWhereClause>
      employeeMissionIdLessThan(Id employeeMissionId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: employeeMissionId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterWhereClause>
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

extension ValidateRequestRemoteQueryFilter on QueryBuilder<
    ValidateRequestRemote, ValidateRequestRemote, QFilterCondition> {
  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
          QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
          QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> employeeMissionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> employeeMissionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> employeeMissionIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeMissionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
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

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
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

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
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

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> qualitativeScoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualitativeScore',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> qualitativeScoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualitativeScore',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> qualitativeScoreEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualitativeScore',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> qualitativeScoreGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qualitativeScore',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> qualitativeScoreLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qualitativeScore',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> qualitativeScoreBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qualitativeScore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> taskIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> taskIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taskId',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> taskIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskId',
        value: value,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> taskIdGreaterThan(
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

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> taskIdLessThan(
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

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> taskIdBetween(
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

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'validationDate',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'validationDate',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'validationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'validationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'validationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'validationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'validationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
          QAfterFilterCondition>
      validationDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'validationDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
          QAfterFilterCondition>
      validationDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'validationDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validationDate',
        value: '',
      ));
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote,
      QAfterFilterCondition> validationDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'validationDate',
        value: '',
      ));
    });
  }
}

extension ValidateRequestRemoteQueryObject on QueryBuilder<
    ValidateRequestRemote, ValidateRequestRemote, QFilterCondition> {}

extension ValidateRequestRemoteQueryLinks on QueryBuilder<ValidateRequestRemote,
    ValidateRequestRemote, QFilterCondition> {}

extension ValidateRequestRemoteQuerySortBy
    on QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QSortBy> {
  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      sortByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      sortByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      sortByQualitativeScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScore', Sort.asc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      sortByQualitativeScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScore', Sort.desc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      sortByTaskId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskId', Sort.asc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      sortByTaskIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskId', Sort.desc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      sortByValidationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validationDate', Sort.asc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      sortByValidationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validationDate', Sort.desc);
    });
  }
}

extension ValidateRequestRemoteQuerySortThenBy
    on QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QSortThenBy> {
  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.asc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByEmployeeMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.desc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByQualitativeScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScore', Sort.asc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByQualitativeScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qualitativeScore', Sort.desc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByTaskId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskId', Sort.asc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByTaskIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskId', Sort.desc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByValidationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validationDate', Sort.asc);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QAfterSortBy>
      thenByValidationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validationDate', Sort.desc);
    });
  }
}

extension ValidateRequestRemoteQueryWhereDistinct
    on QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QDistinct> {
  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QDistinct>
      distinctByComment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QDistinct>
      distinctByQualitativeScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qualitativeScore');
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QDistinct>
      distinctByTaskId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taskId');
    });
  }

  QueryBuilder<ValidateRequestRemote, ValidateRequestRemote, QDistinct>
      distinctByValidationDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validationDate',
          caseSensitive: caseSensitive);
    });
  }
}

extension ValidateRequestRemoteQueryProperty on QueryBuilder<
    ValidateRequestRemote, ValidateRequestRemote, QQueryProperty> {
  QueryBuilder<ValidateRequestRemote, int, QQueryOperations>
      employeeMissionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeMissionId');
    });
  }

  QueryBuilder<ValidateRequestRemote, String?, QQueryOperations>
      commentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comment');
    });
  }

  QueryBuilder<ValidateRequestRemote, int?, QQueryOperations>
      qualitativeScoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qualitativeScore');
    });
  }

  QueryBuilder<ValidateRequestRemote, int?, QQueryOperations> taskIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskId');
    });
  }

  QueryBuilder<ValidateRequestRemote, String?, QQueryOperations>
      validationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validationDate');
    });
  }
}
