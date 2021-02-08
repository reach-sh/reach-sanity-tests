#!/bin/sh
set -ex

sbin/image_check.sh runner js
sbin/image_check.sh react-runner js
sbin/image_check.sh rpc-server js
