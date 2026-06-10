import 'dart:convert';

import '../../domain/entities/response_event.dart';
import '../local/outbox_entity.dart';

class OutboxMapper {
  static const String responseEventType = 'ResponseEvent';

  const OutboxMapper();

  OutboxEntity fromResponseEvent(ResponseEvent event, {DateTime? createdAt}) {
    return OutboxEntity()
      ..eventId = event.eventId
      ..eventType = responseEventType
      ..payloadJson = jsonEncode(event.toJson())
      ..createdAt = createdAt ?? DateTime.now();
  }

  ResponseEvent toResponseEvent(OutboxEntity entity) {
    final Object? decoded = jsonDecode(entity.payloadJson);
    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('Invalid response event payload');
    }
    return ResponseEvent.fromJson(decoded);
  }
}
