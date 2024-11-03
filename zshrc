#!/usr/bin/env bash



set relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set scrolloff=10
set history=1000

syntax on
filetype indent on

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

#MAPPING
let mapleader = " "
nnoremap <leader>x :!chmod +x %<CR>






# ---CONFIG START---

export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:/usr/local/go/bin

# export PATH=$PATH:~/.config/nvim-linux64/bin

#---CONFIG END---

# To Use NVM in Script, Write: `. ~/.nvm/nvm.sh` in the script file first.

# ------------------------ BASH OPTIONS ----------------

# Option    |	    Description
# -e	    | Enable interpretation of backslash escapes
# \e[	    | Begin the color modifications
# COLORm    | Color Code + ‘m’ at the end
# \e[0m	    | End the color modifications

# ANSI — Color Escape Codes
# Color	    | Foreground Code |	Background Code	
# Black	    |       30	      |         40	
# Red	    |       31	      |         41	
# Green	    |       32	      |         42	
# Yellow    |       33	      |         43	
# Blue	    |       34	      |         44	
# Purple    |       35	      |         45	
# Cyan	    |       36	      |         46	
# Light Gray|	    37	      |         47

# ANSI Code |	   Description
#   0	    | Normal Characters
#   1	    | Bold Characters
#   4	    | Underlined Characters
#   5	    | Blinking Characters
#   7	    | Reverse video Characters

echo -e "\e[1;37;44mColor message in BASH.\e[0m"


