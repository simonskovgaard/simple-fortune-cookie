#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -t "${DockerRepo}backend:latest" -t "${DockerRepo}backend:${GIT_COMMIT::8}" backend/
docker build -t "${DockerRepo}frontend:latest" -t "${DockerRepo}frontend:${GIT_COMMIT::8}" frontend/ &
wait