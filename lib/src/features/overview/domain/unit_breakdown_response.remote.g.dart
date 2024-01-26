// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_breakdown_response.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUnitBreakdownResponseRemoteCollection on Isar {
  IsarCollection<UnitBreakdownResponseRemote>
      get unitBreakdownResponseRemotes => this.collection();
}

const UnitBreakdownResponseRemoteSchema = CollectionSchema(
  name: r'UnitBreakdownResponseRemote',
  id: -1504525681875413799,
  properties: {
    r'bdReason': PropertySchema(
      id: 0,
      name: r'bdReason',
      type: IsarType.string,
    ),
    r'breakdownDuration': PropertySchema(
      id: 1,
      name: r'breakdownDuration',
      type: IsarType.double,
    ),
    r'breakdownLocation': PropertySchema(
      id: 2,
      name: r'breakdownLocation',
      type: IsarType.string,
    ),
    r'durationRepairment': PropertySchema(
      id: 3,
      name: r'durationRepairment',
      type: IsarType.double,
    ),
    r'equipment': PropertySchema(
      id: 4,
      name: r'equipment',
      type: IsarType.string,
    ),
    r'eventBreackDownTrackings': PropertySchema(
      id: 5,
      name: r'eventBreackDownTrackings',
      type: IsarType.objectList,
      target: r'EventBreackDownTrackings',
    ),
    r'groupUnit': PropertySchema(
      id: 6,
      name: r'groupUnit',
      type: IsarType.string,
    ),
    r'isOb': PropertySchema(
      id: 7,
      name: r'isOb',
      type: IsarType.bool,
    ),
    r'loadDateTime': PropertySchema(
      id: 8,
      name: r'loadDateTime',
      type: IsarType.string,
    ),
    r'operator': PropertySchema(
      id: 9,
      name: r'operator',
      type: IsarType.string,
    ),
    r'operatorName': PropertySchema(
      id: 10,
      name: r'operatorName',
      type: IsarType.string,
    )
  },
  estimateSize: _unitBreakdownResponseRemoteEstimateSize,
  serialize: _unitBreakdownResponseRemoteSerialize,
  deserialize: _unitBreakdownResponseRemoteDeserialize,
  deserializeProp: _unitBreakdownResponseRemoteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'EventBreackDownTrackings': EventBreackDownTrackingsSchema
  },
  getId: _unitBreakdownResponseRemoteGetId,
  getLinks: _unitBreakdownResponseRemoteGetLinks,
  attach: _unitBreakdownResponseRemoteAttach,
  version: '3.1.0+1',
);

int _unitBreakdownResponseRemoteEstimateSize(
  UnitBreakdownResponseRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bdReason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.breakdownLocation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.equipment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.eventBreackDownTrackings;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[EventBreackDownTrackings]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += EventBreackDownTrackingsSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.groupUnit;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.loadDateTime;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.operator;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.operatorName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _unitBreakdownResponseRemoteSerialize(
  UnitBreakdownResponseRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bdReason);
  writer.writeDouble(offsets[1], object.breakdownDuration);
  writer.writeString(offsets[2], object.breakdownLocation);
  writer.writeDouble(offsets[3], object.durationRepairment);
  writer.writeString(offsets[4], object.equipment);
  writer.writeObjectList<EventBreackDownTrackings>(
    offsets[5],
    allOffsets,
    EventBreackDownTrackingsSchema.serialize,
    object.eventBreackDownTrackings,
  );
  writer.writeString(offsets[6], object.groupUnit);
  writer.writeBool(offsets[7], object.isOb);
  writer.writeString(offsets[8], object.loadDateTime);
  writer.writeString(offsets[9], object.operator);
  writer.writeString(offsets[10], object.operatorName);
}

