#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
#docker build -t "${DockerRepo}micronaut-app:latest" -t "${DockerRepo}micronaut-app:1.0-$Tag" app/
docker build -t "${DockerRepo}backend:latest" backend/
docker build -t "${DockerRepo}frontend:latest" frontend/
