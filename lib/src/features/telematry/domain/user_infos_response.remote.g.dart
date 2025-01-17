// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_infos_response.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserInfosResponseRemoteCollection on Isar {
  IsarCollection<UserInfosResponseRemote> get userInfosResponseRemotes =>
      this.collection();
}

const UserInfosResponseRemoteSchema = CollectionSchema(
  name: r'UserInfosResponseRemote',
  id: -3400002099389298865,
  properties: {
    r'flagTelemetry': PropertySchema(
      id: 0,
      name: r'flagTelemetry',
      type: IsarType.long,
    ),
    r'roleAccess': PropertySchema(
      id: 1,
      name: r'roleAccess',
      type: IsarType.objectList,
      target: r'RoleAccess',
    ),
    r'roleId': PropertySchema(
      id: 2,
      name: r'roleId',
      type: IsarType.long,
    ),
    r'siteAccess': PropertySchema(
      id: 3,
      name: r'siteAccess',
      type: IsarType.objectList,
      target: r'SiteAccess',
    ),
    r'siteId': PropertySchema(
      id: 4,
      name: r'siteId',
      type: IsarType.long,
    )
  },
  estimateSize: _userInfosResponseRemoteEstimateSize,
  serialize: _userInfosResponseRemoteSerialize,
  deserialize: _userInfosResponseRemoteDeserialize,
  deserializeProp: _userInfosResponseRemoteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'RoleAccess': RoleAccessSchema,
    r'SiteAccess': SiteAccessSchema,
    r'AreaAccess': AreaAccessSchema
  },
  getId: _userInfosResponseRemoteGetId,
  getLinks: _userInfosResponseRemoteGetLinks,
  attach: _userInfosResponseRemoteAttach,
  version: '3.1.0+1',
);

int _userInfosResponseRemoteEstimateSize(
  UserInfosResponseRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.roleAccess;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[RoleAccess]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              RoleAccessSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.siteAccess;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[SiteAccess]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              SiteAccessSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _userInfosResponseRemoteSerialize(
  UserInfosResponseRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.flagTelemetry);
  writer.writeObjectList<RoleAccess>(
    offsets[1],
    allOffsets,
    RoleAccessSchema.serialize,
    object.roleAccess,
  );
  writer.writeLong(offsets[2], object.roleId);
  writer.writeObjectList<SiteAccess>(
    offsets[3],
    allOffsets,
    SiteAccessSchema.serialize,
    object.siteAccess,
  );
  writer.writeLong(offsets[4], object.siteId);
}

UserInfosResponseRemote _userInfosResponseRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserInfosResponseRemote(
    flagTelemetry: reader.readLongOrNull(offsets[0]),
    roleAccess: reader.readObjectList<RoleAccess>(
      offsets[1],
      RoleAccessSchema.deserialize,
      allOffsets,
      RoleAccess(),
    ),
    roleId: reader.readLongOrNull(offsets[2]),
    siteAccess: reader.readObjectList<SiteAccess>(
      offsets[3],
      SiteAccessSchema.deserialize,
      allOffsets,
      SiteAccess(),
    ),
    siteId: reader.readLongOrNull(offsets[4]),
  );
  object.id = id;
  return object;
}

