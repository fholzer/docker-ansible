#!/bin/bash
docker run --rm -ti -v $(pwd):/work --entrypoint "$(basename "$0")" ansible "$@"
