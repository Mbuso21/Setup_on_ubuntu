#!/bin/bash

# Installing git

sudo ap install git

#Installing brave

echo 'Installing brave browser...please press enter '

echo ""


sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

echo ""

# Install Teams

wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.16851_amd64.deb

sudo dpkg -i teams_1.3.00.16851_amd64.deb

# Installing Slack

echo  'Installing Slack '

echo ""

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb

sudo apt install ./slack-desktop-*.deb

echo ""

# Installing discord

echo  'Installing Discord\n'

echo ""

read -p 'Press enter to continue' enter

echo ""

sudo apt install gdebi-core wget

wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"

sudo gdebi ~/discord.deb

echo ""
echo ""
echo ""


# Installing snapd

echo  "installing snapd for intellij "

echo ""

read -p 'Press enter to continue' enter

echo ""

sudo apt install snapd

echo ""
echo ""
echo ""

# Installing intellij

echo  "installing intellij using snap..... this will take long as its a 500mb download"

echo ""

read -p 'Press enter to continue' enter

echo ""

sudo snap install intellij-idea-ultimate --classic

echo ""
echo ""
echo ""

# Installing maven

echo "Installing maven"

echo ""

sudo apt install maven

echo ""

# Install gradle

sudo apt install gradle

# Installing MariaDB

echo  "Installing mariaDB\n"

echo ""

read -p 'Press enter to continue' enter

echo ""

sudo apt install mariadb-client-core-10.5

sudo apt install mariadb-server-core-10.5

echo ""
echo ""
echo ""

# Installing tweaks

echo  'Installing Tweaks\n '

echo ""

read -p 'Press enter to continue:' enter

echo ""

sudo apt install gnome-tweak-tool
sudo add-apt-repository universe

echo ""

# Installing xclip

echo "Installing xclip"

echo ""

sudo apt install xclip

echo ""

# Setup git globals

echo 'Setup git globals'

echo ''

read -p 'Please enter your username: ' gitGlobalUsername
read -p 'Please enter yout email: ' gitGlobalEmail

git config --global user.name $gitGlobalUsername
git config --global user.email $gitGlobalEmail

echo "Here are your git globals:"
echo ""

cat ~/.gitconfig

echo ""
echo ""
echo ""

# Setup SSH

echo "Setting up SSH"

echo ""


ssh-keygen -t ed25519 -C $gitGlobalEmail

echo ""

xclip -sel clip < ~/.ssh/id_ed25519.pub

echo "Please open https://gitlab.wethinkco.de on your browser"

echo ""

echo "Gitlab will open via your browser"
echo "Login to it using your WTC gmail credentials"

echo ""

echo ""
echo "Please paste on the ADD SSH in your gitlab"
echo ""
echo ""


echo ""

read -p "Press enter once you've Added your SSH KEY" key

ssh -T git@gitlab.wethinkco.de

echo ""

echo "If there is a problem, you will have to do the process manually"

echo ""

read -p "Press enter to proceed" enter

echo ""

# Generate a GPG KEY

echo "Generating a GPG KEY"

echo ""

echo "You can follow the steps needed by opening https://gitlab.wethinkco.de/help/user/project/repository/gpg_signed_commits/index.md in your browser"

echo ""

echo "Are you ready to proceed?"

echo ""

read -p "Press ENTER to proceed" enter

gpg --full-gen-key

echo ""

gpg --list-secret-keys --keyid-format LONG $gitGlobalEmail | grep sec

echo ""

read -p "Please copy your sec and paste it here: " sec

echo ""

gpg --armor --export $sec

echo ""

git config --global user.signingkey $sec

read -p "Press Enter when done" enter

git config --global commit.gpgsign true

echo ""

# Updating before reboot

echo  "Updating "

read -p 'Press enter to continue' enter

sudo apt update

sudo apt upgrade

echo ""
echo ""

# Reboot

echo "Rebooting"

sleep 5

echo ""

reboot






