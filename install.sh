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

echo "- Linking files"
ln -nfs "$(pwd)/.zshrc" "$HOME/.zshrc"
ln -nfs "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"

echo "- Creating needed folders"
mkdir -p ~/Development
mkdir -p ~/.tmp

echo "All done, don't forget to restart your shell"
