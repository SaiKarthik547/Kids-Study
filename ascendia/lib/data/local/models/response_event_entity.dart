import 'package:isar/isar.dart';

part 'response_event_entity.g.dart';

@collection
class ResponseEventEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String eventId;

  late int schemaVersion;
  
  @Index()
  late String studentId;
  
  @Index()
  late String questionId;
  
  late int questionVersion;
  late String selectedAnswer;
  late String correctAnswer;
  late int attemptNumber;
  late int hintLevel;
  late int responseTimeMs;
  late DateTime localOccurredAt;
  DateTime? receivedAt;
  late String syncId;

  ResponseEventEntity();
}
