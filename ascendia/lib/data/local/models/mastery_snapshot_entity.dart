import 'package:isar/isar.dart';
import '../../../domain/entities/mastery_snapshot.dart';

part 'mastery_snapshot_entity.g.dart';

@collection
class MasterySnapshotEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String snapshotId;

  @Index()
  late String studentId;

  @Index()
  late String conceptId;

  late double masteryScore;
  late double easeFactor;
  late double interval;
  late int repetitions;
  late DateTime lastReviewedAt;
  late DateTime updatedAt;

  MasterySnapshotEntity();

  factory MasterySnapshotEntity.fromDomain(MasterySnapshot snapshot) {
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

  MasterySnapshot toDomain() {
    return MasterySnapshot(
      id: snapshotId,
      studentId: studentId,
      conceptId: conceptId,
      masteryScore: masteryScore,
      easeFactor: easeFactor,
      interval: interval,
      repetitions: repetitions,
      lastReviewedAt: lastReviewedAt,
      updatedAt: updatedAt,
    );
  }
}
