sudo kld_load linux64
echo "If not working restart computer"
sudo pkg install -y linux-c7
sudo pkg install -y nvidia-driver nvidia-xconfig
sudo sysrc kld_list+="nvidia_modeset"
sudo nvidia-xconfig
