#!/bin/bash

# Params:
# @1 config file to use str ex. thinkpad.json
# @2 worker id str ex. thinkpad-cpu
# ex. ./run.sh thinkpad.json thinkpad-cpu  

./build.sh
docker run -it -e CONFIG=/configs/${1} -e WORKER=${2} xmrig-algoswitch bash
