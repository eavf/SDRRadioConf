sudo snap refresh
snap-store --quit && sudo snap refresh snap-store

cd /home/vovo

mkdir workplace

cd /home/vovo/workplace

# Install HackRF form source

git clone https://github.com/mossmann/hackrf.git

# Install prerequisities
sudo apt-get install build-essential cmake libusb-1.0-0-dev pkg-config libfftw3-dev

# Install HackRF

cd hackrf/host
mkdir build
cd build
cmake ..
make
sudo make install
sudo ldconfig

# Eventually update firmware

# Clean CMake temporary files/dirs:
cd host/build
rm -rf *


cd /home/vovo/workplace


# GR Osmo
# Podla GNU Radio, nemam instalovat osmo, ale pouzit soapy.....
git clone https://git.osmocom.org/sdr/gr-osmosdr.git
cd gr-osmosdr
mkdir build
cd build/
cmake ../


# Installing GNU Radio Compagnion
sudo apt install python3-pip
pip install packaging


sudo add-apt-repository ppa:gnuradio/gnuradio-releases
sudo apt-get update
sudo apt install gnuradio


