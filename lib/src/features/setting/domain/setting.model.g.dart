// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingModelCollection on Isar {
  IsarCollection<SettingModel> get settingModels => this.collection();
}

const SettingModelSchema = CollectionSchema(
  name: r'SettingModel',
  id: 4631777779382765364,
  properties: {
    r'isAreaAllActive': PropertySchema(
      id: 0,
      name: r'isAreaAllActive',
      type: IsarType.bool,
    ),
    r'isAreaBotActive': PropertySchema(
      id: 1,
      name: r'isAreaBotActive',
      type: IsarType.bool,
    ),
    r'isAreaMidActive': PropertySchema(
      id: 2,
      name: r'isAreaMidActive',
      type: IsarType.bool,
    ),
    r'isAreaTopActive': PropertySchema(
      id: 3,
      name: r'isAreaTopActive',
      type: IsarType.bool,
    ),
    r'isMaterialCmActive': PropertySchema(
      id: 4,
      name: r'isMaterialCmActive',
      type: IsarType.bool,
    ),
    r'isMaterialObActive': PropertySchema(
      id: 5,
      name: r'isMaterialObActive',
      type: IsarType.bool,
    ),
    r'isTabPerformanceActive': PropertySchema(
      id: 6,
      name: r'isTabPerformanceActive',
      type: IsarType.bool,
    ),
    r'isTabProdActive': PropertySchema(
      id: 7,
      name: r'isTabProdActive',
      type: IsarType.bool,
    ),
    r'isTabRcaActive': PropertySchema(
      id: 8,
      name: r'isTabRcaActive',
      type: IsarType.bool,
    ),
    r'isTabReadinessActive': PropertySchema(
      id: 9,
      name: r'isTabReadinessActive',
      type: IsarType.bool,
    )
  },
  estimateSize: _settingModelEstimateSize,
  serialize: _settingModelSerialize,
  deserialize: _settingModelDeserialize,
  deserializeProp: _settingModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingModelGetId,
  getLinks: _settingModelGetLinks,
  attach: _settingModelAttach,
  version: '3.1.0+1',
);

int _settingModelEstimateSize(
  SettingModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _settingModelSerialize(
  SettingModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isAreaAllActive);
  writer.writeBool(offsets[1], object.isAreaBotActive);
  writer.writeBool(offsets[2], object.isAreaMidActive);
  writer.writeBool(offsets[3], object.isAreaTopActive);
  writer.writeBool(offsets[4], object.isMaterialCmActive);
  writer.writeBool(offsets[5], object.isMaterialObActive);
  writer.writeBool(offsets[6], object.isTabPerformanceActive);
  writer.writeBool(offsets[7], object.isTabProdActive);
  writer.writeBool(offsets[8], object.isTabRcaActive);
  writer.writeBool(offsets[9], object.isTabReadinessActive);
}

SettingModel _settingModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingModel();
  object.id = id;
  object.isAreaAllActive = reader.readBoolOrNull(offsets[0]);
  object.isAreaBotActive = reader.readBoolOrNull(offsets[1]);
  object.isAreaMidActive = reader.readBoolOrNull(offsets[2]);
  object.isAreaTopActive = reader.readBoolOrNull(offsets[3]);
  object.isMaterialCmActive = reader.readBoolOrNull(offsets[4]);
  object.isMaterialObActive = reader.readBoolOrNull(offsets[5]);
  object.isTabPerformanceActive = reader.readBoolOrNull(offsets[6]);
  object.isTabProdActive = reader.readBoolOrNull(offsets[7]);
  object.isTabRcaActive = reader.readBoolOrNull(offsets[8]);
  object.isTabReadinessActive = reader.readBoolOrNull(offsets[9]);
  return object;
}

P _settingModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingModelGetId(SettingModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingModelGetLinks(SettingModel object) {
  return [];
}

void _settingModelAttach(
    IsarCollection<dynamic> col, Id id, SettingModel object) {
  object.id = id;
}

extension SettingModelQueryWhereSort
    on QueryBuilder<SettingModel, SettingModel, QWhere> {
  QueryBuilder<SettingModel, SettingModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingModelQueryWhere
    on QueryBuilder<SettingModel, SettingModel, QWhereClause> {
  QueryBuilder<SettingModel, SettingModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<SettingModel, SettingModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterWhereClause> idBetween(
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

extension SettingModelQueryFilter
    on QueryBuilder<SettingModel, SettingModel, QFilterCondition> {
  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaAllActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAreaAllActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaAllActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAreaAllActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaAllActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAreaAllActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaBotActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAreaBotActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaBotActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAreaBotActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaBotActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAreaBotActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaMidActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAreaMidActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaMidActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAreaMidActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaMidActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAreaMidActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaTopActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAreaTopActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaTopActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAreaTopActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isAreaTopActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAreaTopActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isMaterialCmActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMaterialCmActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isMaterialCmActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMaterialCmActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isMaterialCmActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMaterialCmActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isMaterialObActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMaterialObActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isMaterialObActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMaterialObActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isMaterialObActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMaterialObActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabPerformanceActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTabPerformanceActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabPerformanceActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTabPerformanceActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabPerformanceActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTabPerformanceActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabProdActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTabProdActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabProdActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTabProdActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabProdActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTabProdActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabRcaActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTabRcaActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabRcaActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTabRcaActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabRcaActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTabRcaActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabReadinessActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTabReadinessActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabReadinessActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTabReadinessActive',
      ));
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterFilterCondition>
      isTabReadinessActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTabReadinessActive',
        value: value,
      ));
    });
  }
}

