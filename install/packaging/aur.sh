# Install all aur packages
mapfile -t packages < <(grep -v '^#' "$SHOGUN_INSTALL/shogun-aur.packages" | grep -v '^$')
paru -S --noconfirm --needed "${packages[@]}"
