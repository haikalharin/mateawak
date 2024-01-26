// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_produksi_response.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAchievementProduksiResponseRemoteCollection on Isar {
  IsarCollection<AchievementProduksiResponseRemote>
      get achievementProduksiResponseRemotes => this.collection();
}

const AchievementProduksiResponseRemoteSchema = CollectionSchema(
  name: r'AchievementProduksiResponseRemote',
  id: -1022739931994306386,
  properties: {
    r'achievement': PropertySchema(
      id: 0,
      name: r'achievement',
      type: IsarType.double,
    ),
    r'achievementActualMTD': PropertySchema(
      id: 1,
      name: r'achievementActualMTD',
      type: IsarType.double,
    ),
    r'achievementActualYTD': PropertySchema(
      id: 2,
      name: r'achievementActualYTD',
      type: IsarType.double,
    ),
    r'achievementMTD': PropertySchema(
      id: 3,
      name: r'achievementMTD',
      type: IsarType.double,
    ),
    r'achievementMTDProrate': PropertySchema(
      id: 4,
      name: r'achievementMTDProrate',
      type: IsarType.double,
    ),
    r'achievementPlanMTD': PropertySchema(
      id: 5,
      name: r'achievementPlanMTD',
      type: IsarType.double,
    ),
    r'achievementPlanMTDProrate': PropertySchema(
      id: 6,
      name: r'achievementPlanMTDProrate',
      type: IsarType.double,
    ),
    r'achievementPlanYTD': PropertySchema(
      id: 7,
      name: r'achievementPlanYTD',
      type: IsarType.double,
    ),
    r'achievementPlanYTDProrate': PropertySchema(
      id: 8,
      name: r'achievementPlanYTDProrate',
      type: IsarType.double,
    ),
    r'achievementRemainMTD': PropertySchema(
      id: 9,
      name: r'achievementRemainMTD',
      type: IsarType.double,
    ),
    r'achievementRemainMTDProrate': PropertySchema(
      id: 10,
      name: r'achievementRemainMTDProrate',
      type: IsarType.double,
    ),
    r'achievementRemainYTD': PropertySchema(
      id: 11,
      name: r'achievementRemainYTD',
      type: IsarType.double,
    ),
    r'achievementRemainYTDProrate': PropertySchema(
      id: 12,
      name: r'achievementRemainYTDProrate',
      type: IsarType.double,
    ),
    r'achievementYTD': PropertySchema(
      id: 13,
      name: r'achievementYTD',
      type: IsarType.double,
    ),
    r'achievementYTDProrate': PropertySchema(
      id: 14,
      name: r'achievementYTDProrate',
      type: IsarType.double,
    ),
    r'dailyAchievementActual': PropertySchema(
      id: 15,
      name: r'dailyAchievementActual',
      type: IsarType.double,
    ),
    r'dailyAchievementActualMinus1': PropertySchema(
      id: 16,
      name: r'dailyAchievementActualMinus1',
      type: IsarType.double,
    ),
    r'dailyAchievementPlan': PropertySchema(
      id: 17,
      name: r'dailyAchievementPlan',
      type: IsarType.double,
    ),
    r'isOb': PropertySchema(
      id: 18,
      name: r'isOb',
      type: IsarType.bool,
    ),
    r'pa': PropertySchema(
      id: 19,
      name: r'pa',
      type: IsarType.double,
    ),
    r'pty': PropertySchema(
      id: 20,
      name: r'pty',
      type: IsarType.double,
    ),
    r'qty': PropertySchema(
      id: 21,
      name: r'qty',
      type: IsarType.double,
    ),
    r'remain': PropertySchema(
      id: 22,
      name: r'remain',
      type: IsarType.double,
    ),
    r'subLocation': PropertySchema(
      id: 23,
      name: r'subLocation',
      type: IsarType.string,
    ),
    r'ua': PropertySchema(
      id: 24,
      name: r'ua',
      type: IsarType.double,
    )
  },
  estimateSize: _achievementProduksiResponseRemoteEstimateSize,
  serialize: _achievementProduksiResponseRemoteSerialize,
  deserialize: _achievementProduksiResponseRemoteDeserialize,
  deserializeProp: _achievementProduksiResponseRemoteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _achievementProduksiResponseRemoteGetId,
  getLinks: _achievementProduksiResponseRemoteGetLinks,
  attach: _achievementProduksiResponseRemoteAttach,
  version: '3.1.0+1',
);

