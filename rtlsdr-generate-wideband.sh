#/bin/sh

SERVER=hv01
SDR=rtlsdr
NODE_ID=0

sudo ~/$SDR/heatmap.py /mnt/$SERVER/$SDR/current/data/node-$NODE_ID.csv /mnt/$SERVER/$SDR/current/node-$NODE_ID.png
