#!/bin/bash

clear

sudo pacman -Syu --noconfirm --needed git

echo -e "\nCloning Shogun..."
rm -rf ~/.local/share/shogun/
git clone "https://github.com/${SHOGUN_REPO}.git" ~/.local/share/shogun >/dev/null

# Use custom branch if instructed, otherwise default to master
SHOGUN_REF="${SHOGUN_REF:-master}"
if [[ $SHOGUN_REF != "master" ]]; then
  echo -e "\e[32mUsing branch: $SHOGUN_REF\e[0m"
  cd ~/.local/share/shogun
  git fetch origin "${SHOGUN_REF}" && git checkout "${SHOGUN_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/shogun/install.sh
