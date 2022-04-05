#!/bin/bash

# Installing WTC-LMS

echo  'Download lms from #02_lms_releases slack channel'

echo ""

read -p 'Press enter when the download is done' enter

echo ""

mkdir -p ~/bin

mv ~/Downloads/wtc-lms ~/bin

chmod +x ~/bin/wtc-lms

echo "export PATH=$PATH:~/bin" >> ~/.bashrc

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

echo "alias wl='wtc-lms login'" >> ~/.bashrc

echo "You can use wl to login to your lms"