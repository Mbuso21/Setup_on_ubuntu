#!/bin/bash

# Setup SSH

echo "Setting up SSH"

echo ""

read -p "Please enter your GitLab or GitHub email: " gitEmail

ssh-keygen -t ed25519 -C $gitEmail

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
