#!/bin/sh
set -e

# tut-7 is not simple
for TUT in 1 2 3 4-attack 4 5 6 ; do
  echo
  echo "============ tut-$TUT [begin] ==============="
  echo

  # Works w/o Makefile (ETH only)
  sbin/simple_test.sh "tut-$TUT"

  # Works w/o Makefile (ALGO only)
  sbin/simple_test_ALGO.sh "tut-$TUT"

  echo
  echo "============ tut-$TUT [end] ================="
  echo
done
