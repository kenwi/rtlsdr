# rtlsdr

Files from my work with rtl-sdr. Adding nodes and functionality as I go.

# Requirements
* http://kmkeen.com/rtl-power and whatever dependencies.
* http://kmkeen.com/tmp/heatmap.py.txt
* A rtl-sdr dongle. Go buy one. 

# Crontab
I've got a directory named `rtlsdr` in my home directory.

	$SDR=rtlsdr
	* * * * * $HOME/$SDR/heatmap.py $HOME/$SDR/current/data/node-0.csv /$HOME/$SDR/current/node-0.png

