#!/bin/bash
for i in {1..65535}; do (echo < /dev/tcp/10.10.10.10/$i) &>/dev/null && printf "\n[+] Open port: \t%d\n" "$i" || printf ""; done