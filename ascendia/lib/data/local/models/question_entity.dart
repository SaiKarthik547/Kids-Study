import 'package:isar/isar.dart';
// Note: We'll create the Freezed Question entity in Phase 2.
// For now, this establishes the Isar collection structure.

part 'question_entity.g.dart';

@collection
class QuestionEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String questionId;

  @Index()
  late String conceptId;

  late int version;
  late int schemaVersion;
  late int bloomLevel;
  late String type;
  late String stem;
  late String correctAnswer;
  late String explanation;
  late String status;
  
  late List<String> hints;
  late List<String> optionsText;
  late List<bool> optionsIsCorrect;
  late List<String?> optionsMisconceptionId;

  QuestionEntity();
}
