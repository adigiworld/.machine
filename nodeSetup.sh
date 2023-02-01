#!/usr/bin/env bash

echo "CURL Installing..."
apt install curl
echo "CURL installed successfully."
echo ""

echo "NVM Installing..."
if [ nvm ]; then
	echo "NVM is alrady installed."
	echo ""
else
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	command -v nvm	
	echo "NVM installed successfully."
	echo " "
fi

echo "NODE Installing..."
if [ node ]; then
	echo "NODE is alrady installed."
	echo ""
else
	nvm install --lts
	echo "NODE installed successfully."
	echo " "
fi

echo nvm ls
echo node --version
echo npm --version

