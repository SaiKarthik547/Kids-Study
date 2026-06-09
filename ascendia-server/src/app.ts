import Fastify from "fastify";
import cors from "@fastify/cors";
import prismaPlugin from "./plugins/prisma.js";
import { healthRoutes } from "./routes/health.js";
import { syncRoutes } from "./routes/sync.js";

/**
 * Builds and configures the Fastify application instance.
 * Registers plugins and routes, returns the ready-to-listen app.
 */
export async function buildApp() {
  const app = Fastify({
    logger: {
      level: "info",
    },
  });

  // ── Plugins ──────────────────────────────────────────────────────────
  await app.register(cors, { origin: true });
  await app.register(prismaPlugin);

  // ── Routes ───────────────────────────────────────────────────────────
  await app.register(healthRoutes);
  await app.register(syncRoutes);

  return app;
}
