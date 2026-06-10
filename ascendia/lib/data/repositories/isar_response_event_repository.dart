import 'package:isar/isar.dart';

import '../../domain/entities/response_event.dart';
import '../../domain/repositories/response_event_repository.dart';
import '../local/models/response_event_entity.dart';
import '../mappers/response_event_mapper.dart';

class IsarResponseEventRepository implements ResponseEventRepository {
  final Isar _isar;
  final ResponseEventMapper _mapper;

  const IsarResponseEventRepository(
    this._isar, [
    this._mapper = const ResponseEventMapper(),
  ]);

  @override
  Future<void> append(ResponseEvent event) async {
    final ResponseEventEntity entity = _mapper.toEntity(event);
    await _isar.writeTxn(() async {
      await _isar.responseEventEntitys.put(entity);
    });
  }

  @override
  Future<ResponseEvent?> findByEventId(String eventId) async {
    final ResponseEventEntity? entity = await _isar.responseEventEntitys
        .getByEventId(eventId);
    return entity == null ? null : _mapper.toDomain(entity);
  }
}
