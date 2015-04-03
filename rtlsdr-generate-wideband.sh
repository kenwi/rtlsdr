#/bin/sh

MNT=/mnt
SERVER=hv01
SDR=rtlsdr

NODE_ID=0
SRC=$MNT/$SERVER/$SDR/current/data/node-$NODE_ID.csv
DST=$MNT/$SERVER/$SDR/current/node-$NODE_ID.bmp
echo "Reading data: $SRC"
echo "Writing file: $DST"
sudo ~/$SDR/tools/heatmap.py $SRC $DST
echo ""

NODE_ID=1
SRC=$MNT/$SERVER/$SDR/current/data/node-$NODE_ID.csv
DST=$MNT/$SERVER/$SDR/current/node-$NODE_ID.bmp
echo "Reading data: $SRC"
echo "Writing file: $DST"
sudo ~/$SDR/tools/heatmap.py $SRC $DST
echo ""
