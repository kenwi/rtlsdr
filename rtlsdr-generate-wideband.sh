#/bin/sh

MNT=/mnt
SERVER=hv01
SDR=rtlsdr

NODE_ID=0
SRC=$MNT/$SERVER/$SDR/current/data/node-$NODE_ID.csv
DST=$MNT/$SERVER/$SDR/current/node-$NODE_ID.bmp
echo "Reading data: $SRC"
echo "Writing file: $DST"
sh /home/kenwi/$SDR/tools/heatmap.py $SRC $DST &

NODE_ID=1
SRC=$MNT/$SERVER/$SDR/current/data/node-$NODE_ID.csv
DST=$MNT/$SERVER/$SDR/current/node-$NODE_ID.bmp
echo "Reading data: $SRC"
echo "Writing file: $DST"
sh /home/kenwi/$SDR/tools/heatmap.py $SRC $DST &

TIME=`date`
echo "$TIME: Started generating images" >> /var/log/rtlsdr-generate-wideband.log


