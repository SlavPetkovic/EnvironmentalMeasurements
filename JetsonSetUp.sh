#!/bin/bash
# --------------------------------------------------------------
# Setting up JetsonNano for Environmental Measurements project
# --------------------------------------------------------------
# Perform update and upgrade of the system
echo "---------------------------------------------------------"
echo "--------------Initial System Update and Upgrade----------"
echo "---------------------------------------------------------"
echo " "
sudo apt-get update && sudo apt-get -y upgrade
sudo apt install git dkms
sleep 2

# --------------------------------------------------------------
# Install Wifi card tplink 1300
echo "---------------------------------------------------------"
echo "---------------Installing WiFi drivers-------------------"
echo "---------------------------------------------------------"
echo " "
git clone -b v5.6.4.2 https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au
sudo make dkms_install
cd
sleep 2

# --------------------------------------------------------------
# Installing initial python packages
echo "---------------------------------------------------------"
echo "---------------Installing global python packages---------"
echo "---------------------------------------------------------"
echo " "
# Install pip3
sudo apt-get install python3-pip -y
# Install virtual environment library
sudo apt install -y python3-venv
# Install python linter
pip3 install pylint
echo " "
sleep 2
# --------------------------------------------------------------
# Install Visual Studio Code
echo "---------------------------------------------------------"
echo "---------------Installing Visual Studio Code-------------"
echo "---------------------------------------------------------"
echo " "
#VERSION=latest
#wget -N -O vscode-linux-deb.arm64.deb https://update.code.visualstudio.com/$VERSION/linux-deb-arm64/stable
#sudo apt install ./vscode-linux-deb.arm64.deb
#code --install-extension ms-python.python --force
sleep 2
echo " "
# --------------------------------------------------------------
# Cloning Environment Measurements project
echo "---------------------------------------------------------"
echo "---------------Setting Up The Testing Project------------"
echo "---------------------------------------------------------"
echo " "
sleep 2
mkdir Projects
cd Projects
git clone https://github.com/SlavPetkovic/Testing.git
cd Testing
echo " "
echo "--------------------------------------------------------"
echo "---------------Setting up virtual env-------------------"
echo "--------------------------------------------------------"
echo " "
sleep 2
python3 -m venv jetson
source jetson/bin/activate
curver=$(pip3 -V)
echo "$curver"
sleep 2
echo " "
echo "--------------------------------------------------------"
echo "---------------Installing Python Packages---------------"
echo "--------------------------------------------------------"
echo " "
# pip3 install -r requirements.txt






# --------------------------------------------------------------
# CopyRight 2022 Slav Petkovic
# MIT License


