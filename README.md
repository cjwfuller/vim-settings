    cd ~/
    cp ~/.vim{,.bak}
    rm -rf ~/.vim
    git clone https://github.com/cjwfuller/vim-settings.git .vim
    bash ~/.vim/deploy.sh
