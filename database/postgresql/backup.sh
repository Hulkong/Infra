#!/bin/bash

docker exec -i --user postgres smarton-db bash -c "pg_dump smartondb > /dump/smartondb.sql"
docker exec -i --user postgres trendon-db bash -c "pg_dump trendondb_new > /dump/trendondb.sql"
docker exec -i --user postgres dataon-db bash -c "pg_dump dataondb > /dump/dataondb.sql"
docker exec -i --user postgres smarton-db bash -c "pg_dump safeondb > /dump/safeondb.sql"
