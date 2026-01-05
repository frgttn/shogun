# Install build tools
sudo pacman -S --needed --noconfirm base-devel

# Configure pacman
sudo cp -f ~/.local/share/shogun/default/pacman.conf /etc/pacman.conf

# Refresh all repos
sudo pacman -Syu --noconfirm
