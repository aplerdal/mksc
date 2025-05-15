#!/usr/bin/env bash
# buildrom.sh
docker run --rm -v "$PWD":/project -w /project -u $(id -u):$(id -g) antimattur/mksc "$@"