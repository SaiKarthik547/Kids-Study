import '../entities/response_event.dart';

abstract class ResponseEventRepository {
  Future<void> append(ResponseEvent event);

  Future<ResponseEvent?> findByEventId(String eventId);
}
