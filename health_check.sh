#!/bin/sh
set -ex
rm -f status
wget -Sq http://127.0.0.1/api/status 2>&1 | grep 200
