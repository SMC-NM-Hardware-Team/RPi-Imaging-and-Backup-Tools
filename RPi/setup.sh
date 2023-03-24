#!/bin/bash
# chmod u+x deploy.sh


echo "Starting setup..."
# config
echo "Configuring RPi..."
cp ./System_Files/Boot/config.txt /boot
cp ./System_Files/Taskbar_Panels/config /home/pi/.config/lxpanel/LXDE-pi
lxpanelctl restart
# sudo raspi-config nonint do_update
echo "Choose an RPi hostname: "
read hostname
sudo raspi-config nonint do_hostname $hostname
sudo raspi-config nonint do_blanking 1
sudo raspi-config nonint do_ssh 0
sudo raspi-config nonint do_vnc 0
sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_serial 0
sudo raspi-config nonint do_memory_split 64
sudo raspi-config nonint do_change_locale UTF-8
sudo raspi-config nonint do_change_timezone America/Los_Angeles
sudo raspi-config nonint do_configure_keyboard us
sudo raspi-config nonint do_wifi_country US
sudo raspi-config nonint do_expand_rootfs
echo "Configuration complete."

cd ~
# install updates
echo "Searching for system updates..."
sudo apt update
echo "Updates downloaded."
echo "Installing system updates..."
y | sudo apt upgrade
echo "System is up to date."

echo "Updating Python 3 and pip3..."
sudo apt install python3-pip
echo "Updating Python 3 setuptools"
sudo pip3 install --upgrade setuptools

echo "Installing Adafruit python shell..."
sudo pip3 install --upgrade adafruit-python-shell

echo "Installing Adafruit blinka"
wget https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/raspi-blinka.py
pip3 install --upgrade adafruit_blinka

echo "Installing CircuitPython Sensor Libraries..."
echo "Installing as7341 color sensor library"
sudo pip3 install adafruit-circuitpython-as7341
echo "Installing lsm6ds gyro/accel library"
sudo pip3 install adafruit-circuitpython-lsm6ds
echo "Activating additional SPI ports..."
dtoverlay=spi1-3cs


echo "Installing grove drivers"
git clone https://github.com/Seeed-Studio/grove.py
cd grove.py
sudo pip3 install .
cd ~

echo "Installing BrickPi3 drivers"
curl -kL dexterindustries.com/update_brickpi3 | bash

echo "Cloning project repositories..."
cd Desktop
mkdir Repositories
cd Repositories
echo "Cloning SMCMinds/SMC_Nasa_Minds_2023.git"
git clone https://github.com/SMCMinds/SMC_Nasa_Minds_2023.git
echo "Cloning SMC-NM-Hardware-Team/SMC-NM-23-Hardware.git"
git clone https://github.com/SMC-NM-Hardware-Team/SMC-NM-23-Hardware.git
cd ~
echo "Setup is complete."
$SHELL
