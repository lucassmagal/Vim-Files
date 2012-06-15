#!/usr/bin/env bash

echo "~~ Installing lucassmagal's vim files ~~"

if [ ! $(which git) ]; then
    echo "Git não está instalado, processo abortado."
    exit 1
fi

# downloading and configuring files
# git clone git://github.com/lucassmagal/Vim-Files.git ~/.vim
#cd ~/.vim
#git submodule init
#git submodule update
#ln ~/.vim/.vimrc ~/.vimrc
#ln ~/.vim/.gvimrc ~/.gvimrc

echo "~~ DONE! Now, open 'README.mkd' and learn some commands and shortcuts ~~"
