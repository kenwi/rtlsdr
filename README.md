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

# Usage

```~/rtlsdr $ ./rtlsdr-scan-wideband.sh 
Found 1 device(s):
  0:  Realtek, RTL2838UHIDIR, SN: 00000001

Using device 0: Generic RTL2832U OEM
Number of frequency hops: 615
Dongle bandwidth: 2796747Hz
Downsampling by: 1x
Cropping by: 0.00%
Total FFT bins: 4920
Logged FFT bins: 4920
FFT bin size: 349593.38Hz
Buffer size: 16384 bytes (2.93ms)
Reporting every 10 seconds
Found Rafael Micro R820T tuner
Tuner gain set to 49.60 dB.
Exact sample rate is: 2796747.255507 Hz```