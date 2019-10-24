PWD=`pwd`;

ln -sf "$PWD/bashrc" ~/.bashrc
ln -sf "$PWD/vimrc" ~/.vimrc
ln -sf "$PWD/gitconfig" ~/.gitconfig
ln -sf "$PWD/xinitrc" ~/.xinitrc
ln -sf "$PWD/bash_profile" ~/.bash_profile
ln -sf "$PWD/Xresources" ~/.Xresources

#napravi foldere ako ne postoje
mkdir -p ~/.config
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status

#i3 syslink
ln -sf "$PWD/config/i3/config" ~/.config/i3/config
ln -sf "$PWD/config/i3status/config" ~/.config/i3status/config
