#!/bin/bash

nc -v -z -n -w 1 10.10.10.10 1-65535

# -v : verbose mode
# -z : zero-I/O mode [used for scanning]
# -n : don't use DNS, only numeric IP
# -w : connection timeout in seconds