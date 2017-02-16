#!/usr/bin/env bash
set -e

echo "Installing yaourt..."
#echo "[archlinuxcn]" >> /etc/pacman.conf
#echo "Server = http://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch" >> /etc/pacman.conf
sudo pacman -Syuu yaourt \
    archlinuxcn-keyring

echo "Installing base packages..."
yaourt --noconfirm -S \
  termite-git \
  bash-completion

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
  i3lock \
  i3blocks-gaps-git \
  i3status-git \
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
#  powerline-fonts-git \
  thunar \
  thunar-archive-plugin \
  file-roller \
  tumbler \
  eog \
  numix-themes \
  numix-icon-theme-git \
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
  lm_sensors

echo "Installing some python stuff..."
yaourt --noconfirm -S \
  python-pillow \
  python-urllib3

echo "Installing some perl stuff..."
yaourt --noconfirm -S \
    perl-anyevent-i3 \
    perl-json-xs 
echo "Link some config"
ask "Install symlink for .gitconfig?" Y && ln -sfn ${dir}/.gitconfig ${HOME}/.gitconfig
ask "Install symlink for .bashrc?" Y && ln -sfn ${dir}/.bashrc ${HOME}/.bashrc
ask "Install symlink for .bash_profile?" Y && ln -sfn ${dir}/.bash_profile ${HOME}/.bash_profile
ask "Install symlink for .vimrc?" Y && ln -sfn ${dir}/.vimrc ${HOME}/.vimrc
ask "Install symlink for .Xresources?" Y && ln -sfn ${dir}/.Xresources ${HOME}/.Xresources
ask "Install symlink for .xinitrc?" Y && ln -sfn ${dir}/.xinitrc ${HOME}/.xinitrc
ask "Install symlink for .compton.conf?" Y && ln -sfn ${dir}/.compton.conf ${HOME}/.compton.conf
ask "Install symlink for .gtkrc-2.0?" Y && ln -sfn ${dir}/.gtkrc-2.0 ${HOME}/.gtkrc-2.0
ask "Install symlink for .npmrc?" Y && ln -sfn ${dir}/.npmrc ${HOME}/.npmrc

ask "Install symlink for .i3/?" Y && ln -sfn ${dir}/.i3 ${HOME}/.i3
ask "Install symlink for .vim/?" Y && ln -sfn ${dir}/.vim ${HOME}/.vim
ask "Install symlink for .bash.d/?" Y && ln -sfn ${dir}/.bash.d ${HOME}/.bash.d
ask "Install symlink for .config/?" Y && ln -sfn ${dir}/.config ${HOME}/.config

ask "Install symlink for scripts/?" Y && ln -sfn ${dir}/scripts ${HOME}/scripts
