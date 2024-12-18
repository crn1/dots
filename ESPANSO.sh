# Set up all GitHub configuration before executing this script

# Install espanso
sudo wget -O /usr/local/bin/espanso 'https://github.com/federico-terzi/espanso/releases/download/v2.2.1/Espanso-X11.AppImage'
sudo chmod +x /usr/local/bin/espanso

cd ~/dots
DOTS=`pwd`;

git clone git@github.com:crn1/espanso-dots.git config/espanso/match

# Remove the original folders so the symlinks could be created
rm -rf ~/.config/espanso/match
sudo rm -rf /root/.config/espanso/match

# Make symlinks
ln -sf "$DOTS/config/espanso/match" ~/.config/espanso/
sudo ln -sf "$DOTS/config/espanso/match" /root/.config/espanso/
