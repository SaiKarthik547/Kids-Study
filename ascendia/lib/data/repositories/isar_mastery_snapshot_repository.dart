import 'package:isar/isar.dart';

import '../../domain/entities/mastery_snapshot.dart';
import '../../domain/repositories/mastery_snapshot_repository.dart';
import '../local/models/mastery_snapshot_entity.dart';
import '../mappers/mastery_snapshot_mapper.dart';

class IsarMasterySnapshotRepository implements MasterySnapshotRepository {
  final Isar _isar;
  final MasterySnapshotMapper _mapper;

  const IsarMasterySnapshotRepository(
    this._isar, {
    MasterySnapshotMapper mapper = const MasterySnapshotMapper(),
  }) : _mapper = mapper;

  @override
  Future<void> save(MasterySnapshot snapshot) async {
    final MasterySnapshotEntity entity = _mapper.toEntity(snapshot);
    await _isar.writeTxn(() async {
      await _isar.masterySnapshotEntitys.put(entity);
    });
  }

  @override
  Future<MasterySnapshot?> findById(String snapshotId) async {
    final MasterySnapshotEntity? entity =
        await _isar.masterySnapshotEntitys.getBySnapshotId(snapshotId);
    return entity == null ? null : _mapper.toDomain(entity);
  }
}
