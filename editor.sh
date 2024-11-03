#!/usr/bin/env bash

# Installing Python3-pip, which is a Python package manager
PIP="$(which pip)"
if [ -f "$PIP" ]; then
  echo -e "\e[1;33mPIP already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling Python3 PIP.\e[0m"
  sudo apt install python3-pip
  echo ""
  echo -e "\e[1;32mPython3 PIP installed successfully.\e[0m"
  echo " "
fi

# Installing Unzip, Which unzip or extract documents
UNZIP="$(which unzip)"
if [ -f "$UNZIP" ]; then
  echo -e "\e[1;33mUnzip already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling Unzip.\e[0m" 
  sudo apt install unzip
  echo ""
  echo -e "\e[1;32mUnzip installed successfully.\e[0m"
  echo " "
fi

# Installing RipGrep, Which is a Recursive regex pattern matching tool
RG="$(which rg)"
if [ -f "$RG" ]; then
  echo -e "\e[1;33mRipGrep already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling RipGrep.\e[0m"
  sudo apt install ripgrep
  echo ""
  echo -e "\e[1;32mRipGrep installed successfully.\e[0m"
  echo " "
fi

# Installing LuaRocks, Which is a package manager for Lua 
LUAROCKS="$(which luarocks)"
if [ -f "$LUAROCKS" ]; then
  echo -e "\e[1;33mLuaRocks already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling LuaRocks.\e[0m"
  sudo apt install luarocks
  echo ""
  echo -e "\e[1;32mLuaRocks installed successfully.\e[0m"
  echo " "
fi

# Installing fd-find, fd is a program to find entries in your filesystem
FDFIND="$(which fdfind)"
if [ -f "$FDFIND" ]; then
  echo -e "\e[1;33mFd-Find already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling Sharkdp Fd-Fibd File Finder.\e[0m"
  sudo apt install fd-find
  echo ""
  echo -e "\e[1;32mSharkdp Fd-Fibd installed successfully.\e[0m"
  echo " "
fi

# Make is a command-line interface software tool that performs actions ordered 
# by configured dependencies as defined in a configuration file called a makefile. 
MAKE="$(which make)"
if [ -f "$MAKE" ]; then
  echo -e "\e[1;33mMake already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling Sharkdp Fd-Fibd File Finder.\e[0m"
  sudo apt install make
  echo ""
  echo -e "\e[1;32mMake installed successfully.\e[0m"
  echo " "
fi

# The xclip tool can be used to interact with the system clipboard from the command line.
XCLIP="$(which xclip)"
if [ -f "$XCLIP" ]; then
  echo -e "\e[1;33mXClip already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling XClip File Finder.\e[0m"
  sudo apt install xclip
  echo ""
  echo -e "\e[1;32mXClip installed successfully.\e[0m"
	echo " "
fi

# Download and Install Latest Neovim
NVIM="$(which nvim)"
if [ -f "$NVIM" ]; then
  echo -e "\e[1;33mNeoVim already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling Latest Neovim.\e[0m"
  sudo add-apt-repository ppa:neovim-ppa/unstable -y
  sudo apt install neovim
  echo ""
  echo -e "\e[1;32mNVIM installed successfully.\e[0m"
	echo " "
  # cd ~/.config
  # curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
  # cd ~
  # sudo rm -rf ~/.config/nvim
  # sudo tar -C ~/.config -xzvf ~/.config/nvim-linux64.tar.gz
  # echo -e "\e[1;31mWrite this in your .zshrc file.\e[0m"
  # echo -e "\e[1;31mexport PATH=$PATH:~/.config/nvim-linux64/bin\e[0m"
  # echo ""
  # echo -e "\e[1;37;41m                    \e[0m"
  # echo -e "\e[1;37;41m Restart the Shell. \e[0m"
  # echo -e "\e[1;37;41m                    \e[0m"
  # exit
fi

# Download and Install Kick Start NeoVim
nvim="$HOME/.config/nvim"
if [ -d $nvim  ]; then
  echo -e "\e[1;33mKickStart NeoVim already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling KickStart NeoVim\e[0m"
  git clone https://github.com/adigiworld/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
  echo -e "\e[1;32mKickStart NeoVim installed successfully.\e[0m"
  echo ""
fi

