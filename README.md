    cd ~/
    cp -r ~/.vim{,.bak}
    rm -r ~/.vim
    git clone https://github.com/cjwfuller/vim-settings.git .vim
    bash ~/.vim/deploy.sh
