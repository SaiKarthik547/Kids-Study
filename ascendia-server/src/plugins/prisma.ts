import { FastifyInstance } from "fastify";
import fp from "fastify-plugin";
import { PrismaClient } from "@prisma/client";

/** Extend Fastify's type system so `fastify.prisma` is available everywhere */
declare module "fastify" {
  interface FastifyInstance {
    prisma: PrismaClient;
  }
}

/**
 * Fastify plugin that creates a Prisma client, attaches it to the instance,
 * and disconnects cleanly on server close.
 */
async function prismaPlugin(fastify: FastifyInstance): Promise<void> {
  const prisma = new PrismaClient({
    log: ["warn", "error"],
  });

  await prisma.$connect();

  fastify.decorate("prisma", prisma);

  fastify.addHook("onClose", async (instance) => {
    await instance.prisma.$disconnect();
  });
}

export default fp(prismaPlugin, {
  name: "prisma",
});
