#!/bin/bash

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
start "$1"
