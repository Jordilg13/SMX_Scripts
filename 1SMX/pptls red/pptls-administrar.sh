#!/bin/bash
mkfifo /tmp/arx

nc -l 1234 < /tmp/arx | bash pptls-red.sh > /tmp/arx 

rm /tmp/arx
