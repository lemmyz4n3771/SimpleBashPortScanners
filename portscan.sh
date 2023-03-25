#!/bin/bash

[[ $# -ne 2 ]] && echo "Usage: ./scan.sh <IP> <MAX_PORT>" && exit 1

PORT="$2"

for i in $(seq 1 $PORT) ; do
  IP="$1"
  (echo  > /dev/tcp/$IP/$i) > /dev/null 2>&1 && echo "Port $i is open"
done
echo 'Scan complete' && exit 0