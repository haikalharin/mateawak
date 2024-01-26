// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNotificationResponseRemoteCollection on Isar {
  IsarCollection<NotificationResponseRemote> get notificationResponseRemotes =>
      this.collection();
}

const NotificationResponseRemoteSchema = CollectionSchema(
  name: r'NotificationResponseRemote',
  id: -2454491897762745232,
  properties: {
    r'activity': PropertySchema(
      id: 0,
      name: r'activity',
      type: IsarType.string,
    ),
    r'category': PropertySchema(
      id: 1,
      name: r'category',
      type: IsarType.string,
    ),
    r'dataCount': PropertySchema(
      id: 2,
      name: r'dataCount',
      type: IsarType.long,
    ),
    r'employeeId': PropertySchema(
      id: 3,
      name: r'employeeId',
      type: IsarType.long,
    ),
    r'employeeName': PropertySchema(
      id: 4,
      name: r'employeeName',
      type: IsarType.string,
    ),
    r'feature': PropertySchema(
      id: 5,
      name: r'feature',
      type: IsarType.string,
    ),
    r'idTransaction': PropertySchema(
      id: 6,
      name: r'idTransaction',
      type: IsarType.string,
    ),
    r'isRead': PropertySchema(
      id: 7,
      name: r'isRead',
      type: IsarType.long,
    ),
    r'notifDate': PropertySchema(
      id: 8,
      name: r'notifDate',
      type: IsarType.string,
    ),
    r'notifDescription': PropertySchema(
      id: 9,
      name: r'notifDescription',
      type: IsarType.string,
    ),
    r'notifId': PropertySchema(
      id: 10,
      name: r'notifId',
      type: IsarType.string,
    ),
    r'notifImage': PropertySchema(
      id: 11,
      name: r'notifImage',
      type: IsarType.string,
    ),
    r'notifTitle': PropertySchema(
      id: 12,
      name: r'notifTitle',
      type: IsarType.string,
    ),
    r'notifType': PropertySchema(
      id: 13,
      name: r'notifType',
      type: IsarType.string,
    ),
    r'pageCount': PropertySchema(
      id: 14,
      name: r'pageCount',
      type: IsarType.long,
    ),
    r'pageNo': PropertySchema(
      id: 15,
      name: r'pageNo',
      type: IsarType.long,
    ),
    r'pageSize': PropertySchema(
      id: 16,
      name: r'pageSize',
      type: IsarType.long,
    ),
    r'showingData': PropertySchema(
      id: 17,
      name: r'showingData',
      type: IsarType.string,
    )
  },
  estimateSize: _notificationResponseRemoteEstimateSize,
  serialize: _notificationResponseRemoteSerialize,
  deserialize: _notificationResponseRemoteDeserialize,
  deserializeProp: _notificationResponseRemoteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _notificationResponseRemoteGetId,
  getLinks: _notificationResponseRemoteGetLinks,
  attach: _notificationResponseRemoteAttach,
  version: '3.1.0+1',
);

int _notificationResponseRemoteEstimateSize(
  NotificationResponseRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.activity;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.category;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.employeeName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.feature;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idTransaction;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notifDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notifDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notifId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notifImage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notifTitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notifType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.showingData;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _notificationResponseRemoteSerialize(
  NotificationResponseRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.activity);
  writer.writeString(offsets[1], object.category);
  writer.writeLong(offsets[2], object.dataCount);
  writer.writeLong(offsets[3], object.employeeId);
  writer.writeString(offsets[4], object.employeeName);
  writer.writeString(offsets[5], object.feature);
  writer.writeString(offsets[6], object.idTransaction);
  writer.writeLong(offsets[7], object.isRead);
  writer.writeString(offsets[8], object.notifDate);
  writer.writeString(offsets[9], object.notifDescription);
  writer.writeString(offsets[10], object.notifId);
  writer.writeString(offsets[11], object.notifImage);
  writer.writeString(offsets[12], object.notifTitle);
  writer.writeString(offsets[13], object.notifType);
  writer.writeLong(offsets[14], object.pageCount);
  writer.writeLong(offsets[15], object.pageNo);
  writer.writeLong(offsets[16], object.pageSize);
  writer.writeString(offsets[17], object.showingData);
}

