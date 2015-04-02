#!/bin/sh
SERVER=192.168.0.5

rsync -avz $USER@$SERVER:$HOME/rtlsdr/current/data $HOME/rtlsdr/current/data
