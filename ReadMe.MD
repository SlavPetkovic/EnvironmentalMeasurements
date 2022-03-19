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