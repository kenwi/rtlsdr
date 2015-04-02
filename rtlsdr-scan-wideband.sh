#!/bin/sh

DEVICE_ID=0
START=30M
STOP=1750M
RESOLUTION=500k
GAIN=40

rtl_power -d $DEVICE_ID -f $START:$STOP:$RESOLUTION -g $GAIN ~/rtlsdr/current/data/node-0.csv
