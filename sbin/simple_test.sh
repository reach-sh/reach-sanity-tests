#!/bin/sh
set -ex
sbin/test_with_files.sh \
  "$1" index.mjs index.rsh
