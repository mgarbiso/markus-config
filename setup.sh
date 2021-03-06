#!/bin/bash
echo "This is my setup script, it is designed to install all of my, Markus Amano's, presets."

# Makes the vim plug dir if it does not exist.
mkdir -p ~/.vim/plugged

# Makes the colors folder.
mkdir -p ~/.vim/colors

# Downloads the themes for vim.
curl -sfLo ~/.vim/colors/jellybeans.vim https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

source /usr/share/defaults/etc/profile
PATH=$HOME/.local/lib/python3.7/site-packages:$PATH; export PATH

#Downloads the .vimrc file
if [ -f "~/.vimrc" ]; then
    rm "~/.vimrc"
fi
curl -sfLo ~/.vimrc https://raw.githubusercontent.com/mgarbiso/markus-config/main/.vimrc
