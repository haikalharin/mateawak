// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamification_additional_detail.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGamificationAdditionalDetailRemoteCollection on Isar {
  IsarCollection<GamificationAdditionalDetailRemote>
      get gamificationAdditionalDetailRemotes => this.collection();
}

const GamificationAdditionalDetailRemoteSchema = CollectionSchema(
  name: r'GamificationAdditionalDetailRemote',
  id: -2005025222091246078,
  properties: {
    r'latestSyncDate': PropertySchema(
      id: 0,
      name: r'latestSyncDate',
      type: IsarType.string,
    ),
    r'latestSyncDateValidation': PropertySchema(
      id: 1,
      name: r'latestSyncDateValidation',
      type: IsarType.string,
    )
  },
  estimateSize: _gamificationAdditionalDetailRemoteEstimateSize,
  serialize: _gamificationAdditionalDetailRemoteSerialize,
  deserialize: _gamificationAdditionalDetailRemoteDeserialize,
  deserializeProp: _gamificationAdditionalDetailRemoteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _gamificationAdditionalDetailRemoteGetId,
  getLinks: _gamificationAdditionalDetailRemoteGetLinks,
  attach: _gamificationAdditionalDetailRemoteAttach,
  version: '3.1.0+1',
);

int _gamificationAdditionalDetailRemoteEstimateSize(
  GamificationAdditionalDetailRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.latestSyncDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.latestSyncDateValidation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _gamificationAdditionalDetailRemoteSerialize(
  GamificationAdditionalDetailRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.latestSyncDate);
  writer.writeString(offsets[1], object.latestSyncDateValidation);
}

GamificationAdditionalDetailRemote
    _gamificationAdditionalDetailRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GamificationAdditionalDetailRemote(
    id: id,
    latestSyncDate: reader.readStringOrNull(offsets[0]),
    latestSyncDateValidation: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _gamificationAdditionalDetailRemoteDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _gamificationAdditionalDetailRemoteGetId(
    GamificationAdditionalDetailRemote object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _gamificationAdditionalDetailRemoteGetLinks(
    GamificationAdditionalDetailRemote object) {
  return [];
}

void _gamificationAdditionalDetailRemoteAttach(IsarCollection<dynamic> col,
    Id id, GamificationAdditionalDetailRemote object) {
  object.id = id;
}

extension GamificationAdditionalDetailRemoteQueryWhereSort on QueryBuilder<
    GamificationAdditionalDetailRemote,
    GamificationAdditionalDetailRemote,
    QWhere> {
  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GamificationAdditionalDetailRemoteQueryWhere on QueryBuilder<
    GamificationAdditionalDetailRemote,
    GamificationAdditionalDetailRemote,
    QWhereClause> {
  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GamificationAdditionalDetailRemoteQueryFilter on QueryBuilder<
    GamificationAdditionalDetailRemote,
    GamificationAdditionalDetailRemote,
    QFilterCondition> {
  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latestSyncDate',
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latestSyncDate',
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latestSyncDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latestSyncDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latestSyncDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latestSyncDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'latestSyncDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'latestSyncDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
          GamificationAdditionalDetailRemote, QAfterFilterCondition>
      latestSyncDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latestSyncDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
          GamificationAdditionalDetailRemote, QAfterFilterCondition>
      latestSyncDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latestSyncDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latestSyncDate',
        value: '',
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latestSyncDate',
        value: '',
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latestSyncDateValidation',
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latestSyncDateValidation',
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latestSyncDateValidation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latestSyncDateValidation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latestSyncDateValidation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latestSyncDateValidation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'latestSyncDateValidation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'latestSyncDateValidation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
          GamificationAdditionalDetailRemote, QAfterFilterCondition>
      latestSyncDateValidationContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latestSyncDateValidation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
          GamificationAdditionalDetailRemote, QAfterFilterCondition>
      latestSyncDateValidationMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latestSyncDateValidation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latestSyncDateValidation',
        value: '',
      ));
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateValidationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latestSyncDateValidation',
        value: '',
      ));
    });
  }
}

extension GamificationAdditionalDetailRemoteQueryObject on QueryBuilder<
    GamificationAdditionalDetailRemote,
    GamificationAdditionalDetailRemote,
    QFilterCondition> {}

extension GamificationAdditionalDetailRemoteQueryLinks on QueryBuilder<
    GamificationAdditionalDetailRemote,
    GamificationAdditionalDetailRemote,
    QFilterCondition> {}

extension GamificationAdditionalDetailRemoteQuerySortBy on QueryBuilder<
    GamificationAdditionalDetailRemote,
    GamificationAdditionalDetailRemote,
    QSortBy> {
  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterSortBy> sortByLatestSyncDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDate', Sort.asc);
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterSortBy> sortByLatestSyncDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDate', Sort.desc);
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterSortBy> sortByLatestSyncDateValidation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateValidation', Sort.asc);
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterSortBy> sortByLatestSyncDateValidationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateValidation', Sort.desc);
    });
  }
}

extension GamificationAdditionalDetailRemoteQuerySortThenBy on QueryBuilder<
    GamificationAdditionalDetailRemote,
    GamificationAdditionalDetailRemote,
    QSortThenBy> {
  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote, QAfterSortBy> thenByLatestSyncDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDate', Sort.asc);
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterSortBy> thenByLatestSyncDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDate', Sort.desc);
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterSortBy> thenByLatestSyncDateValidation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateValidation', Sort.asc);
    });
  }

  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QAfterSortBy> thenByLatestSyncDateValidationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateValidation', Sort.desc);
    });
  }
}

extension GamificationAdditionalDetailRemoteQueryWhereDistinct on QueryBuilder<
    GamificationAdditionalDetailRemote,
    GamificationAdditionalDetailRemote,
    QDistinct> {
  QueryBuilder<
      GamificationAdditionalDetailRemote,
      GamificationAdditionalDetailRemote,
      QDistinct> distinctByLatestSyncDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latestSyncDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote,
          GamificationAdditionalDetailRemote, QDistinct>
      distinctByLatestSyncDateValidation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latestSyncDateValidation',
          caseSensitive: caseSensitive);
    });
  }
}

extension GamificationAdditionalDetailRemoteQueryProperty on QueryBuilder<
    GamificationAdditionalDetailRemote,
    GamificationAdditionalDetailRemote,
    QQueryProperty> {
  QueryBuilder<GamificationAdditionalDetailRemote, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote, String?, QQueryOperations>
      latestSyncDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latestSyncDate');
    });
  }

  QueryBuilder<GamificationAdditionalDetailRemote, String?, QQueryOperations>
      latestSyncDateValidationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latestSyncDateValidation');
    });
  }
}
