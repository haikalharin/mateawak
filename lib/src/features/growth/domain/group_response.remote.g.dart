// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_response.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGroupResponseRemoteCollection on Isar {
  IsarCollection<GroupResponseRemote> get groupResponseRemotes =>
      this.collection();
}

const GroupResponseRemoteSchema = CollectionSchema(
  name: r'GroupResponseRemote',
  id: 3299560413259423595,
  properties: {
    r'groupName': PropertySchema(
      id: 0,
      name: r'groupName',
      type: IsarType.string,
    ),
    r'missionData': PropertySchema(
      id: 1,
      name: r'missionData',
      type: IsarType.objectList,
      target: r'MissionFilterDatum',
    )
  },
  estimateSize: _groupResponseRemoteEstimateSize,
  serialize: _groupResponseRemoteSerialize,
  deserialize: _groupResponseRemoteDeserialize,
  deserializeProp: _groupResponseRemoteDeserializeProp,
  idName: r'groupId',
  indexes: {},
  links: {},
  embeddedSchemas: {r'MissionFilterDatum': MissionFilterDatumSchema},
  getId: _groupResponseRemoteGetId,
  getLinks: _groupResponseRemoteGetLinks,
  attach: _groupResponseRemoteAttach,
  version: '3.1.0+1',
);

int _groupResponseRemoteEstimateSize(
  GroupResponseRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.groupName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.missionData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[MissionFilterDatum]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              MissionFilterDatumSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _groupResponseRemoteSerialize(
  GroupResponseRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.groupName);
  writer.writeObjectList<MissionFilterDatum>(
    offsets[1],
    allOffsets,
    MissionFilterDatumSchema.serialize,
    object.missionData,
  );
}

GroupResponseRemote _groupResponseRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GroupResponseRemote(
    groupId: id,
    groupName: reader.readStringOrNull(offsets[0]),
    missionData: reader.readObjectList<MissionFilterDatum>(
      offsets[1],
      MissionFilterDatumSchema.deserialize,
      allOffsets,
      MissionFilterDatum(),
    ),
  );
  return object;
}

P _groupResponseRemoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectList<MissionFilterDatum>(
        offset,
        MissionFilterDatumSchema.deserialize,
        allOffsets,
        MissionFilterDatum(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _groupResponseRemoteGetId(GroupResponseRemote object) {
  return object.groupId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _groupResponseRemoteGetLinks(
    GroupResponseRemote object) {
  return [];
}

void _groupResponseRemoteAttach(
    IsarCollection<dynamic> col, Id id, GroupResponseRemote object) {
  object.groupId = id;
}

extension GroupResponseRemoteQueryWhereSort
    on QueryBuilder<GroupResponseRemote, GroupResponseRemote, QWhere> {
  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterWhere>
      anyGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GroupResponseRemoteQueryWhere
    on QueryBuilder<GroupResponseRemote, GroupResponseRemote, QWhereClause> {
  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterWhereClause>
      groupIdEqualTo(Id groupId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: groupId,
        upper: groupId,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterWhereClause>
      groupIdNotEqualTo(Id groupId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: groupId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: groupId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: groupId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: groupId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterWhereClause>
      groupIdGreaterThan(Id groupId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: groupId, includeLower: include),
      );
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterWhereClause>
      groupIdLessThan(Id groupId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: groupId, includeUpper: include),
      );
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterWhereClause>
      groupIdBetween(
    Id lowerGroupId,
    Id upperGroupId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerGroupId,
        includeLower: includeLower,
        upper: upperGroupId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GroupResponseRemoteQueryFilter on QueryBuilder<GroupResponseRemote,
    GroupResponseRemote, QFilterCondition> {
  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupId',
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupId',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupId',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupId',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupName',
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupName',
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupName',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      groupNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupName',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      missionDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionData',
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      missionDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionData',
      ));
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      missionDataLengthEqualTo(int length) {
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

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      missionDataIsEmpty() {
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

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      missionDataIsNotEmpty() {
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

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      missionDataLengthLessThan(
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

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      missionDataLengthGreaterThan(
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

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      missionDataLengthBetween(
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
}

extension GroupResponseRemoteQueryObject on QueryBuilder<GroupResponseRemote,
    GroupResponseRemote, QFilterCondition> {
  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterFilterCondition>
      missionDataElement(FilterQuery<MissionFilterDatum> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'missionData');
    });
  }
}

extension GroupResponseRemoteQueryLinks on QueryBuilder<GroupResponseRemote,
    GroupResponseRemote, QFilterCondition> {}

extension GroupResponseRemoteQuerySortBy
    on QueryBuilder<GroupResponseRemote, GroupResponseRemote, QSortBy> {
  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterSortBy>
      sortByGroupName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupName', Sort.asc);
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterSortBy>
      sortByGroupNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupName', Sort.desc);
    });
  }
}

extension GroupResponseRemoteQuerySortThenBy
    on QueryBuilder<GroupResponseRemote, GroupResponseRemote, QSortThenBy> {
  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterSortBy>
      thenByGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.asc);
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterSortBy>
      thenByGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupId', Sort.desc);
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterSortBy>
      thenByGroupName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupName', Sort.asc);
    });
  }

  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QAfterSortBy>
      thenByGroupNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupName', Sort.desc);
    });
  }
}

