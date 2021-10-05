
#Installing brave

echo -e 'Installing brave browser...please press enter\n '

read -p 'Press enter to continue' enter

sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

# Installing Slack

echo -e 'Installing Slack\n '

read -p 'Press enter to continue' enter

sudo apt install slack-desktop

# Installing discord

echo -e 'Installing Discord\n'

read -p 'Press enter to continue' enter

sudo apt install gdebi-core wget

wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"

sudo gdebi ~/discord.deb

#Adding clear alias

echo "alias c='clear'" >> ~/.bashrc

source ~/.bashrc

# Installing snapd

echo -e "installing snapd for intellij\n "

read -p 'Press enter to continue' enter

sudo apt install snapd

# Installing intellij

echo -e "installing intellij using snap..... this will take long as its a 500mb download\n"

read -p 'Press enter to continue' enter

sudo snap install intellij-idea-community --classic

# Installing MariaDB

echo -e "Installing mariaDB\n"

read -p 'Press enter to continue' enter

sudo apt install mariadb-client-core-10.5

sudo apt install mariadb-server-core-10.5

# Installing WTC-LMS

echo -e 'Download lms from #02_lms_releases slack channel\n'

read -p 'Press enter when the download is done' enter

mkdir -p ~/bin

mv ~/Downloads/wtc-lms ~/bin

chmod +x ~/bin/wtc-lms

echo "export PATH=$PATH:~/bin" >> ~/.bashrc

source ~/.bashrc

echo -e "Here are answers to the following questions\n "

read -p 'Press enter to continue' enter

echo ""

echo "Repo directory: '~/problems'"
echo "Navigator URL: 'https://navigator.wethinkcode.co.za'"
echo "Username: Your WTC_ student email address, e.g. 'jdoe@student.wethinkcode.co.za'"
echo "Review manager URL: 'https://review-manager.wethinkcode.co.za'"
echo "Keycloak URL: 'https://keycloak.wethinkcode.co.za'"

wtc-lms -V

# Installing tweaks

echo -e 'Installing Tweaks\n '

read -p 'Press enter to continue' enter

# Updating before reboot

echo -e "Updating\n "

read -p 'Press enter to continue' enter

sudo apt update

sudo apt upgrade

# Reboot

echo "Rebooting"

read -p 'Press enter to continue' enter






