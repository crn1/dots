sudo ln -srf ./bashrc ~/.bashrc
sudo ln -srf ./vimrc ~/.vimrc
sudo ln -srf ./gitconfig ~/.gitconfig
sudo ln -srf ./xinitrc ~/.xinitrc
sudo ln -srf ./bash_profile ~/.bash_profile
sudo ln -srf ./Xresources ~/.Xresources
sudo ln -srf ./environment /etc/environment

#napravi foldere ako ne postoje
sudo mkdir -p ~/.config
sudo mkdir -p ~/.config/i3
sudo mkdir -p ~/.config/i3status

#i3 syslink
sudo ln -srf ./config/i3/config ~/.config/i3/config
sudo ln -srf ./config/i3status/config ~/.config/i3status/config
