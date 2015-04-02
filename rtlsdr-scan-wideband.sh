#!/bin/sh

DEVICE_ID=0

START=30M
STOP=1750M

RESOLUTION=500k
GAIN=50
INTERVAL=10

DESTINATION=/mnt/hv01/rtlsdr/current/data/node-0.csv

echo "Saving to $DESTINATION"
echo ""

sudo rtl_power -i $INTERVAL -d $DEVICE_ID -f $START:$STOP:$RESOLUTION -g $GAIN $DESTINATION
