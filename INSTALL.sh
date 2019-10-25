sudo pkg install ranger udiskie wget curl vim git gcc cmake

#GUI
sudo pkg install xorg fish xinit i3-gaps i3status rxvt-unicode urxvt-perls dmenu arandr transmission-gtk sxiv python py36-pip xorg-server firefox mplayer evince ubuntu-font gedit

PWD=`pwd`;

ln -sf "$PWD/vimrc" ~/.vimrc
ln -sf "$PWD/gitconfig" ~/.gitconfig
ln -sf "$PWD/xinitrc" ~/.xinitrc
ln -sf "$PWD/Xresources" ~/.Xresources
ln -sf "$PWD/profile" ~/.profile

sudo ln -sf "$PWD/vimrc" ~/.vimrc
sudo ln -sf "$PWD/gitconfig" ~/.gitconfig
sudo ln -sf "$PWD/xinitrc" ~/.xinitrc
sudo ln -sf "$PWD/Xresources" ~/.Xresources
sudo ln -sf "$PWD/profile" ~/.profile

#Make folders if they don't exist
mkdir -p ~/.config
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/fish

sudo mkdir -p ~/.config
sudo mkdir -p ~/.config/i3
sudo mkdir -p ~/.config/i3status
sudo mkdir -p ~/.config/fish

#i3 syslink
ln -sf "$PWD/config/i3/config" ~/.config/i3/config
ln -sf "$PWD/config/i3status/config" ~/.config/i3status/config

sudo ln -sf "$PWD/config/i3/config" ~/.config/i3/config
sudo ln -sf "$PWD/config/i3status/config" ~/.config/i3status/config

#Delete motd message
sudo rm -f /etc/motd
