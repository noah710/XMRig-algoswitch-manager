#!/bin/bash

sudo sysctl -w vm.nr_hugepages=1280
sudo wrmsr -a 0x1a4 0xf
