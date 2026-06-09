// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concept_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetConceptEntityCollection on Isar {
  IsarCollection<ConceptEntity> get conceptEntitys => this.collection();
}

const ConceptEntitySchema = CollectionSchema(
  name: r'ConceptEntity',
  id: -5597947259896388281,
  properties: {
    r'bloomRange': PropertySchema(
      id: 0,
      name: r'bloomRange',
      type: IsarType.string,
    ),
    r'boardId': PropertySchema(
      id: 1,
      name: r'boardId',
      type: IsarType.string,
    ),
    r'classLevel': PropertySchema(
      id: 2,
      name: r'classLevel',
      type: IsarType.long,
    ),
    r'conceptId': PropertySchema(
      id: 3,
      name: r'conceptId',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 4,
      name: r'description',
      type: IsarType.string,
    ),
    r'prerequisiteIds': PropertySchema(
      id: 5,
      name: r'prerequisiteIds',
      type: IsarType.stringList,
    ),
    r'subjectId': PropertySchema(
      id: 6,
      name: r'subjectId',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 7,
      name: r'title',
      type: IsarType.string,
    ),
    r'version': PropertySchema(
      id: 8,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _conceptEntityEstimateSize,
  serialize: _conceptEntitySerialize,
  deserialize: _conceptEntityDeserialize,
  deserializeProp: _conceptEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'conceptId': IndexSchema(
      id: 3859936649456624389,
      name: r'conceptId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'conceptId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _conceptEntityGetId,
  getLinks: _conceptEntityGetLinks,
  attach: _conceptEntityAttach,
  version: '3.1.0+1',
);

int _conceptEntityEstimateSize(
  ConceptEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.bloomRange.length * 3;
  bytesCount += 3 + object.boardId.length * 3;
  bytesCount += 3 + object.conceptId.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.prerequisiteIds.length * 3;
  {
    for (var i = 0; i < object.prerequisiteIds.length; i++) {
      final value = object.prerequisiteIds[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.subjectId.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _conceptEntitySerialize(
  ConceptEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bloomRange);
  writer.writeString(offsets[1], object.boardId);
  writer.writeLong(offsets[2], object.classLevel);
  writer.writeString(offsets[3], object.conceptId);
  writer.writeString(offsets[4], object.description);
  writer.writeStringList(offsets[5], object.prerequisiteIds);
  writer.writeString(offsets[6], object.subjectId);
  writer.writeString(offsets[7], object.title);
  writer.writeLong(offsets[8], object.version);
}

ConceptEntity _conceptEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ConceptEntity();
  object.bloomRange = reader.readString(offsets[0]);
  object.boardId = reader.readString(offsets[1]);
  object.classLevel = reader.readLong(offsets[2]);
  object.conceptId = reader.readString(offsets[3]);
  object.description = reader.readString(offsets[4]);
  object.id = id;
  object.prerequisiteIds = reader.readStringList(offsets[5]) ?? [];
  object.subjectId = reader.readString(offsets[6]);
  object.title = reader.readString(offsets[7]);
  object.version = reader.readLong(offsets[8]);
  return object;
}

P _conceptEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _conceptEntityGetId(ConceptEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _conceptEntityGetLinks(ConceptEntity object) {
  return [];
}

void _conceptEntityAttach(
    IsarCollection<dynamic> col, Id id, ConceptEntity object) {
  object.id = id;
}

extension ConceptEntityByIndex on IsarCollection<ConceptEntity> {
  Future<ConceptEntity?> getByConceptId(String conceptId) {
    return getByIndex(r'conceptId', [conceptId]);
  }

  ConceptEntity? getByConceptIdSync(String conceptId) {
    return getByIndexSync(r'conceptId', [conceptId]);
  }

  Future<bool> deleteByConceptId(String conceptId) {
    return deleteByIndex(r'conceptId', [conceptId]);
  }

  bool deleteByConceptIdSync(String conceptId) {
    return deleteByIndexSync(r'conceptId', [conceptId]);
  }

  Future<List<ConceptEntity?>> getAllByConceptId(List<String> conceptIdValues) {
    final values = conceptIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'conceptId', values);
  }

  List<ConceptEntity?> getAllByConceptIdSync(List<String> conceptIdValues) {
    final values = conceptIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'conceptId', values);
  }

  Future<int> deleteAllByConceptId(List<String> conceptIdValues) {
    final values = conceptIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'conceptId', values);
  }

  int deleteAllByConceptIdSync(List<String> conceptIdValues) {
    final values = conceptIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'conceptId', values);
  }

  Future<Id> putByConceptId(ConceptEntity object) {
    return putByIndex(r'conceptId', object);
  }

  Id putByConceptIdSync(ConceptEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'conceptId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByConceptId(List<ConceptEntity> objects) {
    return putAllByIndex(r'conceptId', objects);
  }

  List<Id> putAllByConceptIdSync(List<ConceptEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'conceptId', objects, saveLinks: saveLinks);
  }
}

extension ConceptEntityQueryWhereSort
    on QueryBuilder<ConceptEntity, ConceptEntity, QWhere> {
  QueryBuilder<ConceptEntity, ConceptEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ConceptEntityQueryWhere
    on QueryBuilder<ConceptEntity, ConceptEntity, QWhereClause> {
  QueryBuilder<ConceptEntity, ConceptEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterWhereClause>
      conceptIdEqualTo(String conceptId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'conceptId',
        value: [conceptId],
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterWhereClause>
      conceptIdNotEqualTo(String conceptId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'conceptId',
              lower: [],
              upper: [conceptId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'conceptId',
              lower: [conceptId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'conceptId',
              lower: [conceptId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'conceptId',
              lower: [],
              upper: [conceptId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ConceptEntityQueryFilter
    on QueryBuilder<ConceptEntity, ConceptEntity, QFilterCondition> {
  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bloomRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bloomRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bloomRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bloomRange',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bloomRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bloomRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bloomRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bloomRange',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bloomRange',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      bloomRangeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bloomRange',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'boardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'boardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'boardId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'boardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'boardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'boardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'boardId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boardId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      boardIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'boardId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      classLevelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'classLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      classLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'classLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      classLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'classLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      classLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'classLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conceptId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'conceptId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'conceptId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'conceptId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'conceptId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'conceptId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'conceptId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'conceptId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conceptId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      conceptIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'conceptId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prerequisiteIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prerequisiteIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prerequisiteIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prerequisiteIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prerequisiteIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prerequisiteIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prerequisiteIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prerequisiteIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prerequisiteIds',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prerequisiteIds',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prerequisiteIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prerequisiteIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prerequisiteIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prerequisiteIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prerequisiteIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      prerequisiteIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'prerequisiteIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subjectId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subjectId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subjectId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subjectId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subjectId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subjectId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subjectId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subjectId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subjectId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      subjectIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subjectId',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      versionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterFilterCondition>
      versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ConceptEntityQueryObject
    on QueryBuilder<ConceptEntity, ConceptEntity, QFilterCondition> {}

extension ConceptEntityQueryLinks
    on QueryBuilder<ConceptEntity, ConceptEntity, QFilterCondition> {}

extension ConceptEntityQuerySortBy
    on QueryBuilder<ConceptEntity, ConceptEntity, QSortBy> {
  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByBloomRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloomRange', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      sortByBloomRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloomRange', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByBoardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boardId', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByBoardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boardId', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByClassLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classLevel', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      sortByClassLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classLevel', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByConceptId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      sortByConceptIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortBySubjectId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectId', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      sortBySubjectIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectId', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension ConceptEntityQuerySortThenBy
    on QueryBuilder<ConceptEntity, ConceptEntity, QSortThenBy> {
  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByBloomRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloomRange', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      thenByBloomRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloomRange', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByBoardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boardId', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByBoardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boardId', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByClassLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classLevel', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      thenByClassLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'classLevel', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByConceptId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      thenByConceptIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenBySubjectId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectId', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy>
      thenBySubjectIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjectId', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QAfterSortBy> thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension ConceptEntityQueryWhereDistinct
    on QueryBuilder<ConceptEntity, ConceptEntity, QDistinct> {
  QueryBuilder<ConceptEntity, ConceptEntity, QDistinct> distinctByBloomRange(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bloomRange', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QDistinct> distinctByBoardId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boardId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QDistinct> distinctByClassLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'classLevel');
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QDistinct> distinctByConceptId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'conceptId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QDistinct>
      distinctByPrerequisiteIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prerequisiteIds');
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QDistinct> distinctBySubjectId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subjectId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConceptEntity, ConceptEntity, QDistinct> distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension ConceptEntityQueryProperty
    on QueryBuilder<ConceptEntity, ConceptEntity, QQueryProperty> {
  QueryBuilder<ConceptEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ConceptEntity, String, QQueryOperations> bloomRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bloomRange');
    });
  }

  QueryBuilder<ConceptEntity, String, QQueryOperations> boardIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boardId');
    });
  }

  QueryBuilder<ConceptEntity, int, QQueryOperations> classLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'classLevel');
    });
  }

  QueryBuilder<ConceptEntity, String, QQueryOperations> conceptIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'conceptId');
    });
  }

  QueryBuilder<ConceptEntity, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<ConceptEntity, List<String>, QQueryOperations>
      prerequisiteIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prerequisiteIds');
    });
  }

  QueryBuilder<ConceptEntity, String, QQueryOperations> subjectIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subjectId');
    });
  }

  QueryBuilder<ConceptEntity, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<ConceptEntity, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
