import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_event.freezed.dart';
part 'response_event.g.dart';

@freezed
class ResponseEvent with _$ResponseEvent {
  const factory ResponseEvent({
    required String eventId,
    @Default(1) int schemaVersion,
    required String studentId,
    required String questionId,
    required int questionVersion,
    required String selectedAnswer,
    required String correctAnswer,
    required int attemptNumber,
    required int hintLevel,
    required int responseTimeMs,
    required DateTime localOccurredAt,
    DateTime? receivedAt,
    required String syncId,
  }) = _ResponseEvent;

  factory ResponseEvent.fromJson(Map<String, dynamic> json) => _$ResponseEventFromJson(json);
}
