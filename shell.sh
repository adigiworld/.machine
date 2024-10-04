#!/bin/bash

sudo apt update
sudo apt upgrade -y
echo ""

echo "Installing CURL."
sudo apt install curl
echo ""

if [ $(which zsh) = "/usr/bin/zsh" ]; then
  echo "ZSH already installed."
  echo ""
else
  echo "Installing ZSH."
  sudo apt install zsh
  chsh -s /usr/bin/zsh
  echo "ZSH installed successfully."
  echo ""
fi

ohmyzsh="$HOME/.oh-my-zsh"
if [ -d "$ohmyzsh" ]; then
  echo "OH-MY-ZSH already installed."
  echo ""
else
  echo "Installing OH-MY-ZSH."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "OH-MY-ZSH installed successfully."
  echo ""
fi

echo "Installing autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "Set plugins=(zsh-autosuggestions) in ~/.zshrc"

echo "Prerequisites: Start to install MesloLGS Fonts"
echo "Installing powerlevel10k theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc"

exit
