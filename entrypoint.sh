#!/bin/sh

/root/start.sh > logs.txt&
tail -f /dev/null
