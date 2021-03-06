#!/usr/bin/env bash
set -e

echo "Installing base packages..."
yaourt --noconfirm -S \
  termite-git \
  bash-completion

echo "Installing i3wm"
yaourt --noconfirm -S \
  xorg-server \
  xorg-xinit \
  xorg-xbacklight \
  i3-gaps-git \
  i3lock \
  i3blocks-gaps-git \
  i3status-git \
  xf86-video-intel

echo "Installing Python dependencies..."
yaourt --noconfirm -S \
  python-basiciw \
  python-netifaces \
  python-yaml \
  python-pillow \
  python-urllib3 \
  python2-suds

echo "Installing window manager dependencies..."
yaourt --noconfirm -S \
  xcb-util-keysyms \
  xcb-util-wm \
  xcb-util-cursor \
  yajl \
  startup-notification \
  libev

echo "Installing tools..."
yaourt --noconfirm -S \
  gsimplecal \
  feh \
  acpi \
  xdotool \
  pulseaudio-ctl \
  pavucontrol \
  network-manager-applet \
  networkmanager-openvpn \
  imagemagick \
  dunst \
  python \
  python-pip \
  python2-pip \
  compton-git \
  ttf-font-awesome \
  ohsnap \
  ttf-hack \
  nautilus \
  file-roller \
  tumbler \
  eog \
  numix-themes \
  la-capitaine-icon-theme-git \
  tk \
  aspell-en \
  evince \
  rofi \
  libmtp \
  gvfs-mtp \
  vim-airline \
  vim-fugitive \
  vim-gruvbox-git \
  vim-airline-gruvbox-git \
  vim-youcompleteme-git \
  vim-gitgutter-git \
  xtitle-git \
  openssh \
  arandr \
  xclip \
  xedgewarp-git \
  unclutter-xfixes-git \
  thefuck \
  slop \
  maim \
  neofetch-git \
  w3m \
  htop \
  bluez \
  bluez-utils \
  pulseaudio-bluetooth \
  blueman \
  redshift \
  google-chrome \
  lm_sensors \
  alsa-utils \
  gnome-mplayer

echo "Installing input method..."
yaourt --noconfirm -S \
  fcitx-rime \
  fcitx-configtool \
  fcitx-gtk2 \
  fcitx-gtk3 \
  fcitx-qt4 \
  fcitx-qt5

echo "Installing some python stuff..."
yaourt --noconfirm -S \
  python-pillow \
  python-urllib3

echo "Installing some perl stuff..."
yaourt --noconfirm -S \
    perl-anyevent-i3 \
    perl-json-xs 
