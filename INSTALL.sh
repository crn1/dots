# ARCH -- pacman
sudo pacman -Syy
sudo pacman -S --noconfirm fish
sudo pacman -S --noconfirm python
sudo pacman -S --noconfirm ranger
sudo pacman -S --noconfirm python-pip
sudo pacman -S --noconfirm wget
sudo pacman -S --noconfirm curl
sudo pacman -S --noconfirm gvim
sudo pacman -S --noconfirm git
sudo pacman -S --noconfirm gcc
sudo pacman -S --noconfirm cmake
sudo pacman -S --noconfirm htop
sudo pacman -S --noconfirm pacman-contrib

#ARCH -- pacman -- GUI -- Xorg
sudo pacman -S --noconfirm xorg
sudo pacman -S --noconfirm xorg-server
sudo pacman -S --noconfirm xorg-apps
sudo pacman -S --noconfirm xorg-xinit
sudo pacman -S --noconfirm extra/xorg-setxkbmap

#ARCH -- pacman -- GUI
sudo pacman -S --noconfirm i3-gaps
sudo pacman -S --noconfirm i3status
sudo pacman -S --noconfirm i3blocks
sudo pacman -S --noconfirm rxvt-unicode
sudo pacman -S --noconfirm urxvt-perls
sudo pacman -S --noconfirm dmenu
sudo pacman -S --noconfirm arandr
sudo pacman -S --noconfirm transmission-gtk
sudo pacman -S --noconfirm sxiv
sudo pacman -S --noconfirm vlc
sudo pacman -S --noconfirm evince
sudo pacman -S --noconfirm gedit
sudo pacman -S --noconfirm keepassxc
sudo pacman -S --noconfirm libreoffice
sudo pacman -S --noconfirm pamixer
sudo pacman -S --noconfirm openssh
sudo pacman -S --noconfirm go
sudo pacman -S --noconfirm unzip
sudo pacman -S --noconfirm docker
sudo pacman -S --noconfirm nautilus
sudo pacman -S --noconfirm galculator
sudo pacman -S --noconfirm gparted

#ARCH -- pacman -- additional
sudo pacman -S --noconfirm flameshot
sudo pacman -S --noconfirm spotify-launcher
sudo pacman -S --noconfirm extra/ttf-ubuntu-font-family
#sudo pacman -S feh
#sudo pacman -S python-pywal

#ARCH --pacman -smartreader
#sudo pacman -S --noconfirm opensc
#sudo pacman -S --noconfirm pcsclite

#Download and install yay
git clone https://aur.archlinux.org/yay-git.git ~/yay-git
cd ~/yay-git && makepkg -si --noconfirm
rm -rf ~/yay-git

#ARCH -- yay -- additional
yay -Sy --noconfirm google-chrome
yay -Sy --noconfirm obsidian

#Install beeper
sudo wget -O /usr/local/bin/beeper https://download.beeper.com/linux/appImage/x64
sudo chmod +x /usr/local/bin/beeper

#Download Dropbox
wget -O ~/dropbox-installer "https://www.dropbox.com/download?plat=lnx.x86_64" && tar xzf ~/dropbox-installer
rm ~/dropbox-installer

#enable lightdm
#sudo systemctl enable lightdm

#remap caplock to esc
#sudo setxkbmap -option caps:escape

cd ~/dots
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
sudo ln -sf "$PWD/config/fish/config.fish" /root/.config/fish/config.fish
sudo ln -sf "$PWD/config/fish/fish_variables" /root/.config/fish/fish_variables

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
