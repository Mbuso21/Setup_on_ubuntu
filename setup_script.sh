#!/bin/bash

# Install neofetch

sudo apt install -y neofetch

neofetch

sleep 5

# Installing git

sudo apt -y install git

#Installing brave

echo 'Installing brave browser...please press enter '

echo ""


sudo apt install -y apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt -y update

sudo apt install -y brave-browser

echo ""

# Install Teams

wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.7556_amd64.deb 

sudo dpkg -i teams_1.4.00.7556_amd64.deb 

rm *.deb

# Installing Slack

echo  'Installing Slack '

echo ""

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb

sudo apt -y install ./slack-desktop-*.deb

# Install MySQL

sudo apt install -y mysql-server

sudo service mysql start

sudo mysql_secure_installation

sudo mysql -u root


# Installing snapd

echo  "installing snapd for intellij "

echo ""

echo ""

sudo apt install -y snapd

echo ""
echo ""
echo ""

# Installing intellij from snap

echo  "installing intellij using snap..... this will take long as its a 500mb download"

echo ""

echo ""

sudo snap install -y intellij-idea-ultimate --classic

echo ""
echo ""
echo ""

# Installing postman from snap

sudo snap install -y postman

# Installing maven

echo "Installing maven"

echo ""

sudo apt install -y maven

echo ""

# Install gradle

sudo apt install -y gradle

# Installing tweaks

echo  'Installing Tweaks\n '

echo ""

echo ""

sudo apt  install -y gnome-tweak-tool
sudo add-apt-repository universe

echo ""

# Updating before reboot

echo  "Updating "

sudo apt -y update

sudo apt -y upgrade

echo ""
echo ""

# Remove all .deb packages before reboot

rm *.deb

# Reboot

echo "Rebooting"

sleep 5

echo ""

sudo reboot