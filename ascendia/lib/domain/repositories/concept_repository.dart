import '../entities/concept.dart';

abstract class ConceptRepository {
  Future<void> save(Concept concept);

  Future<Concept?> findById(String conceptId);
}
