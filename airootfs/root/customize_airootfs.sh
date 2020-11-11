#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

sed -i 's/#\(es_HN\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist


ln -s /opt/programas/sublime_text_3/sublime_text /usr/bin/subl

# activando servicios
systemctl enable NetworkManager.service
systemctl enable sddm.service

#Creacion de carpetas en el Home/os2 y lanzador para instalar calamares
xdg-user-dirs-update

mv /opt/sddm.conf /etc/

if [ -d /home/os2/Desktop/ ];
	then
		cp /usr/share/applications/calamares.desktop /home/os2/Desktop/
	else
		if [ -d /home/os2/Escritorio/ ];
			then
				cp /usr/share/applications/calamares.desktop /home/os2/Escritorio/
			else
				cp /usr/share/applications/calamares.desktop /home/os2/
		fi
fi