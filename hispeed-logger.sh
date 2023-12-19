#!/bin/sh
set -xue

port=${1:-/dev/serial0}
speed=${2:-230400}
outfile=${3:-serial.log}
now=$(date "+%Y-%m-%d.%H:%M:%S")
out=serial-${now}.log

stty -F${port} ${speed}
(stty raw; cat > ${out} ) < {port}

#stdbuf -o0 cat /dev/serial0 > /var/tmp/serial.log
