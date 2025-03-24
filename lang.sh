#!/usr/bin/env bash

# Installing GCC, Which is a GNU Compiler Collection
GCC="$(which gcc)"
if [ "$GCC" = "/usr/bin/gcc" ]; then
  echo -e "\e[1;33mGCC already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling GCC.\e[0m"
  sudo apt install gcc
  echo ""
  echo -e "\e[1;32mGCC installed successfully.\e[0m"
  echo ""
fi

# Installing LUA, Which is a Lightweight, 
# high-level, multi-paradigm programming language.
if [ -f $(which lua) ]; then
  echo -e "\e[1;33mLUA already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling LUA.\e[0m"
  sudo apt install lua5.4
  echo ""
fi

# Installing RUST, Which is a Multi-paradigm, general-purpose programming language
RUSTUP="$(which rustup)"
if [ -f "$RUSTUP" ]; then
  echo -e "\e[1;33mRust already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling Rust\e[0m"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  echo ""
  # echo -e "\e[1;31mWrite this in your .zshrc file.\e[0m"
  # echo -e "\e[1;31mexport PATH=$PATH:~/.cargo/bin\e[0m"
  # echo ""
  # echo -e "\e[1;37;41m                    \e[0m"
  # echo -e "\e[1;37;41m Restart the Shell. \e[0m"
  # echo -e "\e[1;37;41m                    \e[0m"
  # exit
fi

# Installing GO, Which is a Multi-paradigm, general-purpose programming language
GO="$(which go)"
if [ -f "$GO" ]; then
  echo -e "\e[1;33mGO already installed.\e[0m"
  echo ""
else
  echo -e "\e[1;35mInstalling GO.\e[0m"
  mkdir ~/.app && cd ~/.app && tar --xattrs -xvpf go1.23.2.linux-amd64.tar.gz
  # rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz
  echo ""
  # echo -e "\e[1;31mWrite this in your .zshrc file.\e[0m"
  # echo -e "\e[1;31mexport PATH=$PATH:/usr/local/go/bin\e[0m"
  # echo ""
  # echo -e "\e[1;37;41m                    \e[0m"
  # echo -e "\e[1;37;41m Restart the Shell. \e[0m"
  # echo -e "\e[1;37;41m                    \e[0m"
fi


# Installing PHP, The term PHP is an acronym for 
# PHP: Hypertext Preprocessor. PHP is a server-side scripting language 
# designed specifically for web development.
# PHP="$(which php)"
# if [ -f "$PHP"  ]; then
#   echo -e "\e[1;33mPHP already installed.\e[0m"
#   echo ""
# else
#   echo "Before installing PHP you should install Apache (or a preferred web server) and a database service such as MySQL."
#   echo ""
#   echo -e "\e[1;35mInstalling PHP.\e[0m"
#   sudo apt install php -y
#   echo ""
#   echo -e "\e[1;32mPHP installed successfully.\e[0m"
#   echo ""
# fi

# Perl is a high-level, general-purpose, interpreted, dynamic programming language.
# PERL="$(which perl)"
# if [ -f "$PERL" ]; then
#   echo -e "\e[1;33mPERL already installed.\e[0m"
#   echo ""
# else
#   echo -e "\e[1;35mInstalling PERL.\e[0m"
#   sudo apt install perl -y
#   echo ""
#   echo -e "\e[1;32mPERL installed successfully.\e[0m"
#   echo ""
# fi


# if [ -f "$RUBY" ]; then
#   echo -e "\e[1;33mRUBY already installed.\e[0m"
#   echo ""
# else
#   echo -e "\e[1;35mInstalling RUBY.\e[0m"
#   sudo apt install ruby -y
#   echo ""
#   echo -e "\e[1;32mRUBY installed successfully.\e[0m"
#   echo ""
#   echo -e "\e[1;35mInstalling NeoVim by gem.\e[0m"
#   gem install neovim
#   gem environment
#   echo ""
# fi

