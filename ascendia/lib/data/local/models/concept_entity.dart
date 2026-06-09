import 'package:isar/isar.dart';
import '../../../domain/entities/concept.dart';

part 'concept_entity.g.dart';

@collection
class ConceptEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String conceptId;

  late String subjectId;
  late String boardId;
  late int classLevel;
  late String title;
  late String description;
  late String bloomRange;
  late int version;
  late List<String> prerequisiteIds;

  ConceptEntity();

  factory ConceptEntity.fromDomain(Concept concept) {
    return ConceptEntity()
      ..conceptId = concept.id
      ..subjectId = concept.subjectId
      ..boardId = concept.boardId
      ..classLevel = concept.classLevel
      ..title = concept.title
      ..description = concept.description
      ..bloomRange = concept.bloomRange
      ..version = concept.version
      ..prerequisiteIds = concept.prerequisiteIds;
  }

  Concept toDomain() {
    return Concept(
      id: conceptId,
      subjectId: subjectId,
      boardId: boardId,
      classLevel: classLevel,
      title: title,
      description: description,
      bloomRange: bloomRange,
      version: version,
      prerequisiteIds: prerequisiteIds,
    );
  }
}
