#!/bin/sh
set -ex

rm -rf /tmp/tut-3 && mkdir -p /tmp/tut-3 && cd /tmp/tut-3 || exit 1
cp /tmp/reach-lang/examples/tut-3/index.rsh .
cp /tmp/reach-lang/examples/tut-3/index.mjs .

/tmp/reach run
