# Ensure we have gum available
if ! command -v gum &>/dev/null; then
  sudo pacman -S --needed --noconfirm gum
fi
