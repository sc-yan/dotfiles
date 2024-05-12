#!/usr/bin/env zsh

echo "Installing Homebrew..."

if exists brew; then
  echo "Homebrew already installed. exiting..."
else
  echo "Homebrew not installed. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474
brew bundle --verbose
