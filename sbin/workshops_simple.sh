#!/bin/sh
set -e

for WORKSHOP in hash-lock relay trust-fund ; do
  echo
  echo "============ workshop-$WORKSHOP [begin] ==============="
  echo
  sbin/simple_test.sh "workshop-$WORKSHOP"
  echo
  echo "============ workshop-$WORKSHOP [end] ================="
  echo
done
