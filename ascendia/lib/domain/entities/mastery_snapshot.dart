import 'package:freezed_annotation/freezed_annotation.dart';

part 'mastery_snapshot.freezed.dart';
part 'mastery_snapshot.g.dart';

@freezed
class MasterySnapshot with _$MasterySnapshot {
  const factory MasterySnapshot({
    required String id,
    required String studentId,
    required String conceptId,
    required double masteryScore,
    required double easeFactor,
    required double interval,
    required int repetitions,
    required DateTime lastReviewedAt,
    required DateTime updatedAt,
  }) = _MasterySnapshot;

  factory MasterySnapshot.fromJson(Map<String, dynamic> json) => _$MasterySnapshotFromJson(json);
}
