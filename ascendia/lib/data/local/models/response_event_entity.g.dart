// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_event_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetResponseEventEntityCollection on Isar {
  IsarCollection<ResponseEventEntity> get responseEventEntitys =>
      this.collection();
}

const ResponseEventEntitySchema = CollectionSchema(
  name: r'ResponseEventEntity',
  id: 686228974670047743,
  properties: {
    r'attemptNumber': PropertySchema(
      id: 0,
      name: r'attemptNumber',
      type: IsarType.long,
    ),
    r'correctAnswer': PropertySchema(
      id: 1,
      name: r'correctAnswer',
      type: IsarType.string,
    ),
    r'eventId': PropertySchema(
      id: 2,
      name: r'eventId',
      type: IsarType.string,
    ),
    r'hintLevel': PropertySchema(
      id: 3,
      name: r'hintLevel',
      type: IsarType.long,
    ),
    r'localOccurredAt': PropertySchema(
      id: 4,
      name: r'localOccurredAt',
      type: IsarType.dateTime,
    ),
    r'questionId': PropertySchema(
      id: 5,
      name: r'questionId',
      type: IsarType.string,
    ),
    r'questionVersion': PropertySchema(
      id: 6,
      name: r'questionVersion',
      type: IsarType.long,
    ),
    r'receivedAt': PropertySchema(
      id: 7,
      name: r'receivedAt',
      type: IsarType.dateTime,
    ),
    r'responseTimeMs': PropertySchema(
      id: 8,
      name: r'responseTimeMs',
      type: IsarType.long,
    ),
    r'schemaVersion': PropertySchema(
      id: 9,
      name: r'schemaVersion',
      type: IsarType.long,
    ),
    r'selectedAnswer': PropertySchema(
      id: 10,
      name: r'selectedAnswer',
      type: IsarType.string,
    ),
    r'studentId': PropertySchema(
      id: 11,
      name: r'studentId',
      type: IsarType.string,
    ),
    r'syncId': PropertySchema(
      id: 12,
      name: r'syncId',
      type: IsarType.string,
    )
  },
  estimateSize: _responseEventEntityEstimateSize,
  serialize: _responseEventEntitySerialize,
  deserialize: _responseEventEntityDeserialize,
  deserializeProp: _responseEventEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'eventId': IndexSchema(
      id: -2707901133518603130,
      name: r'eventId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'eventId',
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
    r'questionId': IndexSchema(
      id: 5032123391997384121,
      name: r'questionId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'questionId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _responseEventEntityGetId,
  getLinks: _responseEventEntityGetLinks,
  attach: _responseEventEntityAttach,
  version: '3.1.0+1',
);

int _responseEventEntityEstimateSize(
  ResponseEventEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.correctAnswer.length * 3;
  bytesCount += 3 + object.eventId.length * 3;
  bytesCount += 3 + object.questionId.length * 3;
  bytesCount += 3 + object.selectedAnswer.length * 3;
  bytesCount += 3 + object.studentId.length * 3;
  bytesCount += 3 + object.syncId.length * 3;
  return bytesCount;
}

void _responseEventEntitySerialize(
  ResponseEventEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.attemptNumber);
  writer.writeString(offsets[1], object.correctAnswer);
  writer.writeString(offsets[2], object.eventId);
  writer.writeLong(offsets[3], object.hintLevel);
  writer.writeDateTime(offsets[4], object.localOccurredAt);
  writer.writeString(offsets[5], object.questionId);
  writer.writeLong(offsets[6], object.questionVersion);
  writer.writeDateTime(offsets[7], object.receivedAt);
  writer.writeLong(offsets[8], object.responseTimeMs);
  writer.writeLong(offsets[9], object.schemaVersion);
  writer.writeString(offsets[10], object.selectedAnswer);
  writer.writeString(offsets[11], object.studentId);
  writer.writeString(offsets[12], object.syncId);
}

ResponseEventEntity _responseEventEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ResponseEventEntity();
  object.attemptNumber = reader.readLong(offsets[0]);
  object.correctAnswer = reader.readString(offsets[1]);
  object.eventId = reader.readString(offsets[2]);
  object.hintLevel = reader.readLong(offsets[3]);
  object.id = id;
  object.localOccurredAt = reader.readDateTime(offsets[4]);
  object.questionId = reader.readString(offsets[5]);
  object.questionVersion = reader.readLong(offsets[6]);
  object.receivedAt = reader.readDateTimeOrNull(offsets[7]);
  object.responseTimeMs = reader.readLong(offsets[8]);
  object.schemaVersion = reader.readLong(offsets[9]);
  object.selectedAnswer = reader.readString(offsets[10]);
  object.studentId = reader.readString(offsets[11]);
  object.syncId = reader.readString(offsets[12]);
  return object;
}

