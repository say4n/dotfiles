#! /bin/bash

target="/Volumes/Sayan's T7/tstfile"

w=$(dd if=/dev/zero bs=2048k of="$target" count=1024 2>&1 | grep sec | awk '{print $1 / 1024 / 1024 / $5, "MB/sec" }')

echo "Write speed: $w"

purge

r=$(dd if="$target" bs=2048k of=/dev/null count=1024 2>&1 | grep sec | awk '{print $1 / 1024 / 1024 / $5, "MB/sec" }')

echo "Read speed: $r"

rm "$target"

