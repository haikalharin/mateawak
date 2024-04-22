// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_submission_request.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetResultSubmissionRequestRemoteCollection on Isar {
  IsarCollection<ResultSubmissionRequestRemote>
      get resultSubmissionRequestRemotes => this.collection();
}

const ResultSubmissionRequestRemoteSchema = CollectionSchema(
  name: r'ResultSubmissionRequestRemote',
  id: 1570801206944617639,
  properties: {
    r'accuracy': PropertySchema(
      id: 0,
      name: r'accuracy',
      type: IsarType.long,
    ),
    r'competencyName': PropertySchema(
      id: 1,
      name: r'competencyName',
      type: IsarType.string,
    ),
    r'rewardGained': PropertySchema(
      id: 2,
      name: r'rewardGained',
      type: IsarType.long,
    )
  },
  estimateSize: _resultSubmissionRequestRemoteEstimateSize,
  serialize: _resultSubmissionRequestRemoteSerialize,
  deserialize: _resultSubmissionRequestRemoteDeserialize,
  deserializeProp: _resultSubmissionRequestRemoteDeserializeProp,
  idName: r'employeeMissionId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _resultSubmissionRequestRemoteGetId,
  getLinks: _resultSubmissionRequestRemoteGetLinks,
  attach: _resultSubmissionRequestRemoteAttach,
  version: '3.1.0+1',
);

int _resultSubmissionRequestRemoteEstimateSize(
  ResultSubmissionRequestRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.competencyName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _resultSubmissionRequestRemoteSerialize(
  ResultSubmissionRequestRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.accuracy);
  writer.writeString(offsets[1], object.competencyName);
  writer.writeLong(offsets[2], object.rewardGained);
}

ResultSubmissionRequestRemote _resultSubmissionRequestRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ResultSubmissionRequestRemote(
    accuracy: reader.readLongOrNull(offsets[0]),
    competencyName: reader.readStringOrNull(offsets[1]),
    employeeMissionId: id,
    rewardGained: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _resultSubmissionRequestRemoteDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _resultSubmissionRequestRemoteGetId(ResultSubmissionRequestRemote object) {
  return object.employeeMissionId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _resultSubmissionRequestRemoteGetLinks(
    ResultSubmissionRequestRemote object) {
  return [];
}

void _resultSubmissionRequestRemoteAttach(
    IsarCollection<dynamic> col, Id id, ResultSubmissionRequestRemote object) {
  object.employeeMissionId = id;
}

extension ResultSubmissionRequestRemoteQueryWhereSort on QueryBuilder<
    ResultSubmissionRequestRemote, ResultSubmissionRequestRemote, QWhere> {
  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterWhere> anyEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ResultSubmissionRequestRemoteQueryWhere on QueryBuilder<
    ResultSubmissionRequestRemote,
    ResultSubmissionRequestRemote,
    QWhereClause> {
  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterWhereClause> employeeMissionIdEqualTo(Id employeeMissionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: employeeMissionId,
        upper: employeeMissionId,
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
          QAfterWhereClause>
      employeeMissionIdLessThan(Id employeeMissionId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: employeeMissionId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

extension ResultSubmissionRequestRemoteQueryFilter on QueryBuilder<
    ResultSubmissionRequestRemote,
    ResultSubmissionRequestRemote,
    QFilterCondition> {
  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> accuracyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accuracy',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> accuracyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accuracy',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> accuracyEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accuracy',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> competencyNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'competencyName',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> competencyNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'competencyName',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> competencyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'competencyName',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> competencyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'competencyName',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> employeeMissionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> employeeMissionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeMissionId',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> employeeMissionIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeMissionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> rewardGainedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rewardGained',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> rewardGainedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rewardGained',
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterFilterCondition> rewardGainedEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rewardGained',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
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
}

extension ResultSubmissionRequestRemoteQueryObject on QueryBuilder<
    ResultSubmissionRequestRemote,
    ResultSubmissionRequestRemote,
    QFilterCondition> {}

extension ResultSubmissionRequestRemoteQueryLinks on QueryBuilder<
    ResultSubmissionRequestRemote,
    ResultSubmissionRequestRemote,
    QFilterCondition> {}

extension ResultSubmissionRequestRemoteQuerySortBy on QueryBuilder<
    ResultSubmissionRequestRemote, ResultSubmissionRequestRemote, QSortBy> {
  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> sortByAccuracy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracy', Sort.asc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> sortByAccuracyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracy', Sort.desc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> sortByCompetencyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competencyName', Sort.asc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> sortByCompetencyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competencyName', Sort.desc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> sortByRewardGained() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardGained', Sort.asc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> sortByRewardGainedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardGained', Sort.desc);
    });
  }
}

extension ResultSubmissionRequestRemoteQuerySortThenBy on QueryBuilder<
    ResultSubmissionRequestRemote, ResultSubmissionRequestRemote, QSortThenBy> {
  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> thenByAccuracy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracy', Sort.asc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> thenByAccuracyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accuracy', Sort.desc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> thenByCompetencyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competencyName', Sort.asc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> thenByCompetencyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'competencyName', Sort.desc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> thenByEmployeeMissionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.asc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> thenByEmployeeMissionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeMissionId', Sort.desc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> thenByRewardGained() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardGained', Sort.asc);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QAfterSortBy> thenByRewardGainedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardGained', Sort.desc);
    });
  }
}

extension ResultSubmissionRequestRemoteQueryWhereDistinct on QueryBuilder<
    ResultSubmissionRequestRemote, ResultSubmissionRequestRemote, QDistinct> {
  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QDistinct> distinctByAccuracy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accuracy');
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QDistinct> distinctByCompetencyName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'competencyName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, ResultSubmissionRequestRemote,
      QDistinct> distinctByRewardGained() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rewardGained');
    });
  }
}

extension ResultSubmissionRequestRemoteQueryProperty on QueryBuilder<
    ResultSubmissionRequestRemote,
    ResultSubmissionRequestRemote,
    QQueryProperty> {
  QueryBuilder<ResultSubmissionRequestRemote, int, QQueryOperations>
      employeeMissionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeMissionId');
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, int?, QQueryOperations>
      accuracyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accuracy');
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, String?, QQueryOperations>
      competencyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'competencyName');
    });
  }

  QueryBuilder<ResultSubmissionRequestRemote, int?, QQueryOperations>
      rewardGainedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rewardGained');
    });
  }
}
