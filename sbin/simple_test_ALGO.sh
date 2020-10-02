#!/bin/sh
set -ex

export REACH_CONNECTOR_MODE=ALGO-test-dockerized
export REACH_DEBUG=1

# Willing to try twice
sbin/simple_test.sh "$@" || (sleep 5 && \
sbin/simple_test.sh "$@")
