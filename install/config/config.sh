# Copy over Shogun configs
mkdir -p ~/.config
cp -R ~/.local/share/shogun/config/* ~/.config/

# Use default bashrc from Shogun
cp ~/.local/share/shogun/default/bashrc ~/.bashrc
