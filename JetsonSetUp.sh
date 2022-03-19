#!/bin/bash

echo "      _ _____ _____ ____   ___  _   _    _   _    _    _   _  ___   ";
echo "     | | ____|_   _/ ___| / _ \| \ | |  | \ | |  / \  | \ | |/ _ \  ";
echo "  _  | |  _|   | | \___ \| | | |  \| |  |  \| | / _ \ |  \| | | | | ";
echo " | |_| | |___  | |  ___) | |_| | |\  |  | |\  |/ ___ \| |\  | |_| | ";
echo "  \___/|_____| |_| |____/ \___/|_| \_|  |_| \_/_/   \_\_| \_|\___/  ";
echo "                                                                    ";
sleep 2
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
# Choosing the version of VSCode for further development
VERSION=latest
# Downloading arm version of the package for JetsonNano
wget -N -O vscode-linux-deb.arm64.deb https://update.code.visualstudio.com/$VERSION/linux-deb-arm64/stable
# Installing the package
sudo apt install ./vscode-linux-deb.arm64.deb
# Installing python Extension in Visual Studio Code
code --install-extension ms-python.python --force
echo " "
sleep 2
# --------------------------------------------------------------
# Cloning Environment Measurements project
echo "---------------------------------------------------------"
echo "---------------Setting Up The Testing Project------------"
echo "---------------------------------------------------------"
echo " "
# Create Projects Directory
mkdir Projects
cd Projects
# Cloning the git Repository
git clone https://github.com/SlavPetkovic/Testing.git
cd Testing
echo " "
sleep 2

echo "--------------------------------------------------------"
echo "---------------Setting up virtual env-------------------"
echo "--------------------------------------------------------"
echo " "
# Setting up python virtual environment
python3 -m venv jetson
source jetson/bin/activate
curver=$(pip3 -V)
echo "$curver"
echo " "
sleep 2

echo "--------------------------------------------------------"
echo "---------------Installing Python Packages---------------"
echo "--------------------------------------------------------"
echo " "
# Installing all python libraries necessary for this project
pip3 install -r requirements.txt
echo " "
sleep 2



# --------------------------------------------------------------
# COPYRIGHT: Slav Petkovic
# Year: 2022

# Permission is hereby granted, free of charge, to any person obtaining a copy of this software
# and associated documentation files (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


