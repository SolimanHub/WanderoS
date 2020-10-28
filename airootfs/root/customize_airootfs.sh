#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

ln -s /opt/programas/sublime_text_3/sublime_text /usr/bin/subl
# Banner del menu de salida
rm /usr/bin/lxde-logout
rm /usr/share/lxde/images/logout-banner.png

cp /opt/lxde-logout /usr/bin/
cp /opt/logout-banner.png /usr/share/lxde/images/

rm /opt/lxde-logout /opt/logout-banner.png

# activando servicios
systemctl enable NetworkManager.service
systemctl enable sddm.service