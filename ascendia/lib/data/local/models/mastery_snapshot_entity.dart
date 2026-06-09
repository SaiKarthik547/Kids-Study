import 'package:isar/isar.dart';

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
}
