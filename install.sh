#!/usr/bin/env bash

files="vimrc bashrc tmux.conf gitconfig bash_alias gitignore_global zshrc zprofile"

# mcd dotfiles
if [ ! -d "$HOME/dotfiles" ]
    then
    mkdir ~/dotfiles
    cd ~/dotfiles || exit
    git init
else
    cd ~/dotfiles || exit
fi

# mv configfiles into dotfiles
for file in $files; do
    # 将配置文件移入home文件夹
    if [ -f "$HOME/.$file" ]
    then
        cp "$HOME/.$file" "$HOME/.$file.bak$(date)"
    fi
    cp ./$file ~/.$file 2>/dev/null
done
