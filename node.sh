#!/bin/bash

# Install NVM 
NVM="$HOME/.nvm"
if [ -d "$NVM" ]; then
	echo -e "\e[1;33mNVM is alrady installed.\e[0m"
	echo ""
else
	echo -e "\e[1;35mInstalling NVM.\e[0m"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
	echo -e "\e[1;32mNVM installed successfully.\e[0m"
	echo " "
	echo -e "\e[1;37;41m                    \e[0m"
	echo -e "\e[1;37;41m Restart the Shell. \e[0m"
	echo -e "\e[1;37;41m                    \e[0m"
	exit
fi

# To Use NVM in This Script
. ~/.nvm/nvm.sh

# Install NODE JS LTS
NODE="$HOME/.nvm/versions/node/v20.18.0/bin/node"
if [ -d "$NODE" ]; then
	echo -e "\e[1;33mNODE is alrady installed.\e[0m"
	echo ""
else
	echo -e "\e[1;35mInstalling NODE.\e[0m"
	nvm install 20
	echo ""
	echo -e "\e[1;32mNODE installed successfully.\e[0m"
	echo " "
	echo -e "\e[1;35mInstalling NeoVim by npm globally.\e[0m"
	npm install -g neovim 
	echo ""
	echo -n -e "\e[1;33mThe NVM Version is: \e[0m" && nvm --version
	echo -n -e "\e[1;33mThe NODE Version is: \e[0m" && node --version
	echo -n -e "\e[1;33mThe NPM Version is: \e[0m" && npm --version
	echo ""
fi



