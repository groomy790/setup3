#!/bin/bash

# update apt
sudo apt update

# install deps for sdkman
sudo apt install -y zip
sudo apt install -y unzip
sudo apt install -y curl

# install sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# install java (latest 24.ea.9-open)
sdk install java 24.ea.9-open

# install gradle (latest 8.9)
sdk install gradle 8.9
