#!/bin/bash
count=0
if  [ -z "$1" ]
then
    echo "Usage: $0 port"
    exit -1
fi
while true ; do
echo "wait client $count upload to be done"
nc -l $1 > /dev/null;
((count++))
done
wait