UnitBreakdownResponseRemote _unitBreakdownResponseRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UnitBreakdownResponseRemote(
    bdReason: reader.readStringOrNull(offsets[0]),
    breakdownDuration: reader.readDoubleOrNull(offsets[1]),
    breakdownLocation: reader.readStringOrNull(offsets[2]),
    durationRepairment: reader.readDoubleOrNull(offsets[3]),
    equipment: reader.readStringOrNull(offsets[4]),
    eventBreackDownTrackings: reader.readObjectList<EventBreackDownTrackings>(
      offsets[5],
      EventBreackDownTrackingsSchema.deserialize,
      allOffsets,
      EventBreackDownTrackings(),
    ),
    groupUnit: reader.readStringOrNull(offsets[6]),
    isOb: reader.readBoolOrNull(offsets[7]),
    loadDateTime: reader.readStringOrNull(offsets[8]),
    operator: reader.readStringOrNull(offsets[9]),
    operatorName: reader.readStringOrNull(offsets[10]),
  );
  object.id = id;
  return object;
}

P _unitBreakdownResponseRemoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readObjectList<EventBreackDownTrackings>(
        offset,
        EventBreackDownTrackingsSchema.deserialize,
        allOffsets,
        EventBreackDownTrackings(),
      )) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _unitBreakdownResponseRemoteGetId(UnitBreakdownResponseRemote object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _unitBreakdownResponseRemoteGetLinks(
    UnitBreakdownResponseRemote object) {
  return [];
}

void _unitBreakdownResponseRemoteAttach(
    IsarCollection<dynamic> col, Id id, UnitBreakdownResponseRemote object) {
  object.id = id;
}

extension UnitBreakdownResponseRemoteQueryWhereSort on QueryBuilder<
    UnitBreakdownResponseRemote, UnitBreakdownResponseRemote, QWhere> {
  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UnitBreakdownResponseRemoteQueryWhere on QueryBuilder<
    UnitBreakdownResponseRemote, UnitBreakdownResponseRemote, QWhereClause> {
  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
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

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
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

extension UnitBreakdownResponseRemoteQueryFilter on QueryBuilder<
    UnitBreakdownResponseRemote,
    UnitBreakdownResponseRemote,
    QFilterCondition> {
  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bdReason',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bdReason',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bdReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bdReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bdReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bdReason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bdReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bdReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      bdReasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bdReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      bdReasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bdReason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bdReason',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> bdReasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bdReason',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownDurationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'breakdownDuration',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownDurationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'breakdownDuration',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownDurationEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'breakdownDuration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownDurationGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'breakdownDuration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownDurationLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'breakdownDuration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownDurationBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'breakdownDuration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'breakdownLocation',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'breakdownLocation',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'breakdownLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'breakdownLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'breakdownLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'breakdownLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'breakdownLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'breakdownLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      breakdownLocationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'breakdownLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      breakdownLocationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'breakdownLocation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'breakdownLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> breakdownLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'breakdownLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> durationRepairmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'durationRepairment',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> durationRepairmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'durationRepairment',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> durationRepairmentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationRepairment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> durationRepairmentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'durationRepairment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> durationRepairmentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'durationRepairment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> durationRepairmentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'durationRepairment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'equipment',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'equipment',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'equipment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      equipmentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      equipmentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'equipment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'equipment',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> equipmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'equipment',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> eventBreackDownTrackingsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eventBreackDownTrackings',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> eventBreackDownTrackingsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eventBreackDownTrackings',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> eventBreackDownTrackingsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'eventBreackDownTrackings',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> eventBreackDownTrackingsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'eventBreackDownTrackings',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> eventBreackDownTrackingsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'eventBreackDownTrackings',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> eventBreackDownTrackingsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'eventBreackDownTrackings',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> eventBreackDownTrackingsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'eventBreackDownTrackings',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> eventBreackDownTrackingsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'eventBreackDownTrackings',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupUnit',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupUnit',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groupUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groupUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      groupUnitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      groupUnitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupUnit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> groupUnitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
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

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
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

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
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

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> isObIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isOb',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> isObIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isOb',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> isObEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOb',
        value: value,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loadDateTime',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loadDateTime',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loadDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loadDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loadDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loadDateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loadDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loadDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      loadDateTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loadDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      loadDateTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loadDateTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loadDateTime',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> loadDateTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loadDateTime',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'operator',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'operator',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'operator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'operator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'operator',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'operator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'operator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      operatorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'operator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      operatorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'operator',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operator',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'operator',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'operatorName',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'operatorName',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operatorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'operatorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'operatorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'operatorName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'operatorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'operatorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      operatorNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'operatorName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      operatorNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'operatorName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'operatorName',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterFilterCondition> operatorNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'operatorName',
        value: '',
      ));
    });
  }
}

