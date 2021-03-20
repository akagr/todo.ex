#!/bin/bash
# Docker entrypoint script.

# Wait until Postgres is ready
while ! pg_isready -q -h "$POSTGRES_HOST" -p 5432 -U "$POSTGRES_USER"
do
  echo "$(date) - waiting for database to start"
  sleep 2
done

mix setup

mix phx.server
