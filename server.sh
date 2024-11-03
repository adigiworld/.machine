#!/usr/bin/env bash

# Installing NGINX, The Nginx HTTP server is a powerful alternative to Apache. Nginx used for web services.
NGINX="$(which nginx)"
if [ "$NGINX" = "/usr/sbin/nginx" ]; then
  echo -e "\e[1;33mNGINX already installed."
  echo ""
else
  echo -e "\e[1;35mInstalling NGINX"
  sudo apt install nginx -y
  echo ""
  echo -e "\e[1;32mNGINX Installed Successfully."
  echo "sudo systemctl status nginx"
  echo ""
fi

# Installing TMUX,
TMUX="$(which tmux)"
if [ -f "$TMUX" ]; then
  echo -e "\e[1;33mTMUX already installed."
  echo ""
else
  echo -e "\e[1;35mInstalling TMUX"
  sudo apt install tmux -y
  echo ""
  echo -e "\e[1;32mTMUX Installed Successfully."
  echo ""
fi



