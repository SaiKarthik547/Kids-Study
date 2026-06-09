import '../../domain/entities/mastery_snapshot.dart';
import '../local/models/mastery_snapshot_entity.dart';

class MasterySnapshotMapper {
  const MasterySnapshotMapper();

  MasterySnapshotEntity toEntity(MasterySnapshot snapshot) {
    return MasterySnapshotEntity()
      ..snapshotId = snapshot.id
      ..studentId = snapshot.studentId
      ..conceptId = snapshot.conceptId
      ..masteryScore = snapshot.masteryScore
      ..easeFactor = snapshot.easeFactor
      ..interval = snapshot.interval
      ..repetitions = snapshot.repetitions
      ..lastReviewedAt = snapshot.lastReviewedAt
      ..updatedAt = snapshot.updatedAt;
  }

  MasterySnapshot toDomain(MasterySnapshotEntity entity) {
    return MasterySnapshot(
      id: entity.snapshotId,
      studentId: entity.studentId,
      conceptId: entity.conceptId,
      masteryScore: entity.masteryScore,
      easeFactor: entity.easeFactor,
      interval: entity.interval,
      repetitions: entity.repetitions,
      lastReviewedAt: entity.lastReviewedAt,
      updatedAt: entity.updatedAt,
    );
  }
}
