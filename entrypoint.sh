#!/usr/bin/env bash

set -x

DBHOST=${DBHOST:-${POSTGRES_PORT_5432_TCP_ADDR:-"postgres"}}
DBPORT=${DBPORT:-"5432"}
DBNAME=${DBNAME:-${POSTGRES_ENV_POSTGRES_USER:-"postgres"}}
DBSCHEMA=${DBSCHEMA:-"public"}

DBUSER=${DBUSER:-${POSTGRES_ENV_POSTGRES_USER:-"postgres"}}
DBPASS=${DBPASS:-${POSTGRES_ENV_POSTGRES_PASSWORD:-"postgres"}}
DBPOOL=${DBPOOL:-"200"}
PORT=${PORT:-"3000"}

SCHEMA=${SCHEMA:-"public"}

ANONUSER=${ANONUSER:-"postgres"}

SLEEP=${SLEEP:-"0"}

sleep "$SLEEP"

cat > /etc/postgrest.conf <<-EOF
db-uri = "postgres://${DBUSER}:${DBPASS}@${DBHOST}:${DBPORT}/${DBNAME}"
db-schema = "${DBSCHEMA}"
db-anon-role = "${ANONUSER}"
EOF

postgrest /etc/postgrest.conf
