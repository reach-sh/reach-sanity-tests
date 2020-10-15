#!/bin/sh
set -ex

export REACH_CONNECTOR_MODE=ALGO-test-dockerized
sbin/simple_test.sh "$@"
