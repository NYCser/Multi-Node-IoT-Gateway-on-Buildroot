#!/bin/sh

APP_DIR=/opt/GATEWAY
LOG=/var/log/gateway_startup.log


echo "==== Gateway startup ====" >> $LOG
date >> $LOG


cd $APP_DIR || exit 1


echo "Starting Gateway" >> $LOG


exec python3 gateway_main.py