P _userInfosResponseRemoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readObjectList<RoleAccess>(
        offset,
        RoleAccessSchema.deserialize,
        allOffsets,
        RoleAccess(),
      )) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readObjectList<SiteAccess>(
        offset,
        SiteAccessSchema.deserialize,
        allOffsets,
        SiteAccess(),
      )) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userInfosResponseRemoteGetId(UserInfosResponseRemote object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userInfosResponseRemoteGetLinks(
    UserInfosResponseRemote object) {
  return [];
}

void _userInfosResponseRemoteAttach(
    IsarCollection<dynamic> col, Id id, UserInfosResponseRemote object) {
  object.id = id;
}

extension UserInfosResponseRemoteQueryWhereSort
    on QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QWhere> {
  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserInfosResponseRemoteQueryWhere on QueryBuilder<
    UserInfosResponseRemote, UserInfosResponseRemote, QWhereClause> {
  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
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

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
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

extension UserInfosResponseRemoteQueryFilter on QueryBuilder<
    UserInfosResponseRemote, UserInfosResponseRemote, QFilterCondition> {
  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> flagTelemetryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flagTelemetry',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> flagTelemetryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flagTelemetry',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> flagTelemetryEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flagTelemetry',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> flagTelemetryGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flagTelemetry',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> flagTelemetryLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flagTelemetry',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> flagTelemetryBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flagTelemetry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
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

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
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

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
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

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleAccessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'roleAccess',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleAccessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'roleAccess',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleAccessLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roleAccess',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleAccessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roleAccess',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleAccessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roleAccess',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleAccessLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roleAccess',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleAccessLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roleAccess',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleAccessLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'roleAccess',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'roleId',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'roleId',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roleId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'roleId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'roleId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'roleId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteAccessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'siteAccess',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteAccessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'siteAccess',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteAccessLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'siteAccess',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteAccessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'siteAccess',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteAccessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'siteAccess',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteAccessLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'siteAccess',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteAccessLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'siteAccess',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteAccessLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'siteAccess',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'siteId',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'siteId',
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'siteId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UserInfosResponseRemoteQueryObject on QueryBuilder<
    UserInfosResponseRemote, UserInfosResponseRemote, QFilterCondition> {
  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> roleAccessElement(FilterQuery<RoleAccess> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'roleAccess');
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote,
      QAfterFilterCondition> siteAccessElement(FilterQuery<SiteAccess> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'siteAccess');
    });
  }
}

extension UserInfosResponseRemoteQueryLinks on QueryBuilder<
    UserInfosResponseRemote, UserInfosResponseRemote, QFilterCondition> {}

extension UserInfosResponseRemoteQuerySortBy
    on QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QSortBy> {
  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      sortByFlagTelemetry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flagTelemetry', Sort.asc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      sortByFlagTelemetryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flagTelemetry', Sort.desc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      sortByRoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.asc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      sortByRoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.desc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      sortBySiteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.asc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      sortBySiteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.desc);
    });
  }
}

extension UserInfosResponseRemoteQuerySortThenBy on QueryBuilder<
    UserInfosResponseRemote, UserInfosResponseRemote, QSortThenBy> {
  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      thenByFlagTelemetry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flagTelemetry', Sort.asc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      thenByFlagTelemetryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flagTelemetry', Sort.desc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      thenByRoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.asc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      thenByRoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roleId', Sort.desc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      thenBySiteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.asc);
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QAfterSortBy>
      thenBySiteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'siteId', Sort.desc);
    });
  }
}

extension UserInfosResponseRemoteQueryWhereDistinct on QueryBuilder<
    UserInfosResponseRemote, UserInfosResponseRemote, QDistinct> {
  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QDistinct>
      distinctByFlagTelemetry() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flagTelemetry');
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QDistinct>
      distinctByRoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roleId');
    });
  }

  QueryBuilder<UserInfosResponseRemote, UserInfosResponseRemote, QDistinct>
      distinctBySiteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'siteId');
    });
  }
}

extension UserInfosResponseRemoteQueryProperty on QueryBuilder<
    UserInfosResponseRemote, UserInfosResponseRemote, QQueryProperty> {
  QueryBuilder<UserInfosResponseRemote, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserInfosResponseRemote, int?, QQueryOperations>
      flagTelemetryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flagTelemetry');
    });
  }

  QueryBuilder<UserInfosResponseRemote, List<RoleAccess>?, QQueryOperations>
      roleAccessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roleAccess');
    });
  }

  QueryBuilder<UserInfosResponseRemote, int?, QQueryOperations>
      roleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roleId');
    });
  }

  QueryBuilder<UserInfosResponseRemote, List<SiteAccess>?, QQueryOperations>
      siteAccessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'siteAccess');
    });
  }

  QueryBuilder<UserInfosResponseRemote, int?, QQueryOperations>
      siteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'siteId');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const RoleAccessSchema = Schema(
  name: r'RoleAccess',
  id: -6113909112636373252,
  properties: {
    r'actionId': PropertySchema(
      id: 0,
      name: r'actionId',
      type: IsarType.long,
    ),
    r'actionName': PropertySchema(
      id: 1,
      name: r'actionName',
      type: IsarType.string,
    ),
    r'isAuthorized': PropertySchema(
      id: 2,
      name: r'isAuthorized',
      type: IsarType.long,
    ),
    r'moduleId': PropertySchema(
      id: 3,
      name: r'moduleId',
      type: IsarType.long,
    ),
    r'moduleName': PropertySchema(
      id: 4,
      name: r'moduleName',
      type: IsarType.string,
    ),
    r'tabId': PropertySchema(
      id: 5,
      name: r'tabId',
      type: IsarType.long,
    ),
    r'tabName': PropertySchema(
      id: 6,
      name: r'tabName',
      type: IsarType.string,
    )
  },
  estimateSize: _roleAccessEstimateSize,
  serialize: _roleAccessSerialize,
  deserialize: _roleAccessDeserialize,
  deserializeProp: _roleAccessDeserializeProp,
);

