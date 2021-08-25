#! /bin/bash

echo "=====backup start====="

echo "1. remove all backup tar files"
rm -rf /home/postgres/gitlab-docker/backups/*.tar

echo "2. excute gitlab backup cmd"
docker exec -t gitlab gitlab-rake gitlab:backup:create

echo "=====backup end====="
