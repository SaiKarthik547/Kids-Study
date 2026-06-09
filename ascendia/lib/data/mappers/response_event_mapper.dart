import '../../domain/entities/response_event.dart';
import '../local/models/response_event_entity.dart';

class ResponseEventMapper {
  const ResponseEventMapper();

  ResponseEventEntity toEntity(ResponseEvent event) {
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

  ResponseEvent toDomain(ResponseEventEntity entity) {
    return ResponseEvent(
      eventId: entity.eventId,
      schemaVersion: entity.schemaVersion,
      studentId: entity.studentId,
      questionId: entity.questionId,
      questionVersion: entity.questionVersion,
      selectedAnswer: entity.selectedAnswer,
      correctAnswer: entity.correctAnswer,
      attemptNumber: entity.attemptNumber,
      hintLevel: entity.hintLevel,
      responseTimeMs: entity.responseTimeMs,
      localOccurredAt: entity.localOccurredAt,
      receivedAt: entity.receivedAt,
      syncId: entity.syncId,
    );
  }
}
