#!/bin/sh
set -e

# tut-8 is not simple
for TUT in 2 3 4 5 5-attack 6 7 ; do
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
