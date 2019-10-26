sudo pkg install -y fish python py36-ranger py36-pip wget curl vim git gcc cmake

#GUI
sudo pkg install -y xorg i3-gaps i3status rxvt-unicode urxvt-perls dmenu arandr transmission-gtk sxiv firefox mplayer evince ubuntu-font gedit

PWD=`pwd`;

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

#fish syslink
ln -sf "$PWD/config/fish/config.fish" ~/.config/fish/config.fish
ln -sf "$PWD/config/fish/fish_variables" ~/.config/fish/fish_variables

sudo ln -sf "$PWD/config/fish/config.fish" ~/.config/fish/config.fish
sudo ln -sf "$PWD/config/fish/fish_variables" ~/.config/fish/fish_variables

#Delete motd message
sudo rm -f /etc/motd

#Set and configure fish shell
sudo chsh -s `which fish`
echo 'Enter password for fish shell inegration'
chsh -s `which fish`
fish -c "set fish_greeting"
sudo fish -c "set fish_greeting"
