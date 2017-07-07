#!/bin/bash
echo $0
docker run --rm -ti -v $(pwd):/work --entrypoint "$(basename "$0")" ansible "$@"
