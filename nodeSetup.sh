#!/bin/bash

# Install NVM 
if [ -d "$NVM_DIR" ]; then
	echo "NVM is alrady installed."
	echo ""
else
	echo "Installing NVM."
	# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
	echo "NVM installed successfully."
	echo " "
fi

# Install NODE JS LTS
if [ $(which node) ]; then
	echo "NODE is alrady installed."
	echo ""
else
	echo "Installing NODE."
	nvm install --lts
	echo "NODE installed successfully."
	echo " "
fi

echo nvm ls
echo node --version
echo npm --version

