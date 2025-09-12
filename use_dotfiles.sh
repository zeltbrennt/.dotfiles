#!/bin/bash

rm -rf ~/.config/fish ~/.tmux.conf ~/.vimrc ~/.zshrc ~/.config/bat ~/.config/nvim 2>/dev/null
mkdir ~/.config 2>/dev/null
mkdir ~/.vim 2>/dev/null
ln -s ~/.dotfiles/config/fish ~/.config/fish
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/config/bat ~/.config/bat
ln -s ~/.dotfiles/vim/colors ~/.vim/colors
ln -s ~/.dotfiles/config/nvim/ ~/.config/nvim
bat cache --build 2 /dev/null &>1
