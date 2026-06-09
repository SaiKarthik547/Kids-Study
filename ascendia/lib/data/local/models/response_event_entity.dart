import 'package:isar/isar.dart';
import '../../../domain/entities/response_event.dart';

part 'response_event_entity.g.dart';

@collection
class ResponseEventEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
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

  factory ResponseEventEntity.fromDomain(ResponseEvent event) {
    return ResponseEventEntity()
      ..eventId = event.eventId
      ..schemaVersion = event.schemaVersion
      ..studentId = event.studentId
      ..questionId = event.questionId
      ..questionVersion = event.questionVersion
      ..selectedAnswer = event.selectedAnswer
      ..correctAnswer = event.correctAnswer
      ..attemptNumber = event.attemptNumber
      ..hintLevel = event.hintLevel
      ..responseTimeMs = event.responseTimeMs
      ..localOccurredAt = event.localOccurredAt
      ..receivedAt = event.receivedAt
      ..syncId = event.syncId;
  }

  ResponseEvent toDomain() {
    return ResponseEvent(
      eventId: eventId,
      schemaVersion: schemaVersion,
      studentId: studentId,
      questionId: questionId,
      questionVersion: questionVersion,
      selectedAnswer: selectedAnswer,
      correctAnswer: correctAnswer,
      attemptNumber: attemptNumber,
      hintLevel: hintLevel,
      responseTimeMs: responseTimeMs,
      localOccurredAt: localOccurredAt,
      receivedAt: receivedAt,
      syncId: syncId,
    );
  }
}
