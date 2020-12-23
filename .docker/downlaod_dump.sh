#!/usr/bin/env bash
DUMP_FILE=$1
LINK_FILE=$2
cd /mnt
aria2c \
  --max-connection-per-server=16 \
  --max-concurrent-downloads=16 \
  --continue=true \
  --max-tries=50 \
  --file-allocation=falloc \
  $DUMP_FILE
rm -rvf $LINK_FILE
ln -s $DUMP_FILE $LINK_FILE