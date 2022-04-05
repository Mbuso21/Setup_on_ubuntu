#!/bin/bash

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
