#!/usr/bin/env zsh
# installation is unnecessary since zsh is installed by brew
echo "Setting up zsh......"

# install oh-my-zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My Zsh is installed."
else
  echo "Oh My Zsh is not installed. downloading and installing now..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# https://stackoverflow.com/a/4749368/1341838
if grep -Fxq "$(brew --prefix)/bin/zsh" '/etc/shells'; then
  echo "$(brew --prefix)/bin/zsh already exists in /etc/shells"
else
  echo "Enter superuser (sudo) password to edit /etc/shells"
  echo $(brew --prefix)/bin/zsh | sudo tee -a '/etc/shells' >/dev/null
fi

# change default shell
if [ "$SHELL" = "$(brew --prefix)/bin/zsh" ]; then
  echo "$SHELL is already $(brew --prefix)/bin/zsh"
else
  echo "Enter user password to change login shell"
  chsh -s $(brew --prefix)/bin/zsh
fi

# run "man sh" to see what it does. somehow brew-installed zsh cannot be set as default sh but pre-installed one can
if sh --version | grep -q zsh; then
  echo '/private/var/select/sh already linked to /bin/zsh'
else
  echo "Enter superuser (sudo) password to symlink sh to zsh"
  # Looked cute, might delete later, idk
  # sudo ln -sfv /bin/zsh /private/var/select/sh

  # I'd like for this to work instead.
  # ln -sfv /opt/homebrew/bin/zsh /private/var/select/sh
fi
