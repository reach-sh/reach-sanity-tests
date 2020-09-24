#!/bin/sh
set -ex

DIR="$1"
shift

sbin/simple_test.sh "$DIR" \
  Dockerfile Makefile docker-compose.yml package.json \
  "$@"
