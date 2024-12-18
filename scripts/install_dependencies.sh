#!/bin/sh

# Homebrew
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing Wezterm"
brew install --cask wezterm

echo "Installing Nerd fonts"
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
brew install --cask font-go-mono-nerd-font

echo "Installing dependencies"
brew install neovim \
  starship \
  jesseduffield/lazygit/lazygit \
  fzf \
  bat \
  eza