int _roleAccessEstimateSize(
  RoleAccess object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.actionName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.moduleName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tabName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _roleAccessSerialize(
  RoleAccess object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.actionId);
  writer.writeString(offsets[1], object.actionName);
  writer.writeLong(offsets[2], object.isAuthorized);
  writer.writeLong(offsets[3], object.moduleId);
  writer.writeString(offsets[4], object.moduleName);
  writer.writeLong(offsets[5], object.tabId);
  writer.writeString(offsets[6], object.tabName);
}

RoleAccess _roleAccessDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RoleAccess(
    actionId: reader.readLongOrNull(offsets[0]),
    actionName: reader.readStringOrNull(offsets[1]),
    isAuthorized: reader.readLongOrNull(offsets[2]),
    moduleId: reader.readLongOrNull(offsets[3]),
    moduleName: reader.readStringOrNull(offsets[4]),
    tabId: reader.readLongOrNull(offsets[5]),
    tabName: reader.readStringOrNull(offsets[6]),
  );
  return object;
}

P _roleAccessDeserializeProp<P>(
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
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension RoleAccessQueryFilter
    on QueryBuilder<RoleAccess, RoleAccess, QFilterCondition> {
  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> actionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actionId',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actionId',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> actionIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actionId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actionId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> actionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actionId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> actionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actionName',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actionName',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> actionNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> actionNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actionName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'actionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'actionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'actionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> actionNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'actionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actionName',
        value: '',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      actionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'actionName',
        value: '',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      isAuthorizedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAuthorized',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      isAuthorizedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAuthorized',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      isAuthorizedEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAuthorized',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      isAuthorizedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isAuthorized',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      isAuthorizedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isAuthorized',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      isAuthorizedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isAuthorized',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> moduleIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'moduleId',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'moduleId',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> moduleIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moduleId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moduleId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> moduleIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moduleId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> moduleIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moduleId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'moduleName',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'moduleName',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> moduleNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> moduleNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moduleName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'moduleName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> moduleNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'moduleName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moduleName',
        value: '',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      moduleNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'moduleName',
        value: '',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tabId',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tabId',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tabId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tabId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tabId',
        value: value,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tabId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tabName',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      tabNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tabName',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tabName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      tabNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tabName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tabName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tabName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tabName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tabName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tabName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tabName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition> tabNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tabName',
        value: '',
      ));
    });
  }

  QueryBuilder<RoleAccess, RoleAccess, QAfterFilterCondition>
      tabNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tabName',
        value: '',
      ));
    });
  }
}

extension RoleAccessQueryObject
    on QueryBuilder<RoleAccess, RoleAccess, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SiteAccessSchema = Schema(
  name: r'SiteAccess',
  id: 7410276257824954352,
  properties: {
    r'areaAccess': PropertySchema(
      id: 0,
      name: r'areaAccess',
      type: IsarType.objectList,
      target: r'AreaAccess',
    ),
    r'isSelected': PropertySchema(
      id: 1,
      name: r'isSelected',
      type: IsarType.bool,
    ),
    r'siteCode': PropertySchema(
      id: 2,
      name: r'siteCode',
      type: IsarType.string,
    ),
    r'siteId': PropertySchema(
      id: 3,
      name: r'siteId',
      type: IsarType.long,
    ),
    r'urlLogo': PropertySchema(
      id: 4,
      name: r'urlLogo',
      type: IsarType.string,
    ),
    r'xAxis': PropertySchema(
      id: 5,
      name: r'xAxis',
      type: IsarType.string,
    )
  },
  estimateSize: _siteAccessEstimateSize,
  serialize: _siteAccessSerialize,
  deserialize: _siteAccessDeserialize,
  deserializeProp: _siteAccessDeserializeProp,
);

