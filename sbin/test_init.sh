#!/bin/sh
set -ex

mkdir -p /tmp/test-init && cd /tmp/test-init || exit 1

# reach init creates a runnable thing
/tmp/reach init
/tmp/reach run

# reach scaffold after reach init is still runnable
/tmp/reach scaffold
/tmp/reach run
