#!/bin/sh

# Check if proxies.txt exists
if [ ! -f /proxies.txt ]; then
    echo "/proxies.txt not found"
    exit 1
fi

cat /proxies.txt | soxy