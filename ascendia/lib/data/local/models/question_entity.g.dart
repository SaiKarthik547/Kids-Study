// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuestionEntityCollection on Isar {
  IsarCollection<QuestionEntity> get questionEntitys => this.collection();
}

const QuestionEntitySchema = CollectionSchema(
  name: r'QuestionEntity',
  id: -5718048655593194005,
  properties: {
    r'bloomLevel': PropertySchema(
      id: 0,
      name: r'bloomLevel',
      type: IsarType.long,
    ),
    r'conceptId': PropertySchema(
      id: 1,
      name: r'conceptId',
      type: IsarType.string,
    ),
    r'correctAnswer': PropertySchema(
      id: 2,
      name: r'correctAnswer',
      type: IsarType.string,
    ),
    r'explanation': PropertySchema(
      id: 3,
      name: r'explanation',
      type: IsarType.string,
    ),
    r'hints': PropertySchema(
      id: 4,
      name: r'hints',
      type: IsarType.stringList,
    ),
    r'optionsIsCorrect': PropertySchema(
      id: 5,
      name: r'optionsIsCorrect',
      type: IsarType.boolList,
    ),
    r'optionsMisconceptionId': PropertySchema(
      id: 6,
      name: r'optionsMisconceptionId',
      type: IsarType.stringList,
    ),
    r'optionsText': PropertySchema(
      id: 7,
      name: r'optionsText',
      type: IsarType.stringList,
    ),
    r'questionId': PropertySchema(
      id: 8,
      name: r'questionId',
      type: IsarType.string,
    ),
    r'schemaVersion': PropertySchema(
      id: 9,
      name: r'schemaVersion',
      type: IsarType.long,
    ),
    r'status': PropertySchema(
      id: 10,
      name: r'status',
      type: IsarType.string,
    ),
    r'stem': PropertySchema(
      id: 11,
      name: r'stem',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 12,
      name: r'type',
      type: IsarType.string,
    ),
    r'version': PropertySchema(
      id: 13,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _questionEntityEstimateSize,
  serialize: _questionEntitySerialize,
  deserialize: _questionEntityDeserialize,
  deserializeProp: _questionEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'questionId': IndexSchema(
      id: 5032123391997384121,
      name: r'questionId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'questionId',
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
  getId: _questionEntityGetId,
  getLinks: _questionEntityGetLinks,
  attach: _questionEntityAttach,
  version: '3.1.0+1',
);

int _questionEntityEstimateSize(
  QuestionEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.conceptId.length * 3;
  bytesCount += 3 + object.correctAnswer.length * 3;
  bytesCount += 3 + object.explanation.length * 3;
  bytesCount += 3 + object.hints.length * 3;
  {
    for (var i = 0; i < object.hints.length; i++) {
      final value = object.hints[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.optionsIsCorrect.length;
  bytesCount += 3 + object.optionsMisconceptionId.length * 3;
  {
    for (var i = 0; i < object.optionsMisconceptionId.length; i++) {
      final value = object.optionsMisconceptionId[i];
      if (value != null) {
        bytesCount += value.length * 3;
      }
    }
  }
  bytesCount += 3 + object.optionsText.length * 3;
  {
    for (var i = 0; i < object.optionsText.length; i++) {
      final value = object.optionsText[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.questionId.length * 3;
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.stem.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _questionEntitySerialize(
  QuestionEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bloomLevel);
  writer.writeString(offsets[1], object.conceptId);
  writer.writeString(offsets[2], object.correctAnswer);
  writer.writeString(offsets[3], object.explanation);
  writer.writeStringList(offsets[4], object.hints);
  writer.writeBoolList(offsets[5], object.optionsIsCorrect);
  writer.writeStringList(offsets[6], object.optionsMisconceptionId);
  writer.writeStringList(offsets[7], object.optionsText);
  writer.writeString(offsets[8], object.questionId);
  writer.writeLong(offsets[9], object.schemaVersion);
  writer.writeString(offsets[10], object.status);
  writer.writeString(offsets[11], object.stem);
  writer.writeString(offsets[12], object.type);
  writer.writeLong(offsets[13], object.version);
}

QuestionEntity _questionEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuestionEntity();
  object.bloomLevel = reader.readLong(offsets[0]);
  object.conceptId = reader.readString(offsets[1]);
  object.correctAnswer = reader.readString(offsets[2]);
  object.explanation = reader.readString(offsets[3]);
  object.hints = reader.readStringList(offsets[4]) ?? [];
  object.id = id;
  object.optionsIsCorrect = reader.readBoolList(offsets[5]) ?? [];
  object.optionsMisconceptionId = reader.readStringOrNullList(offsets[6]) ?? [];
  object.optionsText = reader.readStringList(offsets[7]) ?? [];
  object.questionId = reader.readString(offsets[8]);
  object.schemaVersion = reader.readLong(offsets[9]);
  object.status = reader.readString(offsets[10]);
  object.stem = reader.readString(offsets[11]);
  object.type = reader.readString(offsets[12]);
  object.version = reader.readLong(offsets[13]);
  return object;
}

P _questionEntityDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readBoolList(offset) ?? []) as P;
    case 6:
      return (reader.readStringOrNullList(offset) ?? []) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _questionEntityGetId(QuestionEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _questionEntityGetLinks(QuestionEntity object) {
  return [];
}

void _questionEntityAttach(
    IsarCollection<dynamic> col, Id id, QuestionEntity object) {
  object.id = id;
}

extension QuestionEntityByIndex on IsarCollection<QuestionEntity> {
  Future<QuestionEntity?> getByQuestionId(String questionId) {
    return getByIndex(r'questionId', [questionId]);
  }

  QuestionEntity? getByQuestionIdSync(String questionId) {
    return getByIndexSync(r'questionId', [questionId]);
  }

  Future<bool> deleteByQuestionId(String questionId) {
    return deleteByIndex(r'questionId', [questionId]);
  }

  bool deleteByQuestionIdSync(String questionId) {
    return deleteByIndexSync(r'questionId', [questionId]);
  }

  Future<List<QuestionEntity?>> getAllByQuestionId(
      List<String> questionIdValues) {
    final values = questionIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'questionId', values);
  }

  List<QuestionEntity?> getAllByQuestionIdSync(List<String> questionIdValues) {
    final values = questionIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'questionId', values);
  }

  Future<int> deleteAllByQuestionId(List<String> questionIdValues) {
    final values = questionIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'questionId', values);
  }

  int deleteAllByQuestionIdSync(List<String> questionIdValues) {
    final values = questionIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'questionId', values);
  }

  Future<Id> putByQuestionId(QuestionEntity object) {
    return putByIndex(r'questionId', object);
  }

  Id putByQuestionIdSync(QuestionEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'questionId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByQuestionId(List<QuestionEntity> objects) {
    return putAllByIndex(r'questionId', objects);
  }

  List<Id> putAllByQuestionIdSync(List<QuestionEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'questionId', objects, saveLinks: saveLinks);
  }
}

extension QuestionEntityQueryWhereSort
    on QueryBuilder<QuestionEntity, QuestionEntity, QWhere> {
  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuestionEntityQueryWhere
    on QueryBuilder<QuestionEntity, QuestionEntity, QWhereClause> {
  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhereClause>
      questionIdEqualTo(String questionId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'questionId',
        value: [questionId],
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhereClause>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhereClause>
      conceptIdEqualTo(String conceptId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'conceptId',
        value: [conceptId],
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterWhereClause>
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

extension QuestionEntityQueryFilter
    on QueryBuilder<QuestionEntity, QuestionEntity, QFilterCondition> {
  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      bloomLevelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bloomLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      bloomLevelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bloomLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      bloomLevelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bloomLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      bloomLevelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bloomLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      conceptIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'conceptId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      conceptIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'conceptId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      conceptIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'conceptId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      conceptIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'conceptId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      correctAnswerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      correctAnswerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'correctAnswer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      correctAnswerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswer',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      correctAnswerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'correctAnswer',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'explanation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'explanation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      explanationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hints',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hints',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hints',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hints',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hints',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hints',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hints',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hints',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hints',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hints',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hints',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hints',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hints',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hints',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hints',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      hintsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hints',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsIsCorrectElementEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optionsIsCorrect',
        value: value,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsIsCorrectLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsIsCorrect',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsIsCorrectIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsIsCorrect',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsIsCorrectIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsIsCorrect',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsIsCorrectLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsIsCorrect',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsIsCorrectLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsIsCorrect',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsIsCorrectLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsIsCorrect',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'optionsMisconceptionId',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'optionsMisconceptionId',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optionsMisconceptionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'optionsMisconceptionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'optionsMisconceptionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'optionsMisconceptionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'optionsMisconceptionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'optionsMisconceptionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'optionsMisconceptionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'optionsMisconceptionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optionsMisconceptionId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'optionsMisconceptionId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsMisconceptionId',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsMisconceptionId',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsMisconceptionId',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsMisconceptionId',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsMisconceptionId',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsMisconceptionIdLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsMisconceptionId',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optionsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'optionsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'optionsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'optionsText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'optionsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'optionsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'optionsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'optionsText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optionsText',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'optionsText',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsText',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsText',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsText',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsText',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsText',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      optionsTextLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'optionsText',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      questionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      questionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'questionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      questionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'questionId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      questionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'questionId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      schemaVersionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schemaVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stem',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stem',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stem',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      stemIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stem',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
      versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterFilterCondition>
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

extension QuestionEntityQueryObject
    on QueryBuilder<QuestionEntity, QuestionEntity, QFilterCondition> {}

extension QuestionEntityQueryLinks
    on QueryBuilder<QuestionEntity, QuestionEntity, QFilterCondition> {}

extension QuestionEntityQuerySortBy
    on QueryBuilder<QuestionEntity, QuestionEntity, QSortBy> {
  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByBloomLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloomLevel', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByBloomLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloomLevel', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> sortByConceptId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByConceptIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByCorrectAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByCorrectAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByExplanation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'explanation', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByExplanationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'explanation', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByQuestionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByQuestionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortBySchemaVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schemaVersion', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortBySchemaVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schemaVersion', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> sortByStem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stem', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> sortByStemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stem', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension QuestionEntityQuerySortThenBy
    on QueryBuilder<QuestionEntity, QuestionEntity, QSortThenBy> {
  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByBloomLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloomLevel', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByBloomLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloomLevel', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> thenByConceptId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByConceptIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'conceptId', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByCorrectAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByCorrectAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByExplanation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'explanation', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByExplanationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'explanation', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByQuestionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByQuestionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenBySchemaVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schemaVersion', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenBySchemaVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schemaVersion', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> thenByStem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stem', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> thenByStemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stem', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension QuestionEntityQueryWhereDistinct
    on QueryBuilder<QuestionEntity, QuestionEntity, QDistinct> {
  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct>
      distinctByBloomLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bloomLevel');
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct> distinctByConceptId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'conceptId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct>
      distinctByCorrectAnswer({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correctAnswer',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct> distinctByExplanation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'explanation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct> distinctByHints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hints');
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct>
      distinctByOptionsIsCorrect() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'optionsIsCorrect');
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct>
      distinctByOptionsMisconceptionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'optionsMisconceptionId');
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct>
      distinctByOptionsText() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'optionsText');
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct> distinctByQuestionId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'questionId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct>
      distinctBySchemaVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'schemaVersion');
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct> distinctByStem(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stem', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuestionEntity, QuestionEntity, QDistinct> distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension QuestionEntityQueryProperty
    on QueryBuilder<QuestionEntity, QuestionEntity, QQueryProperty> {
  QueryBuilder<QuestionEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QuestionEntity, int, QQueryOperations> bloomLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bloomLevel');
    });
  }

  QueryBuilder<QuestionEntity, String, QQueryOperations> conceptIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'conceptId');
    });
  }

  QueryBuilder<QuestionEntity, String, QQueryOperations>
      correctAnswerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correctAnswer');
    });
  }

  QueryBuilder<QuestionEntity, String, QQueryOperations> explanationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'explanation');
    });
  }

  QueryBuilder<QuestionEntity, List<String>, QQueryOperations> hintsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hints');
    });
  }

  QueryBuilder<QuestionEntity, List<bool>, QQueryOperations>
      optionsIsCorrectProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'optionsIsCorrect');
    });
  }

  QueryBuilder<QuestionEntity, List<String?>, QQueryOperations>
      optionsMisconceptionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'optionsMisconceptionId');
    });
  }

  QueryBuilder<QuestionEntity, List<String>, QQueryOperations>
      optionsTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'optionsText');
    });
  }

  QueryBuilder<QuestionEntity, String, QQueryOperations> questionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'questionId');
    });
  }

  QueryBuilder<QuestionEntity, int, QQueryOperations> schemaVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schemaVersion');
    });
  }

  QueryBuilder<QuestionEntity, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<QuestionEntity, String, QQueryOperations> stemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stem');
    });
  }

  QueryBuilder<QuestionEntity, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<QuestionEntity, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
