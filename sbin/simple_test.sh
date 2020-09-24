#!/bin/sh
set -ex

DIR="$1"
shift

sbin/test_with_files.sh \
  "$DIR" index.mjs index.rsh \
  "$@"
