#!/usr/bin/env bash

# Installing FZF,
FZF="$(which fzf)"
if [ -f "$FZF" ]; then
  echo -e "\e[1;33mFZF already installed."
  echo ""
else
  echo -e "\e[1;35mInstalling FZF"
  sudo apt install fzf
  echo ""
  echo -e "\e[1;32mFZF Installed Successfully."
  echo ""
fi

# Installing STOW,
STOW="$(which stow)"
if [ -f "$STOW" ]; then
  echo -e "\e[1;33mSTOW already installed."
  echo ""
else
  echo -e "\e[1;35mInstalling STOW"
  sudo apt install stow
  echo ""
  echo -e "\e[1;32mSTOW Installed Successfully."
  echo ""
fi

