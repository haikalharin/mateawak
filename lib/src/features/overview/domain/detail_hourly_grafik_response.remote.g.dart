// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_hourly_grafik_response.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDetailHourlyGrafikResponseRemoteCollection on Isar {
  IsarCollection<DetailHourlyGrafikResponseRemote>
      get detailHourlyGrafikResponseRemotes => this.collection();
}

const DetailHourlyGrafikResponseRemoteSchema = CollectionSchema(
  name: r'DetailHourlyGrafikResponseRemote',
  id: 7266549307479618397,
  properties: {
    r'hourFrom': PropertySchema(
      id: 0,
      name: r'hourFrom',
      type: IsarType.string,
    ),
    r'hourTo': PropertySchema(
      id: 1,
      name: r'hourTo',
      type: IsarType.string,
    ),
    r'hourlyAchievementActual': PropertySchema(
      id: 2,
      name: r'hourlyAchievementActual',
      type: IsarType.double,
    ),
    r'hourlyAchievementPlan': PropertySchema(
      id: 3,
      name: r'hourlyAchievementPlan',
      type: IsarType.double,
    ),
    r'isOb': PropertySchema(
      id: 4,
      name: r'isOb',
      type: IsarType.bool,
    ),
    r'subLocation': PropertySchema(
      id: 5,
      name: r'subLocation',
      type: IsarType.string,
    )
  },
  estimateSize: _detailHourlyGrafikResponseRemoteEstimateSize,
  serialize: _detailHourlyGrafikResponseRemoteSerialize,
  deserialize: _detailHourlyGrafikResponseRemoteDeserialize,
  deserializeProp: _detailHourlyGrafikResponseRemoteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _detailHourlyGrafikResponseRemoteGetId,
  getLinks: _detailHourlyGrafikResponseRemoteGetLinks,
  attach: _detailHourlyGrafikResponseRemoteAttach,
  version: '3.1.0+1',
);

int _detailHourlyGrafikResponseRemoteEstimateSize(
  DetailHourlyGrafikResponseRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.hourFrom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.hourTo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subLocation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _detailHourlyGrafikResponseRemoteSerialize(
  DetailHourlyGrafikResponseRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.hourFrom);
  writer.writeString(offsets[1], object.hourTo);
  writer.writeDouble(offsets[2], object.hourlyAchievementActual);
  writer.writeDouble(offsets[3], object.hourlyAchievementPlan);
  writer.writeBool(offsets[4], object.isOb);
  writer.writeString(offsets[5], object.subLocation);
}

DetailHourlyGrafikResponseRemote _detailHourlyGrafikResponseRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DetailHourlyGrafikResponseRemote(
    hourFrom: reader.readStringOrNull(offsets[0]),
    hourTo: reader.readStringOrNull(offsets[1]),
    hourlyAchievementActual: reader.readDoubleOrNull(offsets[2]),
    hourlyAchievementPlan: reader.readDoubleOrNull(offsets[3]),
    isOb: reader.readBoolOrNull(offsets[4]),
    subLocation: reader.readStringOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _detailHourlyGrafikResponseRemoteDeserializeProp<P>(
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
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _detailHourlyGrafikResponseRemoteGetId(
    DetailHourlyGrafikResponseRemote object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _detailHourlyGrafikResponseRemoteGetLinks(
    DetailHourlyGrafikResponseRemote object) {
  return [];
}

void _detailHourlyGrafikResponseRemoteAttach(IsarCollection<dynamic> col, Id id,
    DetailHourlyGrafikResponseRemote object) {
  object.id = id;
}

extension DetailHourlyGrafikResponseRemoteQueryWhereSort on QueryBuilder<
    DetailHourlyGrafikResponseRemote,
    DetailHourlyGrafikResponseRemote,
    QWhere> {
  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DetailHourlyGrafikResponseRemoteQueryWhere on QueryBuilder<
    DetailHourlyGrafikResponseRemote,
    DetailHourlyGrafikResponseRemote,
    QWhereClause> {
  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterWhereClause> idNotEqualTo(Id id) {
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
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterWhereClause> idBetween(
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

extension DetailHourlyGrafikResponseRemoteQueryFilter on QueryBuilder<
    DetailHourlyGrafikResponseRemote,
    DetailHourlyGrafikResponseRemote,
    QFilterCondition> {
  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourFromIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hourFrom',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourFromIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hourFrom',
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourFromEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hourFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourFromGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hourFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourFromLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hourFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourFromBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hourFrom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourFromStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hourFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourFromEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hourFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
          DetailHourlyGrafikResponseRemote, QAfterFilterCondition>
      hourFromContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hourFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
          DetailHourlyGrafikResponseRemote, QAfterFilterCondition>
      hourFromMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hourFrom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourFromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hourFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourFromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hourFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hourTo',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hourTo',
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourToEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hourTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourToGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hourTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourToLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hourTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourToBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hourTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hourTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hourTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
          DetailHourlyGrafikResponseRemote, QAfterFilterCondition>
      hourToContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hourTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
          DetailHourlyGrafikResponseRemote, QAfterFilterCondition>
      hourToMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hourTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> hourToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hourTo',
        value: '',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hourTo',
        value: '',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementActualIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hourlyAchievementActual',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementActualIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hourlyAchievementActual',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementActualEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hourlyAchievementActual',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementActualGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hourlyAchievementActual',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementActualLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hourlyAchievementActual',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementActualBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hourlyAchievementActual',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementPlanIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hourlyAchievementPlan',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementPlanIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hourlyAchievementPlan',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementPlanEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hourlyAchievementPlan',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementPlanGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hourlyAchievementPlan',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementPlanLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hourlyAchievementPlan',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> hourlyAchievementPlanBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hourlyAchievementPlan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> isObIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isOb',
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterFilterCondition> isObIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isOb',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> isObEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOb',
        value: value,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subLocation',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subLocation',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
          DetailHourlyGrafikResponseRemote, QAfterFilterCondition>
      subLocationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
          DetailHourlyGrafikResponseRemote, QAfterFilterCondition>
      subLocationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subLocation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterFilterCondition> subLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subLocation',
        value: '',
      ));
    });
  }
}

extension DetailHourlyGrafikResponseRemoteQueryObject on QueryBuilder<
    DetailHourlyGrafikResponseRemote,
    DetailHourlyGrafikResponseRemote,
    QFilterCondition> {}

extension DetailHourlyGrafikResponseRemoteQueryLinks on QueryBuilder<
    DetailHourlyGrafikResponseRemote,
    DetailHourlyGrafikResponseRemote,
    QFilterCondition> {}

extension DetailHourlyGrafikResponseRemoteQuerySortBy on QueryBuilder<
    DetailHourlyGrafikResponseRemote,
    DetailHourlyGrafikResponseRemote,
    QSortBy> {
  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> sortByHourFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourFrom', Sort.asc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> sortByHourFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourFrom', Sort.desc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> sortByHourTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourTo', Sort.asc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> sortByHourToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourTo', Sort.desc);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterSortBy> sortByHourlyAchievementActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourlyAchievementActual', Sort.asc);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterSortBy> sortByHourlyAchievementActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourlyAchievementActual', Sort.desc);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterSortBy> sortByHourlyAchievementPlan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourlyAchievementPlan', Sort.asc);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterSortBy> sortByHourlyAchievementPlanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourlyAchievementPlan', Sort.desc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> sortByIsOb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.asc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> sortByIsObDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.desc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> sortBySubLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subLocation', Sort.asc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> sortBySubLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subLocation', Sort.desc);
    });
  }
}

