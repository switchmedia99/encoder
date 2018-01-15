#!/bin/bash

atd
echo "{{PATH}}/start.sh > /dev/null 2>&1" | at 23:05
echo "{{PATH}}/stop.sh > /dev/null 2>&1" | at 10:00
echo "{{PATH}}/heartbeat.sh > /dev/null 2>&1" | at 05:00
