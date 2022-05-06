#!/bin/bash

echo "Symlinking .vimrc..." && \
ln -s ~/workstation/vim/.vimrc ~/.vimrc && \
echo "Symlinking .zshrc..." && \
ln -s ~/workstation/zsh/.zshrc ~/.zshrc && \
echo "Symlinking .aliases..." && \
ln -s ~/workstation/aliases/.aliases ~/.aliases;
