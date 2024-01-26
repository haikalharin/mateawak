// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingModeEtamkawalCollection on Isar {
  IsarCollection<SettingModeEtamkawal> get settingModels => this.collection();
}

const SettingModeEtamkawalSchema = CollectionSchema(
  name: r'SettingModeEtamkawal',
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
  SettingModeEtamkawal object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _settingModelSerialize(
  SettingModeEtamkawal object,
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

SettingModeEtamkawal _settingModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingModeEtamkawal();
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

Id _settingModelGetId(SettingModeEtamkawal object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingModelGetLinks(SettingModeEtamkawal object) {
  return [];
}

void _settingModelAttach(
    IsarCollection<dynamic> col, Id id, SettingModeEtamkawal object) {
  object.id = id;
}

extension SettingModeEtamkawalQueryWhereSort
    on QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QWhere> {
  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingModeEtamkawalQueryWhere
    on QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QWhereClause> {
  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterWhereClause> idBetween(
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

extension SettingModeEtamkawalQueryFilter
    on QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QFilterCondition> {
  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaAllActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAreaAllActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaAllActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAreaAllActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaAllActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAreaAllActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaBotActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAreaBotActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaBotActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAreaBotActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaBotActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAreaBotActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaMidActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAreaMidActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaMidActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAreaMidActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaMidActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAreaMidActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaTopActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAreaTopActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaTopActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAreaTopActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isAreaTopActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAreaTopActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isMaterialCmActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMaterialCmActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isMaterialCmActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMaterialCmActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isMaterialCmActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMaterialCmActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isMaterialObActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMaterialObActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isMaterialObActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMaterialObActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isMaterialObActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMaterialObActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabPerformanceActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTabPerformanceActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabPerformanceActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTabPerformanceActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabPerformanceActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTabPerformanceActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabProdActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTabProdActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabProdActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTabProdActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabProdActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTabProdActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabRcaActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTabRcaActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabRcaActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTabRcaActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabRcaActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTabRcaActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabReadinessActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTabReadinessActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabReadinessActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTabReadinessActive',
      ));
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterFilterCondition>
      isTabReadinessActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTabReadinessActive',
        value: value,
      ));
    });
  }
}

extension SettingModeEtamkawalQueryObject
    on QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QFilterCondition> {}

extension SettingModeEtamkawalQueryLinks
    on QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QFilterCondition> {}

extension SettingModeEtamkawalQuerySortBy
    on QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QSortBy> {
  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsAreaAllActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaAllActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsAreaAllActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaAllActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsAreaBotActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaBotActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsAreaBotActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaBotActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsAreaMidActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaMidActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsAreaMidActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaMidActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsAreaTopActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaTopActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsAreaTopActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaTopActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsMaterialCmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialCmActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsMaterialCmActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialCmActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsMaterialObActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialObActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsMaterialObActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialObActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsTabPerformanceActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabPerformanceActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsTabPerformanceActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabPerformanceActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsTabProdActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabProdActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsTabProdActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabProdActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsTabRcaActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabRcaActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsTabRcaActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabRcaActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsTabReadinessActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabReadinessActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      sortByIsTabReadinessActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabReadinessActive', Sort.desc);
    });
  }
}

extension SettingModeEtamkawalQuerySortThenBy
    on QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QSortThenBy> {
  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsAreaAllActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaAllActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsAreaAllActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaAllActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsAreaBotActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaBotActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsAreaBotActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaBotActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsAreaMidActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaMidActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsAreaMidActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaMidActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsAreaTopActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaTopActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsAreaTopActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAreaTopActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsMaterialCmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialCmActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsMaterialCmActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialCmActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsMaterialObActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialObActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsMaterialObActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMaterialObActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsTabPerformanceActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabPerformanceActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsTabPerformanceActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabPerformanceActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsTabProdActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabProdActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsTabProdActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabProdActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsTabRcaActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabRcaActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsTabRcaActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabRcaActive', Sort.desc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsTabReadinessActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabReadinessActive', Sort.asc);
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QAfterSortBy>
      thenByIsTabReadinessActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTabReadinessActive', Sort.desc);
    });
  }
}

extension SettingModeEtamkawalQueryWhereDistinct
    on QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct> {
  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsAreaAllActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAreaAllActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsAreaBotActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAreaBotActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsAreaMidActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAreaMidActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsAreaTopActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAreaTopActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsMaterialCmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMaterialCmActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsMaterialObActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMaterialObActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsTabPerformanceActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTabPerformanceActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsTabProdActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTabProdActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsTabRcaActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTabRcaActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QDistinct>
      distinctByIsTabReadinessActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTabReadinessActive');
    });
  }
}

extension SettingModeEtamkawalQueryProperty
    on QueryBuilder<SettingModeEtamkawal, SettingModeEtamkawal, QQueryProperty> {
  QueryBuilder<SettingModeEtamkawal, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations>
      isAreaAllActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAreaAllActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations>
      isAreaBotActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAreaBotActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations>
      isAreaMidActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAreaMidActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations>
      isAreaTopActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAreaTopActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations>
      isMaterialCmActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMaterialCmActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations>
      isMaterialObActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMaterialObActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations>
      isTabPerformanceActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTabPerformanceActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations>
      isTabProdActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTabProdActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations> isTabRcaActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTabRcaActive');
    });
  }

  QueryBuilder<SettingModeEtamkawal, bool?, QQueryOperations>
      isTabReadinessActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTabReadinessActive');
    });
  }
}
