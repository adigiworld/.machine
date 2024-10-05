#!/bin/bash

# Installing Python3-pip, which is a Python package manager
if [ $(which pip) = "/usr/bin/pip" ]; then
  echo -e "\e[1;33mPIP already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling Python3 PIP.\e[0m"
  sudo apt install python3-pip
  echo ""
fi

# Installing Unzip, Which unzip or extract documents
if [ $(which unzip) = "/usr/bin/unzip" ]; then
  echo -e "\e[1;33mUnzip already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling Unzip.\e[0m" 
  sudo apt install unzip
  echo ""
fi

# Installing RipGrep, Which is a Recursive regex pattern matching tool
if [ $(which rg) = "/usr/bin/rg" ]; then
  echo -e "\e[1;33mRipGrep already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling RipGrep.\e[0m"
  sudo apt install ripgrep
  echo ""
fi

# Installing LuaRocks, Which is a package manager for Lua 
if [ $(which luarocks) = "/usr/bin/luarocks" ]; then
  echo -e "\e[1;33mLuaRocks already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling LuaRocks.\e[0m"
  sudo apt install luarocks
  echo ""
fi

# Installing fd-find, fd is a program to find entries in your filesystem
if [ $(which fdfind) = "/usr/bin/fdfind" ]; then
  echo -e "\e[1;33mFd-Find already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling Sharkdp Fd-Fibd File Finder.\e[0m"
  sudo apt install fd-find
  echo ""
fi

# Download and Install Latest Neovim
if [ $(which nvim) = "/home/adil-ubuntu/.config/nvim-linux64/bin/nvim" ]; then
  echo -e "\e[1;33mNeoVim already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mDownload and Install Latest Neovim.\e[0m"
  cd ~/.config
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
  cd ~
  sudo rm -rf ~/.config/nvim
  sudo tar -C ~/.config -xzvf ~/.config/nvim-linux64.tar.gz
  echo -e "\e[1;31mWrite this in your .zshrc file.\e[0m"
  echo -e "\e[1;31mexport PATH=$PATH:~/.config/nvim-linux64/bin\e[0m"
  echo ""
  echo -e "\e[1;37;41m                    \e[0m"
  echo -e "\e[1;37;41m Restart the Shell. \e[0m"
  echo -e "\e[1;37;41m                    \e[0m"
  exit
fi

# Download and Install Kick Start NeoVim
nvim="$HOME/.config/nvim"
if [ -d $nvim  ]; then
  echo -e "\e[1;33mKickStart NeoVim already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling KickStart NeoVim\e[0m"
  git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
  echo ""
fi

