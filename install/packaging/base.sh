# Install all base packages
mapfile -t packages < <(grep -v '^#' "$SHOGUN_INSTALL/shogun-base.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"
