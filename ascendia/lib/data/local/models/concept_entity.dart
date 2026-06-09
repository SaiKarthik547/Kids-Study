import 'package:isar/isar.dart';

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
}
