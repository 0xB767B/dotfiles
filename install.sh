#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DOTFILES_DIR
# Update dotfiles itself first

#[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# update submodules (Vundle)
git submodule update --init

# create of symlinks
ln -sfv "$DOTFILES_DIR/bash_aliases" ~/.bash_aliases
ln -sfv "$DOTFILES_DIR/bashrc" ~/.bashrc
ln -sfv "$DOTFILES_DIR/bashrc" ~/.profile
ln -sfv "$DOTFILES_DIR/gitconfig" ~/.gitconfig
ln -sfv "$DOTFILES_DIR/vimrc" ~/.vimrc
ln -sfv "$DOTFILES_DIR/vim" ~/.vim
ln -sfv "$DOTFILES_DIR/bin" ~/bin

# install vundle in vim
vim +PluginInstall +qall


# Run tests
#bats test/*.bats
