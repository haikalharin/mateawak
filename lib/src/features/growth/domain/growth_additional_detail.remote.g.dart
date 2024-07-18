// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'growth_additional_detail.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGrowthAdditionalDetailRemoteCollection on Isar {
  IsarCollection<GrowthAdditionalDetailRemote>
      get growthAdditionalDetailRemotes => this.collection();
}

const GrowthAdditionalDetailRemoteSchema = CollectionSchema(
  name: r'GrowthAdditionalDetailRemote',
  id: 1799465951688605736,
  properties: {
    r'latestSyncDateLeaderboard': PropertySchema(
      id: 0,
      name: r'latestSyncDateLeaderboard',
      type: IsarType.string,
    ),
    r'latestSyncDateTeam': PropertySchema(
      id: 1,
      name: r'latestSyncDateTeam',
      type: IsarType.string,
    )
  },
  estimateSize: _growthAdditionalDetailRemoteEstimateSize,
  serialize: _growthAdditionalDetailRemoteSerialize,
  deserialize: _growthAdditionalDetailRemoteDeserialize,
  deserializeProp: _growthAdditionalDetailRemoteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _growthAdditionalDetailRemoteGetId,
  getLinks: _growthAdditionalDetailRemoteGetLinks,
  attach: _growthAdditionalDetailRemoteAttach,
  version: '3.1.0+1',
);

int _growthAdditionalDetailRemoteEstimateSize(
  GrowthAdditionalDetailRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.latestSyncDateLeaderboard;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.latestSyncDateTeam;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _growthAdditionalDetailRemoteSerialize(
  GrowthAdditionalDetailRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.latestSyncDateLeaderboard);
  writer.writeString(offsets[1], object.latestSyncDateTeam);
}

GrowthAdditionalDetailRemote _growthAdditionalDetailRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GrowthAdditionalDetailRemote(
    id: id,
    latestSyncDateLeaderboard: reader.readStringOrNull(offsets[0]),
    latestSyncDateTeam: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _growthAdditionalDetailRemoteDeserializeProp<P>(
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

Id _growthAdditionalDetailRemoteGetId(GrowthAdditionalDetailRemote object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _growthAdditionalDetailRemoteGetLinks(
    GrowthAdditionalDetailRemote object) {
  return [];
}

void _growthAdditionalDetailRemoteAttach(
    IsarCollection<dynamic> col, Id id, GrowthAdditionalDetailRemote object) {
  object.id = id;
}

extension GrowthAdditionalDetailRemoteQueryWhereSort on QueryBuilder<
    GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote, QWhere> {
  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GrowthAdditionalDetailRemoteQueryWhere on QueryBuilder<
    GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote, QWhereClause> {
  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
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

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterWhereClause> idBetween(
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

extension GrowthAdditionalDetailRemoteQueryFilter on QueryBuilder<
    GrowthAdditionalDetailRemote,
    GrowthAdditionalDetailRemote,
    QFilterCondition> {
  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latestSyncDateLeaderboard',
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latestSyncDateLeaderboard',
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latestSyncDateLeaderboard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latestSyncDateLeaderboard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latestSyncDateLeaderboard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latestSyncDateLeaderboard',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'latestSyncDateLeaderboard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'latestSyncDateLeaderboard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
          QAfterFilterCondition>
      latestSyncDateLeaderboardContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latestSyncDateLeaderboard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
          QAfterFilterCondition>
      latestSyncDateLeaderboardMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latestSyncDateLeaderboard',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latestSyncDateLeaderboard',
        value: '',
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateLeaderboardIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latestSyncDateLeaderboard',
        value: '',
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latestSyncDateTeam',
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latestSyncDateTeam',
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latestSyncDateTeam',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latestSyncDateTeam',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latestSyncDateTeam',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latestSyncDateTeam',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'latestSyncDateTeam',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'latestSyncDateTeam',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
          QAfterFilterCondition>
      latestSyncDateTeamContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latestSyncDateTeam',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
          QAfterFilterCondition>
      latestSyncDateTeamMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latestSyncDateTeam',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latestSyncDateTeam',
        value: '',
      ));
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterFilterCondition> latestSyncDateTeamIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latestSyncDateTeam',
        value: '',
      ));
    });
  }
}

extension GrowthAdditionalDetailRemoteQueryObject on QueryBuilder<
    GrowthAdditionalDetailRemote,
    GrowthAdditionalDetailRemote,
    QFilterCondition> {}

extension GrowthAdditionalDetailRemoteQueryLinks on QueryBuilder<
    GrowthAdditionalDetailRemote,
    GrowthAdditionalDetailRemote,
    QFilterCondition> {}

extension GrowthAdditionalDetailRemoteQuerySortBy on QueryBuilder<
    GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote, QSortBy> {
  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> sortByLatestSyncDateLeaderboard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateLeaderboard', Sort.asc);
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> sortByLatestSyncDateLeaderboardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateLeaderboard', Sort.desc);
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> sortByLatestSyncDateTeam() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateTeam', Sort.asc);
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> sortByLatestSyncDateTeamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateTeam', Sort.desc);
    });
  }
}

extension GrowthAdditionalDetailRemoteQuerySortThenBy on QueryBuilder<
    GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote, QSortThenBy> {
  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> thenByLatestSyncDateLeaderboard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateLeaderboard', Sort.asc);
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> thenByLatestSyncDateLeaderboardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateLeaderboard', Sort.desc);
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> thenByLatestSyncDateTeam() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateTeam', Sort.asc);
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QAfterSortBy> thenByLatestSyncDateTeamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latestSyncDateTeam', Sort.desc);
    });
  }
}

extension GrowthAdditionalDetailRemoteQueryWhereDistinct on QueryBuilder<
    GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote, QDistinct> {
  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
          QDistinct>
      distinctByLatestSyncDateLeaderboard({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latestSyncDateLeaderboard',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, GrowthAdditionalDetailRemote,
      QDistinct> distinctByLatestSyncDateTeam({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latestSyncDateTeam',
          caseSensitive: caseSensitive);
    });
  }
}

extension GrowthAdditionalDetailRemoteQueryProperty on QueryBuilder<
    GrowthAdditionalDetailRemote,
    GrowthAdditionalDetailRemote,
    QQueryProperty> {
  QueryBuilder<GrowthAdditionalDetailRemote, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, String?, QQueryOperations>
      latestSyncDateLeaderboardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latestSyncDateLeaderboard');
    });
  }

  QueryBuilder<GrowthAdditionalDetailRemote, String?, QQueryOperations>
      latestSyncDateTeamProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latestSyncDateTeam');
    });
  }
}