NotificationResponseRemote _notificationResponseRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NotificationResponseRemote(
    activity: reader.readStringOrNull(offsets[0]),
    category: reader.readStringOrNull(offsets[1]),
    dataCount: reader.readLongOrNull(offsets[2]),
    employeeId: reader.readLongOrNull(offsets[3]),
    employeeName: reader.readStringOrNull(offsets[4]),
    feature: reader.readStringOrNull(offsets[5]),
    idTransaction: reader.readStringOrNull(offsets[6]),
    isRead: reader.readLongOrNull(offsets[7]),
    notifDate: reader.readStringOrNull(offsets[8]),
    notifDescription: reader.readStringOrNull(offsets[9]),
    notifId: reader.readStringOrNull(offsets[10]),
    notifImage: reader.readStringOrNull(offsets[11]),
    notifTitle: reader.readStringOrNull(offsets[12]),
    pageCount: reader.readLongOrNull(offsets[14]),
    showingData: reader.readStringOrNull(offsets[17]),
  );
  object.id = id;
  object.notifType = reader.readStringOrNull(offsets[13]);
  object.pageNo = reader.readLongOrNull(offsets[15]);
  object.pageSize = reader.readLongOrNull(offsets[16]);
  return object;
}

P _notificationResponseRemoteDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _notificationResponseRemoteGetId(NotificationResponseRemote object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _notificationResponseRemoteGetLinks(
    NotificationResponseRemote object) {
  return [];
}

void _notificationResponseRemoteAttach(
    IsarCollection<dynamic> col, Id id, NotificationResponseRemote object) {
  object.id = id;
}

extension NotificationResponseRemoteQueryWhereSort on QueryBuilder<
    NotificationResponseRemote, NotificationResponseRemote, QWhere> {
  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NotificationResponseRemoteQueryWhere on QueryBuilder<
    NotificationResponseRemote, NotificationResponseRemote, QWhereClause> {
  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
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

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
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

extension NotificationResponseRemoteQueryFilter on QueryBuilder<
    NotificationResponseRemote, NotificationResponseRemote, QFilterCondition> {
  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'activity',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'activity',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'activity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'activity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      activityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'activity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      activityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'activity',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activity',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> activityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'activity',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> dataCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dataCount',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> dataCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dataCount',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> dataCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> dataCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> dataCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> dataCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeId',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employeeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeName',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeName',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employeeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      employeeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'employeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      employeeNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'employeeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeName',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> employeeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'employeeName',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feature',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feature',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'feature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'feature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      featureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'feature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      featureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'feature',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feature',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> featureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'feature',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
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

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
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

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
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

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idTransaction',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idTransaction',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idTransaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idTransaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idTransaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idTransaction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idTransaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idTransaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      idTransactionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idTransaction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      idTransactionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idTransaction',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idTransaction',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> idTransactionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idTransaction',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> isReadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isRead',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> isReadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isRead',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> isReadEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isRead',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> isReadGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isRead',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> isReadLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isRead',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> isReadBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isRead',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notifDate',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notifDate',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notifDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notifDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notifDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notifDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notifDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notifDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notifDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifDate',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notifDate',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notifDescription',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notifDescription',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notifDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notifDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notifDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notifDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notifDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notifDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notifDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notifDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notifId',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notifId',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notifId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notifId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifId',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notifId',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notifImage',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notifImage',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notifImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notifImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notifImage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notifImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notifImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifImageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notifImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifImageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notifImage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifImage',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifImageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notifImage',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notifTitle',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notifTitle',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notifTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notifTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notifTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notifTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notifTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notifTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notifTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notifTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notifType',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notifType',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notifType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notifType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notifType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notifType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notifType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notifType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      notifTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notifType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifType',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> notifTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notifType',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pageCount',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pageCount',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pageCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pageCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pageCount',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pageCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pageNo',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pageNo',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageNoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pageNo',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageNoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pageNo',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageNoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pageNo',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageNoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pageNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageSizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pageSize',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageSizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pageSize',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageSizeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pageSize',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageSizeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pageSize',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageSizeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pageSize',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> pageSizeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pageSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'showingData',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'showingData',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showingData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'showingData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'showingData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'showingData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'showingData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'showingData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      showingDataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'showingData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
          QAfterFilterCondition>
      showingDataMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'showingData',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showingData',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterFilterCondition> showingDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'showingData',
        value: '',
      ));
    });
  }
}

extension NotificationResponseRemoteQueryObject on QueryBuilder<
    NotificationResponseRemote, NotificationResponseRemote, QFilterCondition> {}

