#!/bin/bash
mkfifo arx

nc -l 1234 < arx | bash pptls-red.sh > arx 

rm arx
