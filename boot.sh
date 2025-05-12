#!/bin/bash

set -e

BASE_DIR="$HOME/.local/share/dev-setup"

# Check for 'yay' and install it if not found
if ! command -v yay >/dev/null 2>&1; then
  echo "=> 'yay' not found. Installing 'yay'..."
  sudo pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  pushd /tmp/yay >/dev/null
  makepkg -si --noconfirm
  popd >/dev/null
  rm -rf /tmp/yay
fi

# Update the system and 'yay'
echo "=> Updating system and 'yay' packages..."
yay -Syyuu --noconfirm

echo "Cloning System Setup..."
rm -rf $BASE_DIR 
git clone "https://github.com/saullbrandao/dev-setup.git" ~/.local/share/dev-setup >/dev/null

cd $BASE_DIR

#Change to use ssh
git remote set-url origin git@github.com:saullbrandao/dev-setup.git

source "install.sh"
source "config.sh"

cd $HOME
echo "All done!"
