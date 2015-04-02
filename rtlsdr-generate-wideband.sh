#/bin/sh

MNT=/mnt
SERVER=hv01
SDR=rtlsdr
NODE_ID=0

# Home
SRC=$MNT/$SERVER/$SDR/current/data/node-$NODE_ID.csv
DST=$MNT/$SERVER/$SDR/current/node-$NODE_ID.png
echo "Reading data: $SRC"
echo "Writing file: $DST"
sudo ~/$SDR/tools/heatmap.py $SRC $DST

NODE_ID=3
SRC=$MNT/$SERVER/$SDR/current/data/node-$NODE_ID.csv
DST=$MNT/$SERVER/$SDR/current/node-$NODE_ID.png
echo "Reading data: $SRC"
echo "Writing file: $DST"
sudo ~/$SDR/tools/heatmap.py $SRC $DST


