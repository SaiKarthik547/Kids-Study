import 'package:isar/isar.dart';

import '../../domain/entities/concept.dart';
import '../../domain/repositories/concept_repository.dart';
import '../local/models/concept_entity.dart';
import '../mappers/concept_mapper.dart';

class IsarConceptRepository implements ConceptRepository {
  final Isar _isar;
  final ConceptMapper _mapper;

  const IsarConceptRepository(
    this._isar, [
    this._mapper = const ConceptMapper(),
  ]);

  @override
  Future<void> save(Concept concept) async {
    final ConceptEntity entity = _mapper.toEntity(concept);
    await _isar.writeTxn(() async {
      await _isar.conceptEntitys.put(entity);
    });
  }

  @override
  Future<Concept?> findById(String conceptId) async {
    final ConceptEntity? entity = await _isar.conceptEntitys.getByConceptId(
      conceptId,
    );
    return entity == null ? null : _mapper.toDomain(entity);
  }
}
