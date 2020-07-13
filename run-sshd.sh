#!/bin/bash
docker run --rm -d \
-p 2022:22 \
-v $(pwd)/work:/home/user/work \
--name sshd-u1804 \
morpheus9631/sshd:v1.0

echo ''
docker  ps
