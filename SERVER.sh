#pacman -- General
sudo pacman -Syy
sudo pacman -S --noconfirm fish
sudo pacman -S --noconfirm python
sudo pacman -S --noconfirm ranger
sudo pacman -S --noconfirm python-pip
sudo pacman -S --noconfirm wget
sudo pacman -S --noconfirm curl
sudo pacman -S --noconfirm vim
sudo pacman -S --noconfirm git
sudo pacman -S --noconfirm gcc
sudo pacman -S --noconfirm cmake
sudo pacman -S --noconfirm htop
sudo pacman -S --noconfirm pacman-contrib
sudo pacman -S --noconfirm openssh
sudo pacman -S --noconfirm unzip
sudo pacman -S --noconfirm tree
sudo pacman -S --noconfirm go
sudo pacman -S --noconfirm docker
sudo pacman -S --noconfirm docker-compose
sudo pacman -S --noconfirm mat2
sudo pacman -S --noconfirm perl-image-exiftool

#yay -- install
git clone https://aur.archlinux.org/yay-git.git ~/yay-git
cd ~/yay-git && makepkg -si --noconfirm
rm -rf ~/yay-git

# get the current PWD directory
cd ~/dots && DOTS=`pwd`;

# Make symbolic links
ln -sf "$DOTS/vimrc" ~/.vimrc
ln -sf "$DOTS/gitconfig" ~/.gitconfig
sudo ln -sf "$DOTS/vimrc" /root/.vimrc
sudo ln -sf "$DOTS/gitconfig" /root/.gitconfig

#fish syslink
mkdir -p ~/.config/fish
sudo mkdir -p /root/.config/fish
ln -sf "$DOTS/config/fish/config.fish" ~/.config/fish/config.fish
ln -sf "$DOTS/config/fish/fish_variables" ~/.config/fish/fish_variables
sudo ln -sf "$DOTS/config/fish/config.fish" /root/.config/fish/config.fish
sudo ln -sf "$DOTS/config/fish/fish_variables" /root/.config/fish/fish_variables

#Setup vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo curl -fLo /root/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#cockpit - install
sudo pacman -S --noconfirm cockpit
sudo pacman -S --noconfirm cockpit-storaged
sudo pacman -S --noconfirm cockpit-pcp
sudo pacman -S --noconfirm cockpit-packagekit
sudo pacman -S --noconfirm firewalld
sudo pacman -S --noconfirm udusks2
yay -Sy --noconfirm cockpit-navigator

#cockpit - run
sudo systemctl enable cockpit
sudo systemctl start cockpit
sudo systemctl enable firewalld
sudo systemctl start firewalld
sudo firewall-cmd --permanent --add-service=cockpit
sudo firewall-cmd --reload

#syncthing
sudo pacman -S --noconfirm syncthing
sudo useradd -m syncthinguser
sudo systemctl enable syncthing@syncthinguser.service
sudo systemctl start syncthing@syncthinguser.service

#radicale
sudo pacman -S --noconfirm radicale
sudo pacman -S --noconfirm apache
mkdir -p ~/radicale
echo 'Enter password for Radicale:'
htpasswd -5 -c ~/radicale/users crn1
sudo ln -sf "$DOTS/server-configs/radicale.config" /etc/radicale/config
sudo systemctl enable radicale
sudo systemctl start radicale

#gitea
mkdir -p ~/gitea
ln -sf "$DOTS/server-configs/gitea.yml" ~/gitea/docker-compose.yml
(
	cd ~/gitea || exit
	docker-compose up -d
)

#calcom
git clone https://github.com/calcom/docker.git ~/calcom
ln -sf "$DOTS/server-configs/calcom.env" ~/calcom/.env
ln -sf "$DOTS/server-configs/calcom.yml" ~/calcom/docker-compose.yml
(
	cd ~/calcom || exit
	docker-compose up -d
)

#Jitsi
wget $(curl -s https://api.github.com/repos/jitsi/docker-jitsi-meet/releases/latest | grep 'zip' | cut -d\" -f4) -P ~/
mkdir -p ~/.jitsi-meet-cfg/{web,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}
#Make this good again

#Matrix Synapse
mkdir -p ~/matrix-synapse
ln -sf "$DOTS/server-configs/matrix-synapse.yml" ~/matrix-synapse/docker-compose.yml
(
	cd ~/matrix-synapse
	compose run --rm synapse generate
	docker-compose up -d
)
#make this better

#nginx proxy manager
mkdir -p ~/nginx-proxy-manager
ln -sf "$DOTS/server-configs/nginx-proxy-manager.yml" ~/nginx-proxy-manager/docker-compose.yml
(
	cd ~/nginx-proxy-manager
	docker-compose up -d
)
#make this better

# remove latop lid
echo "HandleLidSwitch=ignore" | sudo tee -a /etc/systemd/logind.conf

# Update Grub
ln -sf "$DOTS/grub" /etc/default/grub
sudo update-grub

#Set and configure fish shell
sudo chsh -s `which fish`
echo 'Enter password for fish shell inegration'
chsh -s `which fish`

# Commands for firewalld
#sudo firewall-cmd --permanent --add-service=radicale
#sudo firewall-cmd --reload
echo '!!! Make sure to change CalCom password in config !!!'
echo '!!! Make sure to change Gitea password in config !!!'
