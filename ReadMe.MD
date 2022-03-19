# JetsonNano Environmental Measurements


### JetsonNano Set Up
1. Download SD Formater
2. Etcher
3. JetsonNano Latest Package
4. Go through SetUp with your preferences

sudo apt-get update
sudo apt-get upgrade
sudo apt install git dkms

###  Wifi Install

git clone -b v5.6.4.2 https://github.com/aircrack-ng/rtl8812au.git cd rtl8812au
sudo make dkms_install
reboot
iwconfig wlan0

### Setting Up VNC
https://developer.nvidia.com/embedded/learn/tutorials/vnc-setup

### Git Download

$ git clone <Project A>  # Cloning project repository
$ cd <Project A> # Enter to project directory
$ python3 -m venv my_venv # If not created, creating virtualenv
$ source ./my_venv/bin/activate # Activating virtualenv
(my_venv)$ pip3 install -r ./requirements.txt # Installing dependencies
(my_venv)$ deactivate # When you want to leave virtual environment


###
Project SetUp





###
Azure SetUp





###
PowerBI Report

### TO DO
1. Update JetsonSetUp.sh to run upgrade of python to 3.9
2. Set python 3.9 to be primary: https://github.com/SlavPetkovic/EnvironmentalMeasurements.git
3. Adjust JetsonSetUp.sh to run the test
4. Adjust etl module:
   1. dataimport functiont to have selection for local db or azure
5. Adjust main.py to call for ether local or Azure
6. Write Up for ReadMe.MD file



### MIT License:
Copyright (c) 2022 Slavoljub Petkovic

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.