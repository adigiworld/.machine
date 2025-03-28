#!/usr/bin/env bash

git config --global user.name "Aadil Rasheed"
git config --global user.email asadigiworld@gmail.com
git config --global core.editor "vim --wait"
git config --global color.ui true
git config --global init.defaultBranch main


# $git config --global init.defaultBranch <main>
# git config --global user.signingkey <gpg-key-id>
# git config --global commit.template ~/.gitmessage.txt
# git config --global color.diff.meta "blue black bold"
# git config --global merge.tool extMerge
# git config --global mergetool.extMerge.cmd \ 'extMerge "$BASE" "$LOCAL" "$REMOTE" "$MERGED"'
# git config --global mergetool.extMerge.trustExitCode false
# git config --global diff.external extDiff
# git config --global core.autocrlf input
# git config --global filter.indent.clean indent
# git config --global filter.indent.smudge cat

# git config --system receive.denyNonFastForwards true
# git config --system receive.denyDeletes true

#ALIASES
git config --global alias.s status
git config --global alias.a "!git add . && git status"
git config --global alias.c commit
git config --global alias.cm "commit -m"
git config --global alias.ca "commit --amend"
git config --global alias.ac "!git add . && git commit"


echo ""
echo -e "\e[1;32mGit Global Variables Configur Successfully.\e[0m"
echo ""
