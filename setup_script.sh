
#Installing brave

echo 'Installing brave browser...please press enter '

echo ""

read -p 'Press enter to continue' enter

sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

# Installing Slack

echo  'Installing Slack '

echo ""

read -p 'Press enter to continue' enter

sudo apt install slack-desktop

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

#Adding clear alias

echo "alias c='clear'" >> ~/.bashrc

source ~/.bashrc

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

sudo snap install intellij-idea-community --classic

echo ""
echo ""
echo ""

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

# Installing WTC-LMS

echo  'Download lms from #02_lms_releases slack channel'

echo ""

read -p 'Press enter when the download is done' enter

echo ""

mkdir -p ~/bin

mv ~/Downloads/wtc-lms ~/bin

chmod +x ~/bin/wtc-lms

echo "export PATH=$PATH:~/bin" >> ~/.bashrc

source ~/.bashrc

echo  "Here are answers to the following questions\n "

read -p 'Press enter to continue' enter

echo ""

echo "Repo directory: '~/problems'"
echo "Navigator URL: 'https://navigator.wethinkcode.co.za'"
echo "Username: Your WTC_ student email address, e.g. 'jdoe@student.wethinkcode.co.za'"
echo "Review manager URL: 'https://review-manager.wethinkcode.co.za'"
echo "Keycloak URL: 'https://keycloak.wethinkcode.co.za'"

echo ""

wtc-lms -V

echo ""
echo ""
echo ""

# Installing tweaks

echo  'Installing Tweaks\n '

echo ""

read -p 'Press enter to continue' enter

echo ""

# Setup git globals

echo 'Setup git globals'

echo ''

read -p 'Please enter your username: ' gitGlobalUsername
read -p 'Please enter yout email: ' gitGlobalEmail

git config --global user.name $gitGlobalUsername
git config --global user.email $gitGlobalEmail

echo "Here is your git globals:"
echo ""

cat ~/.gitconfig

echo ""
echo ""
echo ""

# Updating before reboot

echo  "Updating "

read -p 'Press enter to continue' enter

sudo apt update

sudo apt upgrade

# Reboot

echo "Rebooting"

read -p 'Press enter to continue' enter