extension GroupResponseRemoteQueryWhereDistinct
    on QueryBuilder<GroupResponseRemote, GroupResponseRemote, QDistinct> {
  QueryBuilder<GroupResponseRemote, GroupResponseRemote, QDistinct>
      distinctByGroupName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupName', caseSensitive: caseSensitive);
    });
  }
}

extension GroupResponseRemoteQueryProperty
    on QueryBuilder<GroupResponseRemote, GroupResponseRemote, QQueryProperty> {
  QueryBuilder<GroupResponseRemote, int, QQueryOperations> groupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupId');
    });
  }

  QueryBuilder<GroupResponseRemote, String?, QQueryOperations>
      groupNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupName');
    });
  }

  QueryBuilder<GroupResponseRemote, List<MissionFilterDatum>?, QQueryOperations>
      missionDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'missionData');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MissionFilterDatumSchema = Schema(
  name: r'MissionFilterDatum',
  id: 795174691162020563,
  properties: {
    r'missionId': PropertySchema(
      id: 0,
      name: r'missionId',
      type: IsarType.long,
    ),
    r'missionName': PropertySchema(
      id: 1,
      name: r'missionName',
      type: IsarType.string,
    ),
    r'profileName': PropertySchema(
      id: 2,
      name: r'profileName',
      type: IsarType.string,
    )
  },
  estimateSize: _missionFilterDatumEstimateSize,
  serialize: _missionFilterDatumSerialize,
  deserialize: _missionFilterDatumDeserialize,
  deserializeProp: _missionFilterDatumDeserializeProp,
);

int _missionFilterDatumEstimateSize(
  MissionFilterDatum object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.missionName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.profileName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _missionFilterDatumSerialize(
  MissionFilterDatum object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.missionId);
  writer.writeString(offsets[1], object.missionName);
  writer.writeString(offsets[2], object.profileName);
}

MissionFilterDatum _missionFilterDatumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MissionFilterDatum(
    missionId: reader.readLongOrNull(offsets[0]),
    missionName: reader.readStringOrNull(offsets[1]),
    profileName: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _missionFilterDatumDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MissionFilterDatumQueryFilter
    on QueryBuilder<MissionFilterDatum, MissionFilterDatum, QFilterCondition> {
  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionId',
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionId',
        value: value,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
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

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
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

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
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

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'missionName',
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'missionName',
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameEqualTo(
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

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameGreaterThan(
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

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameLessThan(
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

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameBetween(
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

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameStartsWith(
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

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameEndsWith(
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

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'missionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'missionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'missionName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      missionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'missionName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'profileName',
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'profileName',
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profileName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profileName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileName',
        value: '',
      ));
    });
  }

  QueryBuilder<MissionFilterDatum, MissionFilterDatum, QAfterFilterCondition>
      profileNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profileName',
        value: '',
      ));
    });
  }
}

extension MissionFilterDatumQueryObject
    on QueryBuilder<MissionFilterDatum, MissionFilterDatum, QFilterCondition> {}
