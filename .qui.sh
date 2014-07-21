#!/bin/sh
#simple BASH program to run nohup in background

nohup $1 $2 $3 >/tmp/nohup.out$$ 2>&1 &