int _achievementProduksiResponseRemoteEstimateSize(
  AchievementProduksiResponseRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.subLocation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _achievementProduksiResponseRemoteSerialize(
  AchievementProduksiResponseRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.achievement);
  writer.writeDouble(offsets[1], object.achievementActualMTD);
  writer.writeDouble(offsets[2], object.achievementActualYTD);
  writer.writeDouble(offsets[3], object.achievementMTD);
  writer.writeDouble(offsets[4], object.achievementMTDProrate);
  writer.writeDouble(offsets[5], object.achievementPlanMTD);
  writer.writeDouble(offsets[6], object.achievementPlanMTDProrate);
  writer.writeDouble(offsets[7], object.achievementPlanYTD);
  writer.writeDouble(offsets[8], object.achievementPlanYTDProrate);
  writer.writeDouble(offsets[9], object.achievementRemainMTD);
  writer.writeDouble(offsets[10], object.achievementRemainMTDProrate);
  writer.writeDouble(offsets[11], object.achievementRemainYTD);
  writer.writeDouble(offsets[12], object.achievementRemainYTDProrate);
  writer.writeDouble(offsets[13], object.achievementYTD);
  writer.writeDouble(offsets[14], object.achievementYTDProrate);
  writer.writeDouble(offsets[15], object.dailyAchievementActual);
  writer.writeDouble(offsets[16], object.dailyAchievementActualMinus1);
  writer.writeDouble(offsets[17], object.dailyAchievementPlan);
  writer.writeBool(offsets[18], object.isOb);
  writer.writeDouble(offsets[19], object.pa);
  writer.writeDouble(offsets[20], object.pty);
  writer.writeDouble(offsets[21], object.qty);
  writer.writeDouble(offsets[22], object.remain);
  writer.writeString(offsets[23], object.subLocation);
  writer.writeDouble(offsets[24], object.ua);
}

AchievementProduksiResponseRemote _achievementProduksiResponseRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AchievementProduksiResponseRemote(
    achievement: reader.readDoubleOrNull(offsets[0]),
    achievementActualMTD: reader.readDoubleOrNull(offsets[1]),
    achievementActualYTD: reader.readDoubleOrNull(offsets[2]),
    achievementMTD: reader.readDoubleOrNull(offsets[3]),
    achievementMTDProrate: reader.readDoubleOrNull(offsets[4]),
    achievementPlanMTD: reader.readDoubleOrNull(offsets[5]),
    achievementPlanMTDProrate: reader.readDoubleOrNull(offsets[6]),
    achievementPlanYTD: reader.readDoubleOrNull(offsets[7]),
    achievementPlanYTDProrate: reader.readDoubleOrNull(offsets[8]),
    achievementRemainMTD: reader.readDoubleOrNull(offsets[9]),
    achievementRemainMTDProrate: reader.readDoubleOrNull(offsets[10]),
    achievementRemainYTD: reader.readDoubleOrNull(offsets[11]),
    achievementRemainYTDProrate: reader.readDoubleOrNull(offsets[12]),
    achievementYTD: reader.readDoubleOrNull(offsets[13]),
    achievementYTDProrate: reader.readDoubleOrNull(offsets[14]),
    dailyAchievementActual: reader.readDoubleOrNull(offsets[15]),
    dailyAchievementActualMinus1: reader.readDoubleOrNull(offsets[16]),
    dailyAchievementPlan: reader.readDoubleOrNull(offsets[17]),
    isOb: reader.readBoolOrNull(offsets[18]),
    pa: reader.readDoubleOrNull(offsets[19]),
    pty: reader.readDoubleOrNull(offsets[20]),
    qty: reader.readDoubleOrNull(offsets[21]),
    remain: reader.readDoubleOrNull(offsets[22]),
    subLocation: reader.readStringOrNull(offsets[23]),
    ua: reader.readDoubleOrNull(offsets[24]),
  );
  object.id = id;
  return object;
}

P _achievementProduksiResponseRemoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readDoubleOrNull(offset)) as P;
    case 18:
      return (reader.readBoolOrNull(offset)) as P;
    case 19:
      return (reader.readDoubleOrNull(offset)) as P;
    case 20:
      return (reader.readDoubleOrNull(offset)) as P;
    case 21:
      return (reader.readDoubleOrNull(offset)) as P;
    case 22:
      return (reader.readDoubleOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _achievementProduksiResponseRemoteGetId(
    AchievementProduksiResponseRemote object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _achievementProduksiResponseRemoteGetLinks(
    AchievementProduksiResponseRemote object) {
  return [];
}

void _achievementProduksiResponseRemoteAttach(IsarCollection<dynamic> col,
    Id id, AchievementProduksiResponseRemote object) {
  object.id = id;
}

extension AchievementProduksiResponseRemoteQueryWhereSort on QueryBuilder<
    AchievementProduksiResponseRemote,
    AchievementProduksiResponseRemote,
    QWhere> {
  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AchievementProduksiResponseRemoteQueryWhere on QueryBuilder<
    AchievementProduksiResponseRemote,
    AchievementProduksiResponseRemote,
    QWhereClause> {
  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
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
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterWhereClause> idBetween(
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

extension AchievementProduksiResponseRemoteQueryFilter on QueryBuilder<
    AchievementProduksiResponseRemote,
    AchievementProduksiResponseRemote,
    QFilterCondition> {
  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievement',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievement',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievement',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievement',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievement',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievement',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualMTDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementActualMTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualMTDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementActualMTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualMTDEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementActualMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualMTDGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementActualMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualMTDLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementActualMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualMTDBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementActualMTD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualYTDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementActualYTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualYTDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementActualYTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualYTDEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementActualYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualYTDGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementActualYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualYTDLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementActualYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementActualYTDBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementActualYTD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementMTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementMTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementMTD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDProrateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementMTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDProrateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementMTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDProrateEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementMTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDProrateGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementMTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDProrateLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementMTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementMTDProrateBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementMTDProrate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementPlanMTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementPlanMTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementPlanMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementPlanMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementPlanMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementPlanMTD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDProrateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementPlanMTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDProrateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementPlanMTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDProrateEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementPlanMTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDProrateGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementPlanMTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDProrateLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementPlanMTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanMTDProrateBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementPlanMTDProrate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementPlanYTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementPlanYTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementPlanYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementPlanYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementPlanYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementPlanYTD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDProrateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementPlanYTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDProrateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementPlanYTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDProrateEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementPlanYTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDProrateGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementPlanYTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDProrateLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementPlanYTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementPlanYTDProrateBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementPlanYTDProrate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementRemainMTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementRemainMTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementRemainMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementRemainMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementRemainMTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementRemainMTD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDProrateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementRemainMTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDProrateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementRemainMTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDProrateEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementRemainMTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDProrateGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementRemainMTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDProrateLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementRemainMTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainMTDProrateBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementRemainMTDProrate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementRemainYTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementRemainYTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementRemainYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementRemainYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementRemainYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementRemainYTD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDProrateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementRemainYTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDProrateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementRemainYTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDProrateEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementRemainYTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDProrateGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementRemainYTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDProrateLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementRemainYTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementRemainYTDProrateBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementRemainYTDProrate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementYTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementYTD',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementYTD',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementYTD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDProrateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'achievementYTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDProrateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'achievementYTDProrate',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDProrateEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'achievementYTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDProrateGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'achievementYTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDProrateLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'achievementYTDProrate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> achievementYTDProrateBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'achievementYTDProrate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dailyAchievementActual',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dailyAchievementActual',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyAchievementActual',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dailyAchievementActual',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dailyAchievementActual',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dailyAchievementActual',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualMinus1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dailyAchievementActualMinus1',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualMinus1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dailyAchievementActualMinus1',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualMinus1EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyAchievementActualMinus1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualMinus1GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dailyAchievementActualMinus1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualMinus1LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dailyAchievementActualMinus1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementActualMinus1Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dailyAchievementActualMinus1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementPlanIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dailyAchievementPlan',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementPlanIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dailyAchievementPlan',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementPlanEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyAchievementPlan',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementPlanGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dailyAchievementPlan',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementPlanLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dailyAchievementPlan',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> dailyAchievementPlanBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dailyAchievementPlan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> isObIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isOb',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> isObIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isOb',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> isObEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOb',
        value: value,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> paIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pa',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> paIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pa',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> paEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> paGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> paLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> paBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> ptyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pty',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> ptyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pty',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> ptyEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> ptyGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> ptyLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> ptyBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pty',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> qtyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qty',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> qtyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qty',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> qtyEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> qtyGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> qtyLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> qtyBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qty',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> remainIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'remain',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> remainIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'remain',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> remainEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remain',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> remainGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'remain',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> remainLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'remain',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> remainBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'remain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> subLocationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subLocation',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> subLocationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subLocation',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
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
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
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
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
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
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
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
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
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
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
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

  QueryBuilder<AchievementProduksiResponseRemote,
          AchievementProduksiResponseRemote, QAfterFilterCondition>
      subLocationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
          AchievementProduksiResponseRemote, QAfterFilterCondition>
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
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> subLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterFilterCondition> subLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> uaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ua',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> uaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ua',
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> uaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ua',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> uaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ua',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> uaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ua',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterFilterCondition> uaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ua',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension AchievementProduksiResponseRemoteQueryObject on QueryBuilder<
    AchievementProduksiResponseRemote,
    AchievementProduksiResponseRemote,
    QFilterCondition> {}

extension AchievementProduksiResponseRemoteQueryLinks on QueryBuilder<
    AchievementProduksiResponseRemote,
    AchievementProduksiResponseRemote,
    QFilterCondition> {}

extension AchievementProduksiResponseRemoteQuerySortBy on QueryBuilder<
    AchievementProduksiResponseRemote,
    AchievementProduksiResponseRemote,
    QSortBy> {
  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByAchievement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievement', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByAchievementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievement', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementActualMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementActualMTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementActualMTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementActualMTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementActualYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementActualYTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementActualYTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementActualYTD', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByAchievementMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementMTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementMTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementMTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementMTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementMTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementMTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementMTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementPlanMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanMTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementPlanMTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanMTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementPlanMTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanMTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementPlanMTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanMTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementPlanYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanYTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementPlanYTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanYTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementPlanYTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanYTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementPlanYTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanYTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementRemainMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainMTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementRemainMTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainMTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementRemainMTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainMTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementRemainMTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainMTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementRemainYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainYTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementRemainYTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainYTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementRemainYTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainYTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementRemainYTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainYTDProrate', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByAchievementYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementYTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementYTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementYTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementYTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementYTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByAchievementYTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementYTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByDailyAchievementActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementActual', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByDailyAchievementActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementActual', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByDailyAchievementActualMinus1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementActualMinus1', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByDailyAchievementActualMinus1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementActualMinus1', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByDailyAchievementPlan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementPlan', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> sortByDailyAchievementPlanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementPlan', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByIsOb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByIsObDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByPa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pa', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByPaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pa', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByPty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pty', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByPtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pty', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qty', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByQtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qty', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByRemain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remain', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByRemainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remain', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortBySubLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subLocation', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortBySubLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subLocation', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByUa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ua', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> sortByUaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ua', Sort.desc);
    });
  }
}

extension AchievementProduksiResponseRemoteQuerySortThenBy on QueryBuilder<
    AchievementProduksiResponseRemote,
    AchievementProduksiResponseRemote,
    QSortThenBy> {
  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByAchievement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievement', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByAchievementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievement', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementActualMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementActualMTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementActualMTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementActualMTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementActualYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementActualYTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementActualYTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementActualYTD', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByAchievementMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementMTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementMTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementMTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementMTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementMTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementMTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementMTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementPlanMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanMTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementPlanMTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanMTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementPlanMTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanMTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementPlanMTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanMTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementPlanYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanYTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementPlanYTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanYTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementPlanYTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanYTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementPlanYTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementPlanYTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementRemainMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainMTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementRemainMTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainMTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementRemainMTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainMTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementRemainMTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainMTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementRemainYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainYTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementRemainYTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainYTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementRemainYTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainYTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementRemainYTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementRemainYTDProrate', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByAchievementYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementYTD', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementYTDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementYTD', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementYTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementYTDProrate', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByAchievementYTDProrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'achievementYTDProrate', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByDailyAchievementActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementActual', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByDailyAchievementActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementActual', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByDailyAchievementActualMinus1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementActualMinus1', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByDailyAchievementActualMinus1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementActualMinus1', Sort.desc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByDailyAchievementPlan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementPlan', Sort.asc);
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QAfterSortBy> thenByDailyAchievementPlanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyAchievementPlan', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByIsOb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByIsObDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByPa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pa', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByPaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pa', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByPty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pty', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByPtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pty', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qty', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByQtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qty', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByRemain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remain', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByRemainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remain', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenBySubLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subLocation', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenBySubLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subLocation', Sort.desc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByUa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ua', Sort.asc);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QAfterSortBy> thenByUaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ua', Sort.desc);
    });
  }
}

