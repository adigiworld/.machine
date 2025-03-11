#!/usr/bin/env bash

echo -e "\e[1;35mUpdating System.\e[0m"
sudo apt update
echo ""
echo -e "\e[1;32mSystem Updated Successfully.\e[0m"
echo ""

echo -e "\e[1;35mUpgrading System.\e[0m"
sudo apt upgrade -y
echo ""
echo -e "\e[1;32mSystem Upgraded Successful.\e[0m"
echo ""

mkdir ~/.config 

source $(pwd)/shell.sh
source $(pwd)/utile.sh
source $(pwd)/dotfile.sh
source $(pwd)/server.sh
source $(pwd)/lang.sh
source $(pwd)/node.sh
source $(pwd)/editor.sh
source $(pwd)/git.sh

echo -e "\e[32m|￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣|\e[0m"
echo -e "\e[1;30;32m|   System Setup Complete Successful.     |\e[0m"
echo -e "\e[32m|__________________________________________|\e[0m"

