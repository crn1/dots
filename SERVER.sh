#cockpit - install
sudo pacman -S --noconfirm cockpit
sudo pacman -S --noconfirm cockpit-storaged
sudo pacman -S --noconfirm cockpit-pcp
sudo pacman -S --noconfirm cockpit-packagekit
sudo pacman -S --noconfirm firewalld
sudo pacman -S --noconfirm udusks2

yay -Sy --noconfirm cockpit-navigator

#docker portainer
sudo pacman -S --noconfirm docker
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:2.21.4

# remove latop lid
echo "HandleLidSwitch=ignore" | sudo tee -a /etc/systemd/logind.conf

#cockpit - run
sudo systemctl enable cockpit
sudo systemctl start cockpit
sudo firewall-cmd --permanent --add-service=cockpit
sudo firewall-cmd --reload

#syncthing
sudo pacman -S --noconfirm syncthing
sudo useradd -m syncthinguser
sudo systemctl enable syncthing@syncthinguser.service
sudo systemctl start syncthing@syncthinguser.service
