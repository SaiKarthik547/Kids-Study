// ─── Shared TypeScript types for Ascendia ──────────────────────────────────

/** Payload shape for a single response event coming from the client */
export interface ResponseEventPayload {
  readonly eventId: string;
  readonly schemaVersion: number;
  readonly studentId: string;
  readonly questionId: string;
  readonly questionVersion: number;
  readonly selectedAnswer: string;
  readonly correctAnswer: string;
  readonly attemptNumber: number;
  readonly hintLevel: number;
  readonly responseTimeMs: number;
  readonly localOccurredAt: string; // ISO 8601
  readonly syncId: string;
}

/** Request body for POST /sync/events */
export interface SyncEventsBody {
  readonly events: readonly ResponseEventPayload[];
}

/** Standard health check response */
export interface HealthResponse {
  readonly status: "ok";
  readonly timestamp: string;
}

/** Sync endpoint response */
export interface SyncEventsResponse {
  readonly accepted: number;
  readonly duplicatesSkipped: number;
}
