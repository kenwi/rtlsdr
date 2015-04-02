#!/bin/sh

$device_id=0
$start=30M
$stop=1750M
$resolution=500k
$gain=40

rtl_power -d $device_id -f $start:$stop:$resolution -g $gain ~/current/data/node-0.csv
