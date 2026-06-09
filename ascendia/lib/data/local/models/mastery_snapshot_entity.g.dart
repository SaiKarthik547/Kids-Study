// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mastery_snapshot_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMasterySnapshotEntityCollection on Isar {
  IsarCollection<MasterySnapshotEntity> get masterySnapshotEntitys =>
      this.collection();
}

const MasterySnapshotEntitySchema = CollectionSchema(
  name: r'MasterySnapshotEntity',
  id: 2432881311706608439,
  properties: {
    r'conceptId': PropertySchema(
      id: 0,
      name: r'conceptId',
      type: IsarType.string,
    ),
    r'easeFactor': PropertySchema(
      id: 1,
      name: r'easeFactor',
      type: IsarType.double,
    ),
    r'interval': PropertySchema(
      id: 2,
      name: r'interval',
      type: IsarType.double,
    ),
    r'lastReviewedAt': PropertySchema(
      id: 3,
      name: r'lastReviewedAt',
      type: IsarType.dateTime,
    ),
    r'masteryScore': PropertySchema(
      id: 4,
      name: r'masteryScore',
      type: IsarType.double,
    ),
    r'repetitions': PropertySchema(
      id: 5,
      name: r'repetitions',
      type: IsarType.long,
    ),
    r'snapshotId': PropertySchema(
      id: 6,
      name: r'snapshotId',
      type: IsarType.string,
    ),
    r'studentId': PropertySchema(
      id: 7,
      name: r'studentId',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 8,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _masterySnapshotEntityEstimateSize,
  serialize: _masterySnapshotEntitySerialize,
  deserialize: _masterySnapshotEntityDeserialize,
  deserializeProp: _masterySnapshotEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'snapshotId': IndexSchema(
      id: -7574188874426247601,
      name: r'snapshotId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'snapshotId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'studentId': IndexSchema(
      id: -6791323312898281473,
      name: r'studentId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'studentId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'conceptId': IndexSchema(
      id: 3859936649456624389,
      name: r'conceptId',
      unique: false,
      replace: false,
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
  getId: _masterySnapshotEntityGetId,
  getLinks: _masterySnapshotEntityGetLinks,
  attach: _masterySnapshotEntityAttach,
  version: '3.1.0+1',
);

int _masterySnapshotEntityEstimateSize(
  MasterySnapshotEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.conceptId.length * 3;
  bytesCount += 3 + object.snapshotId.length * 3;
  bytesCount += 3 + object.studentId.length * 3;
  return bytesCount;
}

void _masterySnapshotEntitySerialize(
  MasterySnapshotEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.conceptId);
  writer.writeDouble(offsets[1], object.easeFactor);
  writer.writeDouble(offsets[2], object.interval);
  writer.writeDateTime(offsets[3], object.lastReviewedAt);
  writer.writeDouble(offsets[4], object.masteryScore);
  writer.writeLong(offsets[5], object.repetitions);
  writer.writeString(offsets[6], object.snapshotId);
  writer.writeString(offsets[7], object.studentId);
  writer.writeDateTime(offsets[8], object.updatedAt);
}

MasterySnapshotEntity _masterySnapshotEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MasterySnapshotEntity();
  object.conceptId = reader.readString(offsets[0]);
  object.easeFactor = reader.readDouble(offsets[1]);
  object.id = id;
  object.interval = reader.readDouble(offsets[2]);
  object.lastReviewedAt = reader.readDateTime(offsets[3]);
  object.masteryScore = reader.readDouble(offsets[4]);
  object.repetitions = reader.readLong(offsets[5]);
  object.snapshotId = reader.readString(offsets[6]);
  object.studentId = reader.readString(offsets[7]);
  object.updatedAt = reader.readDateTime(offsets[8]);
  return object;
}

P _masterySnapshotEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _masterySnapshotEntityGetId(MasterySnapshotEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _masterySnapshotEntityGetLinks(
    MasterySnapshotEntity object) {
  return [];
}

void _masterySnapshotEntityAttach(
    IsarCollection<dynamic> col, Id id, MasterySnapshotEntity object) {
  object.id = id;
}

extension MasterySnapshotEntityByIndex
    on IsarCollection<MasterySnapshotEntity> {
  Future<MasterySnapshotEntity?> getBySnapshotId(String snapshotId) {
    return getByIndex(r'snapshotId', [snapshotId]);
  }

  MasterySnapshotEntity? getBySnapshotIdSync(String snapshotId) {
    return getByIndexSync(r'snapshotId', [snapshotId]);
  }

  Future<bool> deleteBySnapshotId(String snapshotId) {
    return deleteByIndex(r'snapshotId', [snapshotId]);
  }

  bool deleteBySnapshotIdSync(String snapshotId) {
    return deleteByIndexSync(r'snapshotId', [snapshotId]);
  }

  Future<List<MasterySnapshotEntity?>> getAllBySnapshotId(
      List<String> snapshotIdValues) {
    final values = snapshotIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'snapshotId', values);
  }

  List<MasterySnapshotEntity?> getAllBySnapshotIdSync(
      List<String> snapshotIdValues) {
    final values = snapshotIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'snapshotId', values);
  }

  Future<int> deleteAllBySnapshotId(List<String> snapshotIdValues) {
    final values = snapshotIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'snapshotId', values);
  }

  int deleteAllBySnapshotIdSync(List<String> snapshotIdValues) {
    final values = snapshotIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'snapshotId', values);
  }

  Future<Id> putBySnapshotId(MasterySnapshotEntity object) {
    return putByIndex(r'snapshotId', object);
  }

  Id putBySnapshotIdSync(MasterySnapshotEntity object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'snapshotId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySnapshotId(List<MasterySnapshotEntity> objects) {
    return putAllByIndex(r'snapshotId', objects);
  }

  List<Id> putAllBySnapshotIdSync(List<MasterySnapshotEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'snapshotId', objects, saveLinks: saveLinks);
  }
}

