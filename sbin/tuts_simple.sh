#!/bin/sh
set -ex

# tut-7 is not simple
for TUT in 1 2 3 4-attack 4 5 6 ; do
  sbin/simple_test.sh "tut-$TUT"
done
