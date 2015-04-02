#!/bin/sh

# Press [CTRL][ALT][T] to open a command window and run the following command to install the libraries:
sudo apt-get install build-essential python python-wxgtk2.8 python-matplotlib python-numpy python-imaging pyserial

# To install the last two libraries you will need some code building tools, so again at the prompt type:
sudo apt-get install git cmake

# Now download, build and install the rtlsdr library:
mkdir build
cd build
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr
mkdir build
cd build
cmake ..
make
sudo make install
cd ..\..

# For the pyrtlsdr library:
git clone git://github.com/roger-/pyrtlsdr.git
cd pyrtlsdr
sudo python setup.py install
cd ..\..

# Now you should be able to run the program, if you get Python not found errors try the following:
export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/dist-packages

# This can also be added to the ~/.bashrc script if you want to keep the change.
