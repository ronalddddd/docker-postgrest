# PostGREST

Dockerized [PostgREST](https://postgrest.com)

## Example

```
# host, username and password are default to "postgres"
docker run -it --rm -e DBNAME=app_db --link postgres:postgres -p 80:3000 ronalddddd/postgrest
```

## Environment Variables

```
DBHOST
DBNAME
DBPORT
DBUSER
DBPASS
DBPOOL # not used
PORT
SCHEMA
ANONUSER
SLEEP
```
# Notes

- Adapted from: https://github.com/motiz88/docker-postgrest

