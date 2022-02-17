#!/bin/sh
cat mylog.log | awk -F\| '{ var1=$1; var2=$2; var3=$3; print var1, var2, var3 }' | sort | uniq -c | sort -n | awk '{ print $1, $9 }' | grep 3 | awk '{ print $2 }'
