#!/bin/sh
set -ex

for WORKSHOP in hash-lock relay trust-fund ; do
  sbin/simple_test.sh "workshop-$WORKSHOP"
done
