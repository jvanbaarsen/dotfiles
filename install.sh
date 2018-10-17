#!/usr/bin/env bash

echo "- Installing Homebrew"
if ! command -v brew >/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "...Already installed, skipping"
fi

echo "- Installing Apps"
brew bundle

echo "- Installing Oh My Zsh"
if ! [ -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  echo "...Already installed, skipping"
fi

echo "- Creating needed folders"
mkdir -p ~/Development
mkdir -p ~/.tmp
mkdir -p ~/.config

echo "- Linking files"
ln -nfs "$(pwd)/.zshrc" "$HOME/.zshrc"
ln -nfs "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"
ln -nfs "$(pwd)/.vimrc" "$HOME/.vimrc"
ln -nfs "$(pwd)/.vim" "$HOME/.vim"
ln -nfs "$(pwd)/.vim" "$HOME/.config/nvim"
ln -nfs "$(pwd)/.ackrc" "$HOME/.ackrc"
ln -nfs "$(pwd)/.agignore" "$HOME/.agignore"
ln -nfs "$(pwd)/.git_template" "$HOME/.git_template"
ln -nfs "$(pwd)/.gitconfig" "$HOME/.gitconfig"
ln -nfs "$(pwd)/gitignore" "$HOME/.gitignore"
ln -nfs "$(pwd)/.railsrc" "$HOME/.railsrc"
ln -nfs "$(pwd)/config.ctags" "$HOME/config.ctags"

echo "- Installing Vim plugin manager"
if  [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  echo "...Already installed, skipping"
fi

echo "All done, don't forget to restart your shell"
