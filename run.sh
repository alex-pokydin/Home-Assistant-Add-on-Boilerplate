#!/usr/bin/with-contenv bashio

set -e

DATABASE_URL=$(bashio::config 'database_url')
LOG_LEVEL=$(bashio::config 'log_level')

INGRESS_PORT=$(bashio::addon.ingress_port)
ADDON_VERSION=$(bashio::addon.version)

bashio::log.info "Starting HA Add-on Boilerplate v${ADDON_VERSION}..."

export NODE_ENV=production
export HOME_ASSISTANT=true
export PORT="$INGRESS_PORT"
export LOG_LEVEL="$LOG_LEVEL"
export ADDON_VERSION="$ADDON_VERSION"
export APP_ROOT="/app"
export SERVER_PATH="/app/server"
export CLIENT_PATH="/app/client"

cd "$APP_ROOT"

# Default to SQLite in /data for persistence across restarts
if [ -z "$DATABASE_URL" ]; then
  DATABASE_URL="file:/data/app.db"
  bashio::log.info "No database URL configured — using local SQLite at /data/app.db"
fi
export DATABASE_URL="$DATABASE_URL"

# Sync schema to database (creates tables if missing, alters if schema changed)
bashio::log.info "Syncing database schema..."
pnpm prisma:sync || bashio::log.warning "Schema sync failed — continuing without database"

bashio::log.info "Starting application on port $PORT..."
pnpm start
