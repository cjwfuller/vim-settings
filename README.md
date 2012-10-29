    cd ~/
    cp ~/.vim{,.bak}
    rm -rf ~/.vim
    git clone https://github.com/cjwfuller/linux-profile.git .vim
    bash ~/.vim/deploy.sh
