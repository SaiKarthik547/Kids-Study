import '../entities/mastery_snapshot.dart';

abstract class MasterySnapshotRepository {
  Future<void> save(MasterySnapshot snapshot);

  Future<MasterySnapshot?> findById(String snapshotId);
}
