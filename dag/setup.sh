#!/bin/bash
# file name: sleep.sh

if [ $1 ]
then
    TIMETOWAIT=$1
else
    TIMETOWAIT="6"
fi

echo "setting thins up: operation takes $TIMETOWAIT seconds"
/bin/sleep $TIMETOWAIT 
