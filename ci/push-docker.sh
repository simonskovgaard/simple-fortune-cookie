#!/bin/bash
echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker push "$docker_username/backend:latest"
docker push "$docker_username/backend:${GIT_COMMIT::8}"
#docker push "$docker_username/frontend:1.0-${GIT_COMMIT::8}" &
docker push "$docker_username/frontend:latest"
docker push "$docker_username/frontend:${GIT_COMMIT::8}" &
wait