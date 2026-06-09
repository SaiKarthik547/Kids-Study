import { FastifyInstance } from "fastify";
import type { HealthResponse } from "../types/index.js";

export async function healthRoutes(fastify: FastifyInstance): Promise<void> {
  fastify.get<{ Reply: HealthResponse }>("/health", async (_request, reply) => {
    const response: HealthResponse = {
      status: "ok",
      timestamp: new Date().toISOString(),
    };
    return reply.send(response);
  });
}
