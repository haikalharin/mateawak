// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_attachment_request.remote.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDownloadAttachmentNewsRequestRemoteCollection on Isar {
  IsarCollection<DownloadAttachmentNewsRequestRemote>
      get downloadAttachmentNewsRequestRemotes => this.collection();
}

const DownloadAttachmentNewsRequestRemoteSchema = CollectionSchema(
  name: r'DownloadAttachmentNewsRequestRemote',
  id: -8465881196614779480,
  properties: {
    r'formattedName': PropertySchema(
      id: 0,
      name: r'formattedName',
      type: IsarType.string,
    )
  },
  estimateSize: _downloadAttachmentNewsRequestRemoteEstimateSize,
  serialize: _downloadAttachmentNewsRequestRemoteSerialize,
  deserialize: _downloadAttachmentNewsRequestRemoteDeserialize,
  deserializeProp: _downloadAttachmentNewsRequestRemoteDeserializeProp,
  idName: r'attachmentId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _downloadAttachmentNewsRequestRemoteGetId,
  getLinks: _downloadAttachmentNewsRequestRemoteGetLinks,
  attach: _downloadAttachmentNewsRequestRemoteAttach,
  version: '3.1.0+1',
);

int _downloadAttachmentNewsRequestRemoteEstimateSize(
  DownloadAttachmentNewsRequestRemote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.formattedName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _downloadAttachmentNewsRequestRemoteSerialize(
  DownloadAttachmentNewsRequestRemote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.formattedName);
}

DownloadAttachmentNewsRequestRemote
    _downloadAttachmentNewsRequestRemoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DownloadAttachmentNewsRequestRemote(
    attachmentId: id,
    formattedName: reader.readStringOrNull(offsets[0]),
  );
  return object;
}

P _downloadAttachmentNewsRequestRemoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _downloadAttachmentNewsRequestRemoteGetId(
    DownloadAttachmentNewsRequestRemote object) {
  return object.attachmentId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _downloadAttachmentNewsRequestRemoteGetLinks(
    DownloadAttachmentNewsRequestRemote object) {
  return [];
}

void _downloadAttachmentNewsRequestRemoteAttach(IsarCollection<dynamic> col,
    Id id, DownloadAttachmentNewsRequestRemote object) {
  object.attachmentId = id;
}

extension DownloadAttachmentNewsRequestRemoteQueryWhereSort on QueryBuilder<
    DownloadAttachmentNewsRequestRemote,
    DownloadAttachmentNewsRequestRemote,
    QWhere> {
  QueryBuilder<DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote, QAfterWhere> anyAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DownloadAttachmentNewsRequestRemoteQueryWhere on QueryBuilder<
    DownloadAttachmentNewsRequestRemote,
    DownloadAttachmentNewsRequestRemote,
    QWhereClause> {
  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterWhereClause> attachmentIdEqualTo(Id attachmentId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: attachmentId,
        upper: attachmentId,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterWhereClause> attachmentIdNotEqualTo(Id attachmentId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: attachmentId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: attachmentId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: attachmentId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: attachmentId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DownloadAttachmentNewsRequestRemote,
          DownloadAttachmentNewsRequestRemote, QAfterWhereClause>
      attachmentIdGreaterThan(Id attachmentId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: attachmentId, includeLower: include),
      );
    });
  }

  QueryBuilder<DownloadAttachmentNewsRequestRemote,
          DownloadAttachmentNewsRequestRemote, QAfterWhereClause>
      attachmentIdLessThan(Id attachmentId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: attachmentId, includeUpper: include),
      );
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterWhereClause> attachmentIdBetween(
    Id lowerAttachmentId,
    Id upperAttachmentId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerAttachmentId,
        includeLower: includeLower,
        upper: upperAttachmentId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DownloadAttachmentNewsRequestRemoteQueryFilter on QueryBuilder<
    DownloadAttachmentNewsRequestRemote,
    DownloadAttachmentNewsRequestRemote,
    QFilterCondition> {
  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> attachmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> attachmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentId',
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> attachmentIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> attachmentIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> attachmentIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> attachmentIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachmentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'formattedName',
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'formattedName',
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formattedName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formattedName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formattedName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formattedName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formattedName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formattedName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DownloadAttachmentNewsRequestRemote,
          DownloadAttachmentNewsRequestRemote, QAfterFilterCondition>
      formattedNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formattedName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DownloadAttachmentNewsRequestRemote,
          DownloadAttachmentNewsRequestRemote, QAfterFilterCondition>
      formattedNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formattedName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formattedName',
        value: '',
      ));
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterFilterCondition> formattedNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formattedName',
        value: '',
      ));
    });
  }
}

extension DownloadAttachmentNewsRequestRemoteQueryObject on QueryBuilder<
    DownloadAttachmentNewsRequestRemote,
    DownloadAttachmentNewsRequestRemote,
    QFilterCondition> {}

extension DownloadAttachmentNewsRequestRemoteQueryLinks on QueryBuilder<
    DownloadAttachmentNewsRequestRemote,
    DownloadAttachmentNewsRequestRemote,
    QFilterCondition> {}

extension DownloadAttachmentNewsRequestRemoteQuerySortBy on QueryBuilder<
    DownloadAttachmentNewsRequestRemote,
    DownloadAttachmentNewsRequestRemote,
    QSortBy> {
  QueryBuilder<DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote, QAfterSortBy> sortByFormattedName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formattedName', Sort.asc);
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterSortBy> sortByFormattedNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formattedName', Sort.desc);
    });
  }
}

extension DownloadAttachmentNewsRequestRemoteQuerySortThenBy on QueryBuilder<
    DownloadAttachmentNewsRequestRemote,
    DownloadAttachmentNewsRequestRemote,
    QSortThenBy> {
  QueryBuilder<DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote, QAfterSortBy> thenByAttachmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.asc);
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterSortBy> thenByAttachmentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentId', Sort.desc);
    });
  }

  QueryBuilder<DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote, QAfterSortBy> thenByFormattedName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formattedName', Sort.asc);
    });
  }

  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QAfterSortBy> thenByFormattedNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formattedName', Sort.desc);
    });
  }
}

extension DownloadAttachmentNewsRequestRemoteQueryWhereDistinct on QueryBuilder<
    DownloadAttachmentNewsRequestRemote,
    DownloadAttachmentNewsRequestRemote,
    QDistinct> {
  QueryBuilder<
      DownloadAttachmentNewsRequestRemote,
      DownloadAttachmentNewsRequestRemote,
      QDistinct> distinctByFormattedName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formattedName',
          caseSensitive: caseSensitive);
    });
  }
}

extension DownloadAttachmentNewsRequestRemoteQueryProperty on QueryBuilder<
    DownloadAttachmentNewsRequestRemote,
    DownloadAttachmentNewsRequestRemote,
    QQueryProperty> {
  QueryBuilder<DownloadAttachmentNewsRequestRemote, int, QQueryOperations>
      attachmentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachmentId');
    });
  }

  QueryBuilder<DownloadAttachmentNewsRequestRemote, String?, QQueryOperations>
      formattedNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formattedName');
    });
  }
}
