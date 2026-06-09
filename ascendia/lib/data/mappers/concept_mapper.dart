import '../../domain/entities/concept.dart';
import '../local/models/concept_entity.dart';

class ConceptMapper {
  const ConceptMapper();

  ConceptEntity toEntity(Concept concept) {
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

  Concept toDomain(ConceptEntity entity) {
    return Concept(
      id: entity.conceptId,
      subjectId: entity.subjectId,
      boardId: entity.boardId,
      classLevel: entity.classLevel,
      title: entity.title,
      description: entity.description,
      bloomRange: entity.bloomRange,
      version: entity.version,
      prerequisiteIds: entity.prerequisiteIds,
    );
  }
}
