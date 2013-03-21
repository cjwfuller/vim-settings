#!/bin/bash
if [ -f ~/.vimrc ] && [ ! -L ~/.vimrc ]
then
    echo "Backing up existing ~/.vimrc to ~/.vimrc.bak"
    echo "Backing up existing ~/.vim to ~/.vim.bak"
    mv ~/.vimrc ~/.vimrc.bak
    mv ~/.vim ~/.vim.bak
fi
if [ -L ~/.vimrc ]
then
    echo "Already have ~/.vimrc symlink, we're good"
else
    echo "Creating symlink ~/.vimrc, which points to ~/.vim/.vimrc"
    ln -s ~/.vim/.vimrc ~/.vimrc
fi

if [ ! -d ~/src ]; then
    mkdir src
fi
cd ~/src
git clone https://github.com/hallettj/jslint.vim.git
cd  jslint.vim
rake install