P _responseEventEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _responseEventEntityGetId(ResponseEventEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _responseEventEntityGetLinks(
    ResponseEventEntity object) {
  return [];
}

void _responseEventEntityAttach(
    IsarCollection<dynamic> col, Id id, ResponseEventEntity object) {
  object.id = id;
}

extension ResponseEventEntityByIndex on IsarCollection<ResponseEventEntity> {
  Future<ResponseEventEntity?> getByEventId(String eventId) {
    return getByIndex(r'eventId', [eventId]);
  }

  ResponseEventEntity? getByEventIdSync(String eventId) {
    return getByIndexSync(r'eventId', [eventId]);
  }

  Future<bool> deleteByEventId(String eventId) {
    return deleteByIndex(r'eventId', [eventId]);
  }

  bool deleteByEventIdSync(String eventId) {
    return deleteByIndexSync(r'eventId', [eventId]);
  }

  Future<List<ResponseEventEntity?>> getAllByEventId(
      List<String> eventIdValues) {
    final values = eventIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'eventId', values);
  }

  List<ResponseEventEntity?> getAllByEventIdSync(List<String> eventIdValues) {
    final values = eventIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'eventId', values);
  }

  Future<int> deleteAllByEventId(List<String> eventIdValues) {
    final values = eventIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'eventId', values);
  }

  int deleteAllByEventIdSync(List<String> eventIdValues) {
    final values = eventIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'eventId', values);
  }

  Future<Id> putByEventId(ResponseEventEntity object) {
    return putByIndex(r'eventId', object);
  }

  Id putByEventIdSync(ResponseEventEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'eventId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByEventId(List<ResponseEventEntity> objects) {
    return putAllByIndex(r'eventId', objects);
  }

  List<Id> putAllByEventIdSync(List<ResponseEventEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'eventId', objects, saveLinks: saveLinks);
  }
}

