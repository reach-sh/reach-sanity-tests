#!/bin/sh
set -ex

REACH_CONNECTOR_MODE=ETH sbin/scaffolded_test.sh tut-8 check.sh
REACH_CONNECTOR_MODE=ALGO sbin/scaffolded_test.sh tut-8 check.sh