extension DetailHourlyGrafikResponseRemoteQuerySortThenBy on QueryBuilder<
    DetailHourlyGrafikResponseRemote,
    DetailHourlyGrafikResponseRemote,
    QSortThenBy> {
  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenByHourFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourFrom', Sort.asc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenByHourFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourFrom', Sort.desc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenByHourTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourTo', Sort.asc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenByHourToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourTo', Sort.desc);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterSortBy> thenByHourlyAchievementActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourlyAchievementActual', Sort.asc);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterSortBy> thenByHourlyAchievementActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourlyAchievementActual', Sort.desc);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterSortBy> thenByHourlyAchievementPlan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourlyAchievementPlan', Sort.asc);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QAfterSortBy> thenByHourlyAchievementPlanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hourlyAchievementPlan', Sort.desc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenByIsOb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.asc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenByIsObDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.desc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenBySubLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subLocation', Sort.asc);
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QAfterSortBy> thenBySubLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subLocation', Sort.desc);
    });
  }
}

extension DetailHourlyGrafikResponseRemoteQueryWhereDistinct on QueryBuilder<
    DetailHourlyGrafikResponseRemote,
    DetailHourlyGrafikResponseRemote,
    QDistinct> {
  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QDistinct> distinctByHourFrom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hourFrom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QDistinct> distinctByHourTo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hourTo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QDistinct> distinctByHourlyAchievementActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hourlyAchievementActual');
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QDistinct> distinctByHourlyAchievementPlan() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hourlyAchievementPlan');
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote, QDistinct> distinctByIsOb() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOb');
    });
  }

  QueryBuilder<
      DetailHourlyGrafikResponseRemote,
      DetailHourlyGrafikResponseRemote,
      QDistinct> distinctBySubLocation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subLocation', caseSensitive: caseSensitive);
    });
  }
}

extension DetailHourlyGrafikResponseRemoteQueryProperty on QueryBuilder<
    DetailHourlyGrafikResponseRemote,
    DetailHourlyGrafikResponseRemote,
    QQueryProperty> {
  QueryBuilder<DetailHourlyGrafikResponseRemote, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote, String?, QQueryOperations>
      hourFromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hourFrom');
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote, String?, QQueryOperations>
      hourToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hourTo');
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote, double?, QQueryOperations>
      hourlyAchievementActualProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hourlyAchievementActual');
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote, double?, QQueryOperations>
      hourlyAchievementPlanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hourlyAchievementPlan');
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote, bool?, QQueryOperations>
      isObProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOb');
    });
  }

  QueryBuilder<DetailHourlyGrafikResponseRemote, String?, QQueryOperations>
      subLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subLocation');
    });
  }
}
