import 'package:isar/isar.dart';
import 'dart:convert';
import '../../domain/entities/response_event.dart';

part 'outbox_entity.g.dart';

@collection
class OutboxEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String eventId;

  /// The type of payload so the sync worker knows where to route it
  late String eventType;

  /// The JSON representation of the payload (e.g. ResponseEvent)
  late String payloadJson;

  @Index()
  late DateTime createdAt;

  /// Whether it is currently being processed
  bool isProcessing = false;

  /// Increment if sync fails
  int retryCount = 0;

  OutboxEntity();

  factory OutboxEntity.fromResponseEvent(ResponseEvent event) {
    return OutboxEntity()
      ..eventId = event.eventId
      ..eventType = 'ResponseEvent'
      ..payloadJson = jsonEncode(event.toJson())
      ..createdAt = DateTime.now();
  }
}