extension AchievementProduksiResponseRemoteQueryWhereDistinct on QueryBuilder<
    AchievementProduksiResponseRemote,
    AchievementProduksiResponseRemote,
    QDistinct> {
  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QDistinct> distinctByAchievement() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievement');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementActualMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementActualMTD');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementActualYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementActualYTD');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QDistinct> distinctByAchievementMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementMTD');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementMTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementMTDProrate');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementPlanMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementPlanMTD');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementPlanMTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementPlanMTDProrate');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementPlanYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementPlanYTD');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementPlanYTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementPlanYTDProrate');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementRemainMTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementRemainMTD');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementRemainMTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementRemainMTDProrate');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementRemainYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementRemainYTD');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementRemainYTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementRemainYTDProrate');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QDistinct> distinctByAchievementYTD() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementYTD');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByAchievementYTDProrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'achievementYTDProrate');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByDailyAchievementActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dailyAchievementActual');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByDailyAchievementActualMinus1() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dailyAchievementActualMinus1');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctByDailyAchievementPlan() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dailyAchievementPlan');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QDistinct> distinctByIsOb() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOb');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QDistinct> distinctByPa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pa');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QDistinct> distinctByPty() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pty');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QDistinct> distinctByQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qty');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QDistinct> distinctByRemain() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remain');
    });
  }

  QueryBuilder<
      AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote,
      QDistinct> distinctBySubLocation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subLocation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote,
      AchievementProduksiResponseRemote, QDistinct> distinctByUa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ua');
    });
  }
}