extension ResponseEventEntityQueryWhereSort
    on QueryBuilder<ResponseEventEntity, ResponseEventEntity, QWhere> {
  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ResponseEventEntityQueryWhere
    on QueryBuilder<ResponseEventEntity, ResponseEventEntity, QWhereClause> {
  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
      eventIdEqualTo(String eventId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'eventId',
        value: [eventId],
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
      eventIdNotEqualTo(String eventId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [],
              upper: [eventId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [eventId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [eventId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [],
              upper: [eventId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
      studentIdEqualTo(String studentId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'studentId',
        value: [studentId],
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
      questionIdEqualTo(String questionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'questionId',
        value: [questionId],
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterWhereClause>
      questionIdNotEqualTo(String questionId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'questionId',
              lower: [],
              upper: [questionId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'questionId',
              lower: [questionId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'questionId',
              lower: [questionId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'questionId',
              lower: [],
              upper: [questionId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ResponseEventEntityQueryFilter on QueryBuilder<ResponseEventEntity,
    ResponseEventEntity, QFilterCondition> {
  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      attemptNumberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attemptNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      attemptNumberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attemptNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      attemptNumberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attemptNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      attemptNumberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attemptNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctAnswer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'correctAnswer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswer',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      correctAnswerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'correctAnswer',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      eventIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      hintLevelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hintLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      hintLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hintLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      hintLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hintLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      hintLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hintLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      localOccurredAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localOccurredAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      localOccurredAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localOccurredAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      localOccurredAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localOccurredAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      localOccurredAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localOccurredAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'questionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'questionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'questionId',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'questionId',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionVersionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'questionVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionVersionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'questionVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionVersionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'questionVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      questionVersionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'questionVersion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      receivedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'receivedAt',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      receivedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'receivedAt',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      receivedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'receivedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      receivedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'receivedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      receivedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'receivedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      receivedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'receivedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      responseTimeMsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responseTimeMs',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      responseTimeMsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'responseTimeMs',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      responseTimeMsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'responseTimeMs',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      responseTimeMsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'responseTimeMs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      schemaVersionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schemaVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      schemaVersionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'schemaVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      schemaVersionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'schemaVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      schemaVersionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'schemaVersion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedAnswer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selectedAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selectedAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedAnswer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedAnswer',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      selectedAnswerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedAnswer',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdEqualTo(
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdGreaterThan(
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdLessThan(
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdBetween(
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdStartsWith(
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdEndsWith(
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

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'studentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'studentId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'studentId',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      studentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'studentId',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'syncId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'syncId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'syncId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'syncId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'syncId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'syncId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'syncId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncId',
        value: '',
      ));
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterFilterCondition>
      syncIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'syncId',
        value: '',
      ));
    });
  }
}

extension ResponseEventEntityQueryObject on QueryBuilder<ResponseEventEntity,
    ResponseEventEntity, QFilterCondition> {}

extension ResponseEventEntityQueryLinks on QueryBuilder<ResponseEventEntity,
    ResponseEventEntity, QFilterCondition> {}

extension ResponseEventEntityQuerySortBy
    on QueryBuilder<ResponseEventEntity, ResponseEventEntity, QSortBy> {
  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByAttemptNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attemptNumber', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByAttemptNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attemptNumber', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByCorrectAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByCorrectAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByHintLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintLevel', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByHintLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintLevel', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByLocalOccurredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localOccurredAt', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByLocalOccurredAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localOccurredAt', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByQuestionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByQuestionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByQuestionVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionVersion', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByQuestionVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionVersion', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByReceivedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedAt', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByReceivedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedAt', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByResponseTimeMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseTimeMs', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByResponseTimeMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseTimeMs', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortBySchemaVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schemaVersion', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortBySchemaVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schemaVersion', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortBySelectedAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedAnswer', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortBySelectedAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedAnswer', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortBySyncId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncId', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      sortBySyncIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncId', Sort.desc);
    });
  }
}

extension ResponseEventEntityQuerySortThenBy
    on QueryBuilder<ResponseEventEntity, ResponseEventEntity, QSortThenBy> {
  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByAttemptNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attemptNumber', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByAttemptNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attemptNumber', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByCorrectAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByCorrectAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByHintLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintLevel', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByHintLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hintLevel', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByLocalOccurredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localOccurredAt', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByLocalOccurredAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localOccurredAt', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByQuestionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByQuestionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByQuestionVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionVersion', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByQuestionVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionVersion', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByReceivedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedAt', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByReceivedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'receivedAt', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByResponseTimeMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseTimeMs', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByResponseTimeMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseTimeMs', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenBySchemaVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schemaVersion', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenBySchemaVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schemaVersion', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenBySelectedAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedAnswer', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenBySelectedAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedAnswer', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByStudentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenByStudentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentId', Sort.desc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenBySyncId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncId', Sort.asc);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QAfterSortBy>
      thenBySyncIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncId', Sort.desc);
    });
  }
}

extension ResponseEventEntityQueryWhereDistinct
    on QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct> {
  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByAttemptNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attemptNumber');
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByCorrectAnswer({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correctAnswer',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByEventId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByHintLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hintLevel');
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByLocalOccurredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localOccurredAt');
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByQuestionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'questionId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByQuestionVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'questionVersion');
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByReceivedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'receivedAt');
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByResponseTimeMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responseTimeMs');
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctBySchemaVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'schemaVersion');
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctBySelectedAnswer({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedAnswer',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctByStudentId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResponseEventEntity, ResponseEventEntity, QDistinct>
      distinctBySyncId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'syncId', caseSensitive: caseSensitive);
    });
  }
}

extension ResponseEventEntityQueryProperty
    on QueryBuilder<ResponseEventEntity, ResponseEventEntity, QQueryProperty> {
  QueryBuilder<ResponseEventEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ResponseEventEntity, int, QQueryOperations>
      attemptNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attemptNumber');
    });
  }

  QueryBuilder<ResponseEventEntity, String, QQueryOperations>
      correctAnswerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correctAnswer');
    });
  }

  QueryBuilder<ResponseEventEntity, String, QQueryOperations>
      eventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventId');
    });
  }

  QueryBuilder<ResponseEventEntity, int, QQueryOperations> hintLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hintLevel');
    });
  }

  QueryBuilder<ResponseEventEntity, DateTime, QQueryOperations>
      localOccurredAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localOccurredAt');
    });
  }

  QueryBuilder<ResponseEventEntity, String, QQueryOperations>
      questionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'questionId');
    });
  }

  QueryBuilder<ResponseEventEntity, int, QQueryOperations>
      questionVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'questionVersion');
    });
  }

  QueryBuilder<ResponseEventEntity, DateTime?, QQueryOperations>
      receivedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'receivedAt');
    });
  }

  QueryBuilder<ResponseEventEntity, int, QQueryOperations>
      responseTimeMsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responseTimeMs');
    });
  }

  QueryBuilder<ResponseEventEntity, int, QQueryOperations>
      schemaVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schemaVersion');
    });
  }

  QueryBuilder<ResponseEventEntity, String, QQueryOperations>
      selectedAnswerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedAnswer');
    });
  }

  QueryBuilder<ResponseEventEntity, String, QQueryOperations>
      studentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentId');
    });
  }

  QueryBuilder<ResponseEventEntity, String, QQueryOperations> syncIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'syncId');
    });
  }
}
