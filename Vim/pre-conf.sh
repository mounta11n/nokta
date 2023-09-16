#!/bin/bash



curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Don't forget to execute `:PlugInstall` inside vim after installation of vim-plug"
