#!/bin/bash
#devname=$(lsblk -o NAME -n -d | head -1)
df -k |grep -v ^File |awk '{printf("%i",$3*100/$2);}'