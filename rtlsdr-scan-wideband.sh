#!/bin/sh

GAIN=50
INTERVAL=10

sudo killall -9 rtl_power

# Device with antenna
DEVICE_ID=0
START=30M
STOP=845M
RESOLUTION=10k
DESTINATION=/mnt/hv01/rtlsdr/current/data/node-$DEVICE_ID.csv
echo "Saving from device:$DECIVE_ID to $DESTINATION"
sudo rtl_power -i $INTERVAL -d $DEVICE_ID -f $START:$STOP:$RESOLUTION -g $GAIN $DESTINATION &

sleep 2

# Device 1
DEVICE_ID=1
START=845M
STOP=1750M
RESOLUTION=10k
DESTINATION=/mnt/hv01/rtlsdr/current/data/node-$DEVICE_ID.csv
echo "Saving from device:$DECIVE_ID to $DESTINATION"
sudo rtl_power -i $INTERVAL -d $DEVICE_ID -f $START:$STOP:$RESOLUTION -g $GAIN $DESTINATION &

