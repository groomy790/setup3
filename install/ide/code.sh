#!/bin/bash

# update apt
sudo apt update

# install deps for code
sudo apt install -y curl

# install code
DEBLINK="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
DEBNAME="code.deb"

curl -o $DEBNAME $DEBLINK
sudo apt install -y $DEBNAME

# remove trash file
rm $DEBNAME
