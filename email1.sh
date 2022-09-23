#!/bin/bash
perc=`df -h . | awk -F " " 'NR==2{print $5}' | sed 's/%/ /g'`
if [ $perc -ge 18 ]; then
        echo "/dev/root drive size reached maximum thershold value and current usage is $perc percent" | mail -s 'disk usage' likithbs703@gmail.com
fi
