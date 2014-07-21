#!/bin/sh
#bash program to open hammer server

nohup java -jar ~/briss/briss-0.9/briss-0.9.jar $1 >/tmp/nohup.out$$ 2>&1 &
