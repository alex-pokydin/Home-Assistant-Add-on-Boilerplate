#!/usr/bin/env bash
# Sync Prisma schema to database and optionally seed.
# Usage: ./scripts/migrate.sh [--seed]

set -e

cd "$(dirname "$0")/.."

echo "Syncing database schema..."
pnpm --filter @ha-addon/server db:push

if [ "$1" = "--seed" ]; then
  echo "Seeding database..."
  pnpm --filter @ha-addon/server db:seed
fi

echo "Done."
