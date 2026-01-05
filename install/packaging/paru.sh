if ! command -v paru &>/dev/null; then
  cd /tmp
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si --noconfirm
  cd ~
  cd -
  rm -rf paru
  cd ~
fi