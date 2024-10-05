#!/bin/bash

# Installing NGINX, Which is a GNU Compiler Collection
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



