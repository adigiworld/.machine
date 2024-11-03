#!/usr/bin/env bash

# Installing CURL, cURL is a computer software project providing 
# a library and command-line tool (curl) for transferring data using 
# various network protocols. The name stands for "Client for URL"
CURL="$(which curl)"
if [ -f "$CURL" ]; then
  echo -e "\e[1;33mCURL already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling CURL.\e[0m"
  sudo apt install curl
  echo ""
  echo -e "\e[1;32mCURL Installed Successfully.\e[0m"
  echo ""
fi

# Installing ZSH Shell, ZSH, also called the Z shell, 
# is an extended version of the Bourne Shell (sh)
ZSH="$(which zsh)"
if [ -f "$ZSH" ]; then
  echo -e "\e[1;33mZSH already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling ZSH.\e[0m"
  sudo apt install zsh
  chsh -s "$(which zsh)"
  echo -e "\e[1;32mZSH installed successfully.\e[0m"
  echo ""
fi

# Installing OH-MY-ZSH, Oh My Zsh is an open source, 
# community-driven framework for managing your Zsh configuration12. 
# It comes bundled with helpful functions, plugins, and themes.
ohmyzsh="$HOME/.oh-my-zsh"
if [ -d "$ohmyzsh" ]; then
  echo -e "\e[1;33mOH-MY-ZSH already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling OH-MY-ZSH.\e[0m"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo -e "\e[1;32mOH-MY-ZSH installed successfully.\e[0m"
  echo ""
  echo "source ~/.zsh_profile" >> ~/.zshrc
  echo -e "\e[1;31mAdded source ~/.zsh_profile line in your ~/.zshrc file.\e[0m"
  echo ""
fi

# Installing ZSH-Autosuggestions,
autosuggestions="$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
if [ -d "$autosuggestions" ]; then
  echo -e "\e[1;33mAutosuggestions already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling autosuggestions\e[0m"
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  echo -e "\e[1;32mAutosuggestions installed successfully.\e[0m"
  echo ""
  sed -i 's/plugins=(git/plugins=(git zsh-autosuggestions/' ~/.zshrc
  # echo -e "\e[1;31mSet plugins=(zsh-autosuggestions) in ~/.zshrc\e[0m"
  # echo ""
  # echo -e "\e[1;37;41m                    \e[0m"
  # echo -e "\e[1;37;41m Restart the Shell. \e[0m"
  # echo -e "\e[1;37;41m                    \e[0m"
  # exit
fi

# Installing Powerlevel10k theme,
# powerlevel10k="$HOME/.oh-my-zsh/custom/themes/powerlevel10k"
# if [ -d "$powerlevel10k" ]; then
#   echo -e "\e[1;33mPowerlevel10k already installed.\e[0m"
#   echo ""
# else
#   echo -e "\e[1;35mInstalling powerlevel10k theme\e[0m"
#   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#   echo -e "\e[1;32mPowerlevel10k theme installed successfully.\e[0m"
#   echo ""
#   echo -e "\e[1;31mPrerequisites: To Start powerlevel10k theme install MesloLGS Fonts first.\e[0m"
#   echo "https://github.com/fontmgr/MesloLGSNF"
#   echo ""
#   sed -i 's/="robbyrussell"/="powerlevel10k/powerlevel10k"' ~/.zshrc
# fi