extension UnitBreakdownResponseRemoteQueryObject on QueryBuilder<
    UnitBreakdownResponseRemote,
    UnitBreakdownResponseRemote,
    QFilterCondition> {
  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
          QAfterFilterCondition>
      eventBreackDownTrackingsElement(FilterQuery<EventBreackDownTrackings> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'eventBreackDownTrackings');
    });
  }
}

extension UnitBreakdownResponseRemoteQueryLinks on QueryBuilder<
    UnitBreakdownResponseRemote,
    UnitBreakdownResponseRemote,
    QFilterCondition> {}

extension UnitBreakdownResponseRemoteQuerySortBy on QueryBuilder<
    UnitBreakdownResponseRemote, UnitBreakdownResponseRemote, QSortBy> {
  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByBdReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bdReason', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByBdReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bdReason', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByBreakdownDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakdownDuration', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByBreakdownDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakdownDuration', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByBreakdownLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakdownLocation', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByBreakdownLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakdownLocation', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByDurationRepairment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationRepairment', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByDurationRepairmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationRepairment', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByEquipment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipment', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByEquipmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipment', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByGroupUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupUnit', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByGroupUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupUnit', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByIsOb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByIsObDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByLoadDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loadDateTime', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByLoadDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loadDateTime', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByOperator() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operator', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByOperatorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operator', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByOperatorName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operatorName', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> sortByOperatorNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operatorName', Sort.desc);
    });
  }
}

extension UnitBreakdownResponseRemoteQuerySortThenBy on QueryBuilder<
    UnitBreakdownResponseRemote, UnitBreakdownResponseRemote, QSortThenBy> {
  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByBdReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bdReason', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByBdReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bdReason', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByBreakdownDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakdownDuration', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByBreakdownDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakdownDuration', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByBreakdownLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakdownLocation', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByBreakdownLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breakdownLocation', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByDurationRepairment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationRepairment', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByDurationRepairmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationRepairment', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByEquipment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipment', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByEquipmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipment', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByGroupUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupUnit', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByGroupUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupUnit', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByIsOb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByIsObDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOb', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByLoadDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loadDateTime', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByLoadDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loadDateTime', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByOperator() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operator', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByOperatorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operator', Sort.desc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByOperatorName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operatorName', Sort.asc);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QAfterSortBy> thenByOperatorNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'operatorName', Sort.desc);
    });
  }
}

extension UnitBreakdownResponseRemoteQueryWhereDistinct on QueryBuilder<
    UnitBreakdownResponseRemote, UnitBreakdownResponseRemote, QDistinct> {
  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByBdReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bdReason', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByBreakdownDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'breakdownDuration');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByBreakdownLocation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'breakdownLocation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByDurationRepairment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durationRepairment');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByEquipment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'equipment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByGroupUnit({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupUnit', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByIsOb() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOb');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByLoadDateTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loadDateTime', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByOperator({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'operator', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, UnitBreakdownResponseRemote,
      QDistinct> distinctByOperatorName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'operatorName', caseSensitive: caseSensitive);
    });
  }
}

