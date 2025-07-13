import prisma from "@/src/shared/lib/prisma";

export async function GET() {
  const pools = await prisma.pool.findMany({});
  return new Response(JSON.stringify(pools), {
    status: 200,
    headers: { 'Content-Type': 'application/json' }
  });
}