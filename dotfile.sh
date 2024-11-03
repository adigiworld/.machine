#!/usr/bin/env bash

echo -e "\e[1;35mWriting dotfiles.\e[0m"

echo -e $(cd .dotfiles && bash ./unix)

echo -e "\e[1;32mDotfiles writen Successfully.\e[0m"