extension NotificationResponseRemoteQueryLinks on QueryBuilder<
    NotificationResponseRemote, NotificationResponseRemote, QFilterCondition> {}

extension NotificationResponseRemoteQuerySortBy on QueryBuilder<
    NotificationResponseRemote, NotificationResponseRemote, QSortBy> {
  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByActivity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activity', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByActivityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activity', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByDataCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataCount', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByDataCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataCount', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByEmployeeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeName', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByEmployeeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeName', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByFeature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feature', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByFeatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feature', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByIdTransaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idTransaction', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByIdTransactionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idTransaction', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByIsRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByIsReadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifDate', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifDate', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifDescription', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifDescription', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifId', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifId', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifImage', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifImage', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifTitle', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifTitle', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifType', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByNotifTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifType', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByPageCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageCount', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByPageCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageCount', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByPageNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageNo', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByPageNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageNo', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByPageSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageSize', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByPageSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageSize', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByShowingData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showingData', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> sortByShowingDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showingData', Sort.desc);
    });
  }
}

extension NotificationResponseRemoteQuerySortThenBy on QueryBuilder<
    NotificationResponseRemote, NotificationResponseRemote, QSortThenBy> {
  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByActivity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activity', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByActivityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activity', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByDataCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataCount', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByDataCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataCount', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByEmployeeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeName', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByEmployeeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeName', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByFeature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feature', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByFeatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feature', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByIdTransaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idTransaction', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByIdTransactionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idTransaction', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByIsRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByIsReadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifDate', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifDate', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifDescription', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifDescription', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifId', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifId', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifImage', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifImage', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifTitle', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifTitle', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifType', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByNotifTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifType', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByPageCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageCount', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByPageCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageCount', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByPageNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageNo', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByPageNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageNo', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByPageSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageSize', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByPageSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pageSize', Sort.desc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByShowingData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showingData', Sort.asc);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QAfterSortBy> thenByShowingDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showingData', Sort.desc);
    });
  }
}

extension NotificationResponseRemoteQueryWhereDistinct on QueryBuilder<
    NotificationResponseRemote, NotificationResponseRemote, QDistinct> {
  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByActivity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activity', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByDataCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataCount');
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeId');
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByEmployeeName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByFeature({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feature', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByIdTransaction({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idTransaction',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByIsRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isRead');
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByNotifDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notifDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByNotifDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notifDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByNotifId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notifId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByNotifImage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notifImage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByNotifTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notifTitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByNotifType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notifType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByPageCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pageCount');
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByPageNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pageNo');
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByPageSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pageSize');
    });
  }

  QueryBuilder<NotificationResponseRemote, NotificationResponseRemote,
      QDistinct> distinctByShowingData({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showingData', caseSensitive: caseSensitive);
    });
  }
}

extension NotificationResponseRemoteQueryProperty on QueryBuilder<
    NotificationResponseRemote, NotificationResponseRemote, QQueryProperty> {
  QueryBuilder<NotificationResponseRemote, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      activityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activity');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<NotificationResponseRemote, int?, QQueryOperations>
      dataCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataCount');
    });
  }

  QueryBuilder<NotificationResponseRemote, int?, QQueryOperations>
      employeeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeId');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      employeeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeName');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      featureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feature');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      idTransactionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idTransaction');
    });
  }

  QueryBuilder<NotificationResponseRemote, int?, QQueryOperations>
      isReadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isRead');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      notifDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notifDate');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      notifDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notifDescription');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      notifIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notifId');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      notifImageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notifImage');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      notifTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notifTitle');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      notifTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notifType');
    });
  }

  QueryBuilder<NotificationResponseRemote, int?, QQueryOperations>
      pageCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pageCount');
    });
  }

  QueryBuilder<NotificationResponseRemote, int?, QQueryOperations>
      pageNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pageNo');
    });
  }

  QueryBuilder<NotificationResponseRemote, int?, QQueryOperations>
      pageSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pageSize');
    });
  }

  QueryBuilder<NotificationResponseRemote, String?, QQueryOperations>
      showingDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showingData');
    });
  }
}
