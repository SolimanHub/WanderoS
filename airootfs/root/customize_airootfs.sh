#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

#Creacion de carpetas en el Home/os2 y lanzador para instalar calamares
xdg-user-dirs-update
#LC_ALL=C xdg-user-dirs-update --force

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

sed -i 's/#\(es_HN\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

ln -s /opt/programas/sublime_text_3/sublime_text /usr/bin/subl
ln -s /opt/programas/arduino-nightly/arduino /usr/bin/arduino
ln -s /opt/elminador.sh /usr/bin/eliminador

# activando servicios
systemctl enable NetworkManager.service
systemctl enable sddm.service
systemctl enable cronie.service
systemctl enable ntpd.service
systemctl enable bluetooth

pacman -Rns --noconfirm parole

mv /opt/sddm.conf /etc/
rm /etc/httpd/conf/httpd.conf
mv /opt/httpd.conf /etc/httpd/conf/

chmod 777 /opt/eliminador.sh
chmod 777 /home/os2/.config/move.sh
