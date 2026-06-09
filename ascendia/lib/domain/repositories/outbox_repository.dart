import '../entities/response_event.dart';

abstract class OutboxRepository {
  Future<void> enqueueResponseEvent(ResponseEvent event);

  Future<List<ResponseEvent>> pendingResponseEvents();
}
