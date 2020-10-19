#!/bin/sh
set -e

for WORKSHOP in hash-lock relay trust-fund ; do
  echo
  echo "============ workshop-$WORKSHOP [begin] ==============="
  echo

  # Works w/o Makefile (ETH only)
  sbin/simple_test.sh "workshop-$WORKSHOP"

  # Works w/o Makefile (ALGO only)
  sbin/simple_test_ALGO.sh "workshop-$WORKSHOP"

  echo
  echo "============ workshop-$WORKSHOP [end] ================="
  echo
done
