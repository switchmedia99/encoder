#!/bin/bash
PID=$(cat ./pid)
endpoint="http://35.197.98.74/log?host=$(hostname)"

if [ -d "/proc/$PID" ]; then
    status="&status=alive" 
    curl $endpoint$status
fi
