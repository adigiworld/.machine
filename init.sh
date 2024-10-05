#!/bin/bash

echo -e "\e[1;35mUpdating System.\e[0m"
sudo apt update
echo ""
echo -e "\e[1;32mSystem Updated Successfully.\e[0m"
echo ""

echo -e "\e[1;35mUpgrading System.\e[0m"
sudo apt upgrade -y
echo ""
echo -e "\e[1;32mSystem Upgraded Successfull.\e[0m"
echo ""

source $(pwd)/shell.sh
source $(pwd)/server.sh
source $(pwd)/lang.sh
source $(pwd)/node.sh
source $(pwd)/editor.sh
source $(pwd)/git.sh

echo -e "\e[42m                                        \e[0m"
echo -e "\e[1;30;42m   System Setup Complete Successfull.   \e[0m"
echo -e "\e[42m                                        \e[0m"
