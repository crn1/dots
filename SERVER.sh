#cockpit - install
sudo pacman -S --noconfirm cockpit
sudo pacman -S --noconfirm cockpit-storaged
sudo pacman -S --noconfirm cockpit-pcp
sudo pacman -S --noconfirm firewalld
sudo pacman -S --noconfirm udusks2

yay -Sy --noconfirm cockpit-navigator

#cockpit - run
sudo systemctl enable cockpit
sudo systemctl start cockpit

#docker portainer
sudo pacman -S --noconfirm docker
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:2.21.4

#additional services
sudo pacman -S --noconfirm syncthing

# remove latop lid
sudo echo "HandleLidSwitch=ignore" > /etc/systemd/logind.conf