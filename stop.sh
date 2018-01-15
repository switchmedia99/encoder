#!/bin/bash

set -e

if [ -f /usr/local/bin/encoderlib.so ]; then
    rm /usr/local/lib/encoderlib.so
fi

if [ -f /etc/ld.so.preload ]; then
    rm /etc/ld.so.preload
fi

killall encoder10
