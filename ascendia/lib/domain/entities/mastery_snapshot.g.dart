// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mastery_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MasterySnapshotImpl _$$MasterySnapshotImplFromJson(
        Map<String, dynamic> json) =>
    _$MasterySnapshotImpl(
      id: json['id'] as String,
      studentId: json['studentId'] as String,
      conceptId: json['conceptId'] as String,
      masteryScore: (json['masteryScore'] as num).toDouble(),
      easeFactor: (json['easeFactor'] as num).toDouble(),
      interval: (json['interval'] as num).toDouble(),
      repetitions: (json['repetitions'] as num).toInt(),
      lastReviewedAt: DateTime.parse(json['lastReviewedAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MasterySnapshotImplToJson(
        _$MasterySnapshotImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'conceptId': instance.conceptId,
      'masteryScore': instance.masteryScore,
      'easeFactor': instance.easeFactor,
      'interval': instance.interval,
      'repetitions': instance.repetitions,
      'lastReviewedAt': instance.lastReviewedAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
