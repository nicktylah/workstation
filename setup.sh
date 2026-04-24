#!/bin/bash

echo "Symlinking .vimrc..." && \
ln -s ~/workstation/vim/.vimrc ~/.vimrc && \
echo "Symlinking .zshrc..." && \
ln -s ~/workstation/zsh/.zshrc ~/.zshrc && \
echo "Symlinking .aliases..." && \
ln -s ~/workstation/aliases/.aliases ~/.aliases && \
echo "Symlinking nvim config..." && \
ln -s ~/workstation/nvim ~/.config/nvim && \
# echo "Installing vimplug..." && \
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
