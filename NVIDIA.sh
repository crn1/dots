sudo rm -f /etc/X11/xorg.conf /usr/local/etc/X11/xorg.conf
sudo kldload linux64
sudo pkg install -y nvidia-driver nvidia-xconfig
sudo sysrc kld_list+="nvidia_modeset"
sudo kldload nvidia-modeset
sudo mkdir -p /usr/local/etc/X11/xorg.conf

sudo bash -c 'echo "Section \"Device\"" > /usr/local/etc/X11/xorg.conf.d/driver-nvidia.conf'
sudo bash -c 'echo "	Identifier \"NVIDIA Card\"" >> /usr/local/etc/X11/xorg.conf.d/driver-nvidia.conf'
sudo bash -c 'echo "	VendorName \"NVIDIA Coorporation\"" >> /usr/local/etc/X11/xorg.conf.d/driver-nvidia.conf'
sudo bash -c 'echo "	Driver \"nvidia\"" >> /usr/local/etc/X11/xorg.conf.d/driver-nvidia.conf'
sudo bash -c 'echo "EndSection" >> /usr/local/etc/X11/xorg.conf.d/driver-nvidia.conf'

sudo nvidia-xconfig
