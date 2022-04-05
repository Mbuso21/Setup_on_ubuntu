#!/bin/bash


# Generate a GPG KEY

echo "Generating a GPG KEY"

echo ""

read -p "Please enter your git email: " gitEmail

echo ""

echo "You can follow the steps needed by opening https://gitlab.wethinkco.de/help/user/project/repository/gpg_signed_commits/index.md in your browser"

echo ""

echo "Are you ready to proceed?"

echo ""

read -p "Press ENTER to proceed" enter

gpg --full-gen-key

echo ""

gpg --list-secret-keys --keyid-format LONG gitEmail | grep sec

echo ""

read -p "Please copy your sec and paste it here: " sec

echo ""

gpg --armor --export sec

echo ""

git config --global user.signingkey sec

read -p "Press Enter when done" enter

git config --global commit.gpgsign true

echo ""

