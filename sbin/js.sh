#!/bin/sh
set -ex

sbin/image_check.sh stdlib REACH_GIT_HASH js
sbin/image_check.sh runner REACH_GIT_HASH js
