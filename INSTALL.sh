# ARCH -- pacman
sudo pacman -Syy install fish python ranger pip wget curl vim git gcc cmake

#ARCH -- pacman -- GUI
sudo pacman -Sy install xorg xorg-server xorg-apps xorg-xinit i3-gaps i3status i3blocks rxvt-unicode urxvt-perls dmenu arandr transmission-gtk sxiv vlc evince ubuntu-font gedit extra/setxkbmap keepassxc libreoffice nautilus spotify-launcher pamixer openssh go unzip flameshot python-pip docker
# + python-pywal feh

#Download and install yay
git clone https://aur.archlinux.org/yay-git.git ~/yay-git
cd ~/yay-git && makepkg -si
rm -rf ~/yay-git

#Install Google Chrome
yay -Sy google-chrome

#Install beeper
wget -O /usr/local/bin/beeper https://download.beeper.com/linux/appImage/x64
sudo chmod +x /usr/local/bin/beeper

#Install espanso
wget -O /usr/local/bin/espanso 'https://github.com/federico-terzi/espanso/releases/download/v2.2.1/Espanso-X11.AppImage'
sudo chmod +x /usr/local/bin/espanso

#Download Dropbox
wget -O ~/dropbox-installer "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf ~/dropbox-installer
rm ~/dropbox-installer

#enable lightdm
#sudo systemctl enable lightdm

#remap caplock to esc
#sudo setxkbmap -option caps:escape

PWD=`pwd`;

# Make symbolic links
ln -sf "$PWD/vimrc" ~/.vimrc
ln -sf "$PWD/gitconfig" ~/.gitconfig
ln -sf "$PWD/xinitrc" ~/.xinitrc
ln -sf "$PWD/Xresources" ~/.Xresources
ln -sf "$PWD/profile" ~/.profile

sudo ln -sf "$PWD/vimrc" /root/.vimrc
sudo ln -sf "$PWD/gitconfig" /root/.gitconfig
sudo ln -sf "$PWD/xinitrc" /root/.xinitrc
sudo ln -sf "$PWD/Xresources" /root/.Xresources
sudo ln -sf "$PWD/profile" /root/.profile

#Make folders if they don't exist
mkdir -p ~/.config
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/fish

sudo mkdir -p /root/.config
sudo mkdir -p /root/.config/i3
sudo mkdir -p /root/.config/i3status
sudo mkdir -p /root/.config/fish

#i3 syslink
ln -sf "$PWD/config/i3/config" ~/.config/i3/config
ln -sf "$PWD/config/i3status/config" ~/.config/i3status/config

sudo ln -sf "$PWD/config/i3/config" /root/.config/i3/config
sudo ln -sf "$PWD/config/i3status/config" /root/.config/i3status/config

#redshift syslink
ln -sf "$PWD/config/redshift.conf" ~/.config/redshift.conf
sudo ln -sf "$PWD/config/redshift.conf" /root/.config/redshift.conf

#fish syslink
ln -sf "$PWD/config/fish/config.fish" ~/.config/fish/config.fish
ln -sf "$PWD/config/fish/fish_variables" ~/.config/fish/fish_variables
sudo ln -sf "$PWD/config/fish/config.fish" ~/.config/fish/config.fish
sudo ln -sf "$PWD/config/fish/fish_variables" ~/.config/fish/fish_variables

#Delete motd message
sudo rm -f /etc/motd

#Setup vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo curl -fLo /root/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#disable delay at menu boot
#sudo bash -c 'echo "disable_beastie=\"YES\"" >> /boot/loader.conf'
sudo bash -c 'echo "timeout 0" >> /boot/loader/loader.conf'

#Set and configure fish shell
sudo chsh -s `which fish`
echo 'Enter password for fish shell inegration'
chsh -s `which fish`
fish -c "set fish_greeting"
sudo fish -c "set fish_greeting"
