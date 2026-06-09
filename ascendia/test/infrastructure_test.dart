import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'dart:io';

import 'package:ascendia/domain/entities/response_event.dart';
import 'package:ascendia/data/local/models/response_event_entity.dart';
import 'package:ascendia/data/local/outbox_entity.dart';

void main() {
  late Isar isar;

  setUpAll(() async {
    // Initialize Isar for Dart unit tests
    await Isar.initializeIsarCore(download: true);
  });

  setUp(() async {
    // Open an in-memory database for testing
    final tempDir = Directory.systemTemp.createTempSync();
    isar = await Isar.open(
      [ResponseEventEntitySchema, OutboxEntitySchema],
      directory: tempDir.path,
    );
  });

  tearDown(() async {
    await isar.close(deleteFromDisk: true);
  });

  test('Test 1: Write ResponseEvent to Isar and reload (Domain Mapping)', () async {
    final now = DateTime.now();

    // 1. Create pure domain entity
    final domainEvent = ResponseEvent(
      eventId: 'uuid-1234',
      studentId: 'student-99',
      questionId: 'q-55',
      questionVersion: 1,
      selectedAnswer: 'A',
      correctAnswer: 'A',
      attemptNumber: 1,
      hintLevel: 0,
      responseTimeMs: 1500,
      localOccurredAt: now,
      syncId: 'sync-session-1',
    );

    // 2. Map to Data Entity
    final dataEntity = ResponseEventEntity.fromDomain(domainEvent);

    // 3. Save to local DB (Write)
    await isar.writeTxn(() async {
      await isar.responseEventEntitys.put(dataEntity);
    });

    // 4. Reload from DB (Restart simulation)
    final reloadedEntity = await isar.responseEventEntitys.where().findFirst();
    expect(reloadedEntity, isNotNull);
    
    // 5. Map back to Domain Entity
    final reloadedDomain = reloadedEntity!.toDomain();
    
    expect(reloadedDomain.eventId, 'uuid-1234');
    expect(reloadedDomain.studentId, 'student-99');
    expect(reloadedDomain.questionId, 'q-55');
  });

  test('Test 3 & 4: Enqueue OutboxEntity and read it', () async {
    final now = DateTime.now();

    final domainEvent = ResponseEvent(
      eventId: 'uuid-9999',
      studentId: 'student-88',
      questionId: 'q-44',
      questionVersion: 2,
      selectedAnswer: 'B',
      correctAnswer: 'C',
      attemptNumber: 2,
      hintLevel: 1,
      responseTimeMs: 3000,
      localOccurredAt: now,
      syncId: 'sync-session-2',
    );

    // 1. Convert to Outbox payload
    final outboxItem = OutboxEntity.fromResponseEvent(domainEvent);

    // 2. Enqueue
    await isar.writeTxn(() async {
      await isar.outboxEntitys.put(outboxItem);
    });

    // 3. Read queue
    final queue = await isar.outboxEntitys.where().findAll();
    expect(queue.length, 1);
    expect(queue.first.eventType, 'ResponseEvent');
    expect(queue.first.eventId, 'uuid-9999');
    expect(queue.first.isProcessing, false);
  });
}
