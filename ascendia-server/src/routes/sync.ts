import { FastifyInstance } from "fastify";
import type {
  SyncEventsBody,
  SyncEventsResponse,
  ResponseEventPayload,
} from "../types/index.js";

/**
 * Maps a client payload to the shape Prisma expects for createMany.
 * Keeps the function pure and under 50 lines.
 */
function toCreateInput(event: ResponseEventPayload) {
  return {
    id: event.id,
    schemaVersion: event.schemaVersion,
    studentId: event.studentId,
    questionId: event.questionId,
    questionVersion: event.questionVersion,
    selectedAnswer: event.selectedAnswer,
    correctAnswer: event.correctAnswer,
    attemptNumber: event.attemptNumber,
    hintLevel: event.hintLevel,
    responseTimeMs: event.responseTimeMs,
    localOccurredAt: new Date(event.localOccurredAt),
    syncId: event.syncId,
  } as const;
}

export async function syncRoutes(fastify: FastifyInstance): Promise<void> {
  fastify.post<{ Body: SyncEventsBody; Reply: SyncEventsResponse }>(
    "/sync/events",
    async (request, reply) => {
      const { events } = request.body;

      const data = events.map(toCreateInput);

      const result = await fastify.prisma.responseEvent.createMany({
        data,
        skipDuplicates: true,
      });

      const response: SyncEventsResponse = {
        accepted: result.count,
        duplicatesSkipped: events.length - result.count,
      };

      return reply.status(201).send(response);
    },
  );
}