extension MasterySnapshotEntityQueryWhereSort
    on QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QWhere> {
  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MasterySnapshotEntityQueryWhere on QueryBuilder<MasterySnapshotEntity,
    MasterySnapshotEntity, QWhereClause> {
  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      idBetween(
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      snapshotIdEqualTo(String snapshotId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'snapshotId',
        value: [snapshotId],
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      snapshotIdNotEqualTo(String snapshotId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'snapshotId',
              lower: [],
              upper: [snapshotId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'snapshotId',
              lower: [snapshotId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'snapshotId',
              lower: [snapshotId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'snapshotId',
              lower: [],
              upper: [snapshotId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      studentIdEqualTo(String studentId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'studentId',
        value: [studentId],
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      studentIdNotEqualTo(String studentId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'studentId',
              lower: [],
              upper: [studentId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'studentId',
              lower: [studentId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'studentId',
              lower: [studentId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'studentId',
              lower: [],
              upper: [studentId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
      conceptIdEqualTo(String conceptId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'conceptId',
        value: [conceptId],
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterWhereClause>
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

extension MasterySnapshotEntityQueryFilter on QueryBuilder<
    MasterySnapshotEntity, MasterySnapshotEntity, QFilterCondition> {
  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> conceptIdEqualTo(
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> conceptIdGreaterThan(
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> conceptIdLessThan(
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> conceptIdBetween(
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> conceptIdStartsWith(
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> conceptIdEndsWith(
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
          QAfterFilterCondition>
      conceptIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'conceptId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
          QAfterFilterCondition>
      conceptIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'conceptId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> conceptIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conceptId',
        value: '',
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> conceptIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'conceptId',
        value: '',
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> easeFactorEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'easeFactor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> easeFactorGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'easeFactor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> easeFactorLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'easeFactor',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> easeFactorBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'easeFactor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
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

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> intervalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'interval',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> intervalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'interval',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> intervalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'interval',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> intervalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'interval',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> lastReviewedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastReviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> lastReviewedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastReviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> lastReviewedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastReviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> lastReviewedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastReviewedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> masteryScoreEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'masteryScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> masteryScoreGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'masteryScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> masteryScoreLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'masteryScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> masteryScoreBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'masteryScore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> repetitionsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repetitions',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> repetitionsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repetitions',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> repetitionsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repetitions',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> repetitionsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repetitions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> snapshotIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'snapshotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> snapshotIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'snapshotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> snapshotIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'snapshotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> snapshotIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'snapshotId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> snapshotIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'snapshotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> snapshotIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'snapshotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
          QAfterFilterCondition>
      snapshotIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'snapshotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
          QAfterFilterCondition>
      snapshotIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'snapshotId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> snapshotIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'snapshotId',
        value: '',
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> snapshotIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'snapshotId',
        value: '',
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> studentIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'studentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> studentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'studentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> studentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'studentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> studentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'studentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> studentIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'studentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> studentIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'studentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
          QAfterFilterCondition>
      studentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'studentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
          QAfterFilterCondition>
      studentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'studentId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'studentId',
        value: '',
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'studentId',
        value: '',
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity,
      QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MasterySnapshotEntityQueryObject on QueryBuilder<
    MasterySnapshotEntity, MasterySnapshotEntity, QFilterCondition> {}

extension MasterySnapshotEntityQueryLinks on QueryBuilder<MasterySnapshotEntity,
    MasterySnapshotEntity, QFilterCondition> {}

extension MasterySnapshotEntityQuerySortBy
    on QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QSortBy> {
  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByConceptId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByConceptIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByEaseFactor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'easeFactor', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByEaseFactorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'easeFactor', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interval', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interval', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByLastReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByLastReviewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByMasteryScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteryScore', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByMasteryScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteryScore', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByRepetitions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitions', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByRepetitionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitions', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortBySnapshotId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snapshotId', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortBySnapshotIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snapshotId', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension MasterySnapshotEntityQuerySortThenBy
    on QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QSortThenBy> {
  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByConceptId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByConceptIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByEaseFactor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'easeFactor', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByEaseFactorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'easeFactor', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interval', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interval', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByLastReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByLastReviewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByMasteryScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteryScore', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByMasteryScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'masteryScore', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByRepetitions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitions', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByRepetitionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetitions', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenBySnapshotId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snapshotId', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenBySnapshotIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snapshotId', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension MasterySnapshotEntityQueryWhereDistinct
    on QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct> {
  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct>
      distinctByConceptId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'conceptId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct>
      distinctByEaseFactor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'easeFactor');
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct>
      distinctByInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'interval');
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct>
      distinctByLastReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastReviewedAt');
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct>
      distinctByMasteryScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'masteryScore');
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct>
      distinctByRepetitions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'repetitions');
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct>
      distinctBySnapshotId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'snapshotId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct>
      distinctByStudentId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MasterySnapshotEntity, MasterySnapshotEntity, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension MasterySnapshotEntityQueryProperty on QueryBuilder<
    MasterySnapshotEntity, MasterySnapshotEntity, QQueryProperty> {
  QueryBuilder<MasterySnapshotEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MasterySnapshotEntity, String, QQueryOperations>
      conceptIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'conceptId');
    });
  }

  QueryBuilder<MasterySnapshotEntity, double, QQueryOperations>
      easeFactorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'easeFactor');
    });
  }

  QueryBuilder<MasterySnapshotEntity, double, QQueryOperations>
      intervalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'interval');
    });
  }

  QueryBuilder<MasterySnapshotEntity, DateTime, QQueryOperations>
      lastReviewedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastReviewedAt');
    });
  }

  QueryBuilder<MasterySnapshotEntity, double, QQueryOperations>
      masteryScoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'masteryScore');
    });
  }

  QueryBuilder<MasterySnapshotEntity, int, QQueryOperations>
      repetitionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repetitions');
    });
  }

  QueryBuilder<MasterySnapshotEntity, String, QQueryOperations>
      snapshotIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'snapshotId');
    });
  }

  QueryBuilder<MasterySnapshotEntity, String, QQueryOperations>
      studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }

  QueryBuilder<MasterySnapshotEntity, DateTime, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