extension SettingModelQueryObject
    on QueryBuilder<SettingModel, SettingModel, QFilterCondition> {}

extension SettingModelQueryLinks
    on QueryBuilder<SettingModel, SettingModel, QFilterCondition> {}

extension SettingModelQuerySortBy
    on QueryBuilder<SettingModel, SettingModel, QSortBy> {
  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsAreaAllActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaAllActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsAreaAllActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaAllActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsAreaBotActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaBotActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsAreaBotActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaBotActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsAreaMidActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaMidActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsAreaMidActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaMidActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsAreaTopActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaTopActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsAreaTopActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaTopActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsMaterialCmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialCmActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsMaterialCmActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialCmActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsMaterialObActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialObActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsMaterialObActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialObActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsTabPerformanceActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabPerformanceActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsTabPerformanceActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabPerformanceActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsTabProdActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabProdActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsTabProdActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabProdActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsTabRcaActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabRcaActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsTabRcaActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabRcaActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsTabReadinessActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabReadinessActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      sortByIsTabReadinessActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabReadinessActive', Sort.desc);
    });
  }
}

extension SettingModelQuerySortThenBy
    on QueryBuilder<SettingModel, SettingModel, QSortThenBy> {
  QueryBuilder<SettingModel, SettingModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsAreaAllActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaAllActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsAreaAllActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaAllActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsAreaBotActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaBotActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsAreaBotActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaBotActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsAreaMidActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaMidActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsAreaMidActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaMidActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsAreaTopActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaTopActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsAreaTopActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaTopActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsMaterialCmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialCmActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsMaterialCmActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialCmActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsMaterialObActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialObActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsMaterialObActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialObActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsTabPerformanceActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabPerformanceActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsTabPerformanceActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabPerformanceActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsTabProdActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabProdActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsTabProdActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabProdActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsTabRcaActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabRcaActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsTabRcaActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabRcaActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsTabReadinessActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabReadinessActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModel, SettingModel, QAfterSortBy>
      thenByIsTabReadinessActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabReadinessActive', Sort.desc);
    });
  }
}

extension SettingModelQueryWhereDistinct
    on QueryBuilder<SettingModel, SettingModel, QDistinct> {
  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsAreaAllActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAreaAllActive');
    });
  }

  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsAreaBotActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAreaBotActive');
    });
  }

  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsAreaMidActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAreaMidActive');
    });
  }

  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsAreaTopActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAreaTopActive');
    });
  }

  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsMaterialCmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMaterialCmActive');
    });
  }

  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsMaterialObActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMaterialObActive');
    });
  }

  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsTabPerformanceActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTabPerformanceActive');
    });
  }

  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsTabProdActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTabProdActive');
    });
  }

  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsTabRcaActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTabRcaActive');
    });
  }

  QueryBuilder<SettingModel, SettingModel, QDistinct>
      distinctByIsTabReadinessActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTabReadinessActive');
    });
  }
}

extension SettingModelQueryProperty
    on QueryBuilder<SettingModel, SettingModel, QQueryProperty> {
  QueryBuilder<SettingModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations>
      isAreaAllActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAreaAllActive');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations>
      isAreaBotActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAreaBotActive');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations>
      isAreaMidActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAreaMidActive');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations>
      isAreaTopActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAreaTopActive');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations>
      isMaterialCmActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMaterialCmActive');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations>
      isMaterialObActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMaterialObActive');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations>
      isTabPerformanceActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTabPerformanceActive');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations>
      isTabProdActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTabProdActive');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations> isTabRcaActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTabRcaActive');
    });
  }

  QueryBuilder<SettingModel, bool?, QQueryOperations>
      isTabReadinessActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTabReadinessActive');
    });
  }
}
