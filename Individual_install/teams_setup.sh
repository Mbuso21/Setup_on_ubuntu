#!/bin/bash

# Install Teams

cd

wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.26453_amd64.deb

sudo dpkg -i teams_1.4.00.26453_amd64.deb 

rm *.deb