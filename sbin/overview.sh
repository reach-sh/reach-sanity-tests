#!/bin/sh
set -ex

# https://docs.reach.sh/overview.html

# Works w/o Makefile (ETH only)
sbin/simple_test.sh overview

# Works w/o Makefile (ALGO only)
sbin/simple_test_ALGO.sh overview

# Works w/ Makefile
sbin/simple_test.sh overview Makefile
