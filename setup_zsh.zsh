#!/usr/bin/env zsh

echo "Installing zsh..."

# installantion unnecessary, it's in the Brewfile

echo "Enter superuser (sudo) password to change default shell to zsh...  /etc/shells"
echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells

echo "Entering user password to change login shell"
chsh -s /usr/local/bin/zsh

ln -sfv /usr/local/bin/zsh /private/var/select/sh
