#!/bin/bash
docker run --rm -ti \
	-v $(pwd):/work \
	-v ~/.ssh/known_hosts:/root/.ssh/known_hosts \
	-v $SSH_AUTH_SOCK:/ssh-agent \
	-e SSH_AUTH_SOCK=/ssh-agent \
	--entrypoint "$(basename "$0")" ansible "$@"
