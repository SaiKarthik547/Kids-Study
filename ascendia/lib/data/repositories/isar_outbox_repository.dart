import 'package:isar/isar.dart';

import '../../domain/entities/response_event.dart';
import '../../domain/repositories/outbox_repository.dart';
import '../local/outbox_entity.dart';
import '../mappers/outbox_mapper.dart';

class IsarOutboxRepository implements OutboxRepository {
  final Isar _isar;
  final OutboxMapper _mapper;

  const IsarOutboxRepository(
    this._isar, {
    OutboxMapper mapper = const OutboxMapper(),
  }) : _mapper = mapper;

  @override
  Future<void> enqueueResponseEvent(ResponseEvent event) async {
    final OutboxEntity entity = _mapper.fromResponseEvent(event);
    await _isar.writeTxn(() async {
      await _isar.outboxEntitys.put(entity);
    });
  }

  @override
  Future<List<ResponseEvent>> pendingResponseEvents() async {
    final List<OutboxEntity> entities = await _isar.outboxEntitys.where().findAll();
    return entities
        .where((OutboxEntity entity) {
          return entity.eventType == OutboxMapper.responseEventType;
        })
        .map(_mapper.toResponseEvent)
        .toList();
  }
}
