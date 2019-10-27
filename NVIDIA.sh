sudo bash -c 'echo "linux_load=\"YES\"" >> /boot/loader.conf'
sudo kldload linux64
sudo pkg install -y nvidia-driver nvidia-xconfig
sudo bash -c 'echo "nvidia_load=\"YES\"" >> /boot/loader.conf'
sudo sysrc kld_list+="nvidia_modeset"
sudo kldload nvidia
sudo nvidia-xconfig
