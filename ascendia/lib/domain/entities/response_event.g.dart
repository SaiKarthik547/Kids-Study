// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseEventImpl _$$ResponseEventImplFromJson(Map<String, dynamic> json) =>
    _$ResponseEventImpl(
      eventId: json['eventId'] as String,
      schemaVersion: (json['schemaVersion'] as num?)?.toInt() ?? 1,
      studentId: json['studentId'] as String,
      questionId: json['questionId'] as String,
      questionVersion: (json['questionVersion'] as num).toInt(),
      selectedAnswer: json['selectedAnswer'] as String,
      correctAnswer: json['correctAnswer'] as String,
      attemptNumber: (json['attemptNumber'] as num).toInt(),
      hintLevel: (json['hintLevel'] as num).toInt(),
      responseTimeMs: (json['responseTimeMs'] as num).toInt(),
      localOccurredAt: DateTime.parse(json['localOccurredAt'] as String),
      receivedAt: json['receivedAt'] == null
          ? null
          : DateTime.parse(json['receivedAt'] as String),
      syncId: json['syncId'] as String,
    );

Map<String, dynamic> _$$ResponseEventImplToJson(_$ResponseEventImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'schemaVersion': instance.schemaVersion,
      'studentId': instance.studentId,
      'questionId': instance.questionId,
      'questionVersion': instance.questionVersion,
      'selectedAnswer': instance.selectedAnswer,
      'correctAnswer': instance.correctAnswer,
      'attemptNumber': instance.attemptNumber,
      'hintLevel': instance.hintLevel,
      'responseTimeMs': instance.responseTimeMs,
      'localOccurredAt': instance.localOccurredAt.toIso8601String(),
      'receivedAt': instance.receivedAt?.toIso8601String(),
      'syncId': instance.syncId,
    };