extension AchievementProduksiResponseRemoteQueryProperty on QueryBuilder<
    AchievementProduksiResponseRemote,
    AchievementProduksiResponseRemote,
    QQueryProperty> {
  QueryBuilder<AchievementProduksiResponseRemote, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievement');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementActualMTDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementActualMTD');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementActualYTDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementActualYTD');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementMTDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementMTD');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementMTDProrateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementMTDProrate');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementPlanMTDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementPlanMTD');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementPlanMTDProrateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementPlanMTDProrate');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementPlanYTDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementPlanYTD');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementPlanYTDProrateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementPlanYTDProrate');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementRemainMTDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementRemainMTD');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementRemainMTDProrateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementRemainMTDProrate');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementRemainYTDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementRemainYTD');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementRemainYTDProrateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementRemainYTDProrate');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementYTDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementYTD');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      achievementYTDProrateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'achievementYTDProrate');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      dailyAchievementActualProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dailyAchievementActual');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      dailyAchievementActualMinus1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dailyAchievementActualMinus1');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      dailyAchievementPlanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dailyAchievementPlan');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, bool?, QQueryOperations>
      isObProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOb');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      paProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pa');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      ptyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pty');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      qtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qty');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      remainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remain');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, String?, QQueryOperations>
      subLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subLocation');
    });
  }

  QueryBuilder<AchievementProduksiResponseRemote, double?, QQueryOperations>
      uaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ua');
    });
  }
}
