#!/bin/bash

set -eu

# 1M, 10M, 100M, 1000M
base64 /dev/urandom | fold -w 100 | head -10000 > ./resource/t1M.txt
base64 /dev/urandom | fold -w 100 | head -100000 > ./resource/t10M.txt
base64 /dev/urandom | fold -w 100 | head -1000000 > ./resource/t100M.txt
base64 /dev/urandom | fold -w 100 | head -10000000 > ./resource/t1000M.txt
