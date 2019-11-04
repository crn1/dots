#!/usr/bin/env bash

if [[ ! `id -u` -eq 0 ]]; then
  echo "Please run this script as root";
fi;

rm -f /etc/X11/xorg.conf /usr/local/etc/X11/xorg.conf
kldload linux64
pkg install -y nvidia-driver nvidia-xconfig
sysrc kld_list+="nvidia-modeset"
kldload nvidia-modeset

XORG_CONF_DIR="/usr/local/etc/X11/xorg.conf.d"
XORG_CONF_FILE="$XORG_CONF_DIR/driver-nvidia.conf"

mkdir -p "$XORG_CONF_DIR"

cat > "$XORG_CONF_FILE" << "EOF"
Section "Device"
	Identifier "NVIDIA Card"
	VendorName "NVIDIA Coorporation"
	Driver "nvidia"
EndSection
EOF

nvidia-xconfig

echo "Nvidia"

