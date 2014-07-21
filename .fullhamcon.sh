#!/bin/sh
#bash program to open hammer server

nohup rdesktop -f -u dcj138 -p hammer$1.rcc.psu.edu >/tmp/nohup.out$$ 2>&1 &


