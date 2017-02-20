#! /usr/bin/env bash
set -e

echo "Add archlinuxcn mirror"

echo "[archlinuxcn]" >> /etc/pacman.conf
echo "Server = http://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\$arch" >> /etc/pacman.conf

echo "Update and install yaourt"
pacman -Syuu yaourt \
	archlinuxcn-keyring
