#!/bin/bash

# Setup flutter

# git clone the flutter github repo

cd

git clone https://github.com/flutter/flutter.git -b stable

# Setup the path

echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.bashrc


export PATH="$PATH:$HOME/flutter/bin"

flutter --version

flutter doctor

#