extension UnitBreakdownResponseRemoteQueryProperty on QueryBuilder<
    UnitBreakdownResponseRemote, UnitBreakdownResponseRemote, QQueryProperty> {
  QueryBuilder<UnitBreakdownResponseRemote, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, String?, QQueryOperations>
      bdReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bdReason');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, double?, QQueryOperations>
      breakdownDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'breakdownDuration');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, String?, QQueryOperations>
      breakdownLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'breakdownLocation');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, double?, QQueryOperations>
      durationRepairmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durationRepairment');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, String?, QQueryOperations>
      equipmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'equipment');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, List<EventBreackDownTrackings>?,
      QQueryOperations> eventBreackDownTrackingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventBreackDownTrackings');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, String?, QQueryOperations>
      groupUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupUnit');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, bool?, QQueryOperations>
      isObProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOb');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, String?, QQueryOperations>
      loadDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loadDateTime');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, String?, QQueryOperations>
      operatorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'operator');
    });
  }

  QueryBuilder<UnitBreakdownResponseRemote, String?, QQueryOperations>
      operatorNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'operatorName');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const EventBreackDownTrackingsSchema = Schema(
  name: r'EventBreackDownTrackings',
  id: -8576215213093293950,
  properties: {
    r'eventBreakdownTracking': PropertySchema(
      id: 0,
      name: r'eventBreakdownTracking',
      type: IsarType.string,
    ),
    r'progressStart': PropertySchema(
      id: 1,
      name: r'progressStart',
      type: IsarType.string,
    ),
    r'rfuEstimation': PropertySchema(
      id: 2,
      name: r'rfuEstimation',
      type: IsarType.string,
    )
  },
  estimateSize: _eventBreackDownTrackingsEstimateSize,
  serialize: _eventBreackDownTrackingsSerialize,
  deserialize: _eventBreackDownTrackingsDeserialize,
  deserializeProp: _eventBreackDownTrackingsDeserializeProp,
);

int _eventBreackDownTrackingsEstimateSize(
  EventBreackDownTrackings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.eventBreakdownTracking;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.progressStart;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rfuEstimation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _eventBreackDownTrackingsSerialize(
  EventBreackDownTrackings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.eventBreakdownTracking);
  writer.writeString(offsets[1], object.progressStart);
  writer.writeString(offsets[2], object.rfuEstimation);
}

EventBreackDownTrackings _eventBreackDownTrackingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EventBreackDownTrackings(
    eventBreakdownTracking: reader.readStringOrNull(offsets[0]),
    progressStart: reader.readStringOrNull(offsets[1]),
    rfuEstimation: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _eventBreackDownTrackingsDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension EventBreackDownTrackingsQueryFilter on QueryBuilder<
    EventBreackDownTrackings, EventBreackDownTrackings, QFilterCondition> {
  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eventBreakdownTracking',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eventBreakdownTracking',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventBreakdownTracking',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventBreakdownTracking',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventBreakdownTracking',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventBreakdownTracking',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventBreakdownTracking',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventBreakdownTracking',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
          QAfterFilterCondition>
      eventBreakdownTrackingContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventBreakdownTracking',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
          QAfterFilterCondition>
      eventBreakdownTrackingMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventBreakdownTracking',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventBreakdownTracking',
        value: '',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> eventBreakdownTrackingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventBreakdownTracking',
        value: '',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'progressStart',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'progressStart',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progressStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progressStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progressStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'progressStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'progressStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
          QAfterFilterCondition>
      progressStartContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'progressStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
          QAfterFilterCondition>
      progressStartMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'progressStart',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressStart',
        value: '',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> progressStartIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'progressStart',
        value: '',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rfuEstimation',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rfuEstimation',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rfuEstimation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rfuEstimation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rfuEstimation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rfuEstimation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rfuEstimation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rfuEstimation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
          QAfterFilterCondition>
      rfuEstimationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rfuEstimation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
          QAfterFilterCondition>
      rfuEstimationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rfuEstimation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rfuEstimation',
        value: '',
      ));
    });
  }

  QueryBuilder<EventBreackDownTrackings, EventBreackDownTrackings,
      QAfterFilterCondition> rfuEstimationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rfuEstimation',
        value: '',
      ));
    });
  }
}

extension EventBreackDownTrackingsQueryObject on QueryBuilder<
    EventBreackDownTrackings, EventBreackDownTrackings, QFilterCondition> {}