int _siteAccessEstimateSize(
  SiteAccess object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.areaAccess;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[AreaAccess]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              AreaAccessSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.siteCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.urlLogo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.xAxis;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _siteAccessSerialize(
  SiteAccess object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<AreaAccess>(
    offsets[0],
    allOffsets,
    AreaAccessSchema.serialize,
    object.areaAccess,
  );
  writer.writeBool(offsets[1], object.isSelected);
  writer.writeString(offsets[2], object.siteCode);
  writer.writeLong(offsets[3], object.siteId);
  writer.writeString(offsets[4], object.urlLogo);
  writer.writeString(offsets[5], object.xAxis);
}

SiteAccess _siteAccessDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SiteAccess(
    areaAccess: reader.readObjectList<AreaAccess>(
      offsets[0],
      AreaAccessSchema.deserialize,
      allOffsets,
      AreaAccess(),
    ),
    isSelected: reader.readBoolOrNull(offsets[1]),
    siteCode: reader.readStringOrNull(offsets[2]),
    siteId: reader.readLongOrNull(offsets[3]),
    urlLogo: reader.readStringOrNull(offsets[4]),
    xAxis: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _siteAccessDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<AreaAccess>(
        offset,
        AreaAccessSchema.deserialize,
        allOffsets,
        AreaAccess(),
      )) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SiteAccessQueryFilter
    on QueryBuilder<SiteAccess, SiteAccess, QFilterCondition> {
  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      areaAccessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'areaAccess',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      areaAccessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'areaAccess',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      areaAccessLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'areaAccess',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      areaAccessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'areaAccess',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      areaAccessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'areaAccess',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      areaAccessLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'areaAccess',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      areaAccessLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'areaAccess',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      areaAccessLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'areaAccess',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      isSelectedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isSelected',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      isSelectedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isSelected',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> isSelectedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSelected',
        value: value,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'siteCode',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      siteCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'siteCode',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'siteCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      siteCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'siteCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'siteCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'siteCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      siteCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'siteCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'siteCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'siteCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'siteCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      siteCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'siteCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      siteCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'siteCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'siteId',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      siteIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'siteId',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'siteId',
        value: value,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> siteIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'siteId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> urlLogoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'urlLogo',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      urlLogoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'urlLogo',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> urlLogoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlLogo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      urlLogoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'urlLogo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> urlLogoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'urlLogo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> urlLogoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'urlLogo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> urlLogoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'urlLogo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> urlLogoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'urlLogo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> urlLogoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'urlLogo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> urlLogoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'urlLogo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> urlLogoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlLogo',
        value: '',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      urlLogoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'urlLogo',
        value: '',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'xAxis',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'xAxis',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'xAxis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'xAxis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'xAxis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'xAxis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'xAxis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'xAxis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'xAxis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'xAxis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> xAxisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'xAxis',
        value: '',
      ));
    });
  }

  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition>
      xAxisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'xAxis',
        value: '',
      ));
    });
  }
}

extension SiteAccessQueryObject
    on QueryBuilder<SiteAccess, SiteAccess, QFilterCondition> {
  QueryBuilder<SiteAccess, SiteAccess, QAfterFilterCondition> areaAccessElement(
      FilterQuery<AreaAccess> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'areaAccess');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const AreaAccessSchema = Schema(
  name: r'AreaAccess',
  id: 7333265969354955961,
  properties: {
    r'code': PropertySchema(
      id: 0,
      name: r'code',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 2,
      name: r'value',
      type: IsarType.bool,
    )
  },
  estimateSize: _areaAccessEstimateSize,
  serialize: _areaAccessSerialize,
  deserialize: _areaAccessDeserialize,
  deserializeProp: _areaAccessDeserializeProp,
);

int _areaAccessEstimateSize(
  AreaAccess object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.code;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _areaAccessSerialize(
  AreaAccess object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.code);
  writer.writeString(offsets[1], object.name);
  writer.writeBool(offsets[2], object.value);
}

AreaAccess _areaAccessDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AreaAccess(
    code: reader.readStringOrNull(offsets[0]),
    name: reader.readStringOrNull(offsets[1]),
    value: reader.readBoolOrNull(offsets[2]),
  );
  return object;
}

P _areaAccessDeserializeProp<P>(
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
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension AreaAccessQueryFilter
    on QueryBuilder<AreaAccess, AreaAccess, QFilterCondition> {
  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<AreaAccess, AreaAccess, QAfterFilterCondition> valueEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }
}

extension AreaAccessQueryObject
    on QueryBuilder<AreaAccess, AreaAccess, QFilterCondition> {}
