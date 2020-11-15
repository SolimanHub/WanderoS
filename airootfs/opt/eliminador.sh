# este script es el encargado de eliminar calamares del sistema ya instalado

#!/usr/bin/bash

if [ -d /home/os2 ];then
 echo ""
else
 rm -r /home/lost+found
 rm -r /etc/calamares/
 rm -r /usr/bin/calamares
 rm -r /usr/include/libcalamares
 rm -r /usr/lib/calamares
 rm -r /usr/lib/*calamares*
 rm -r /usr/lib/cmake/Calamares
 rm -r /usr/share/calamares
 rm -r /usr/share/icons/hicolor/scalable/apps/calamares*
 rm -r /usr/share/man/man8/calamares.*
 rm -r /usr/share/polkit-1/actions/com.github.calamares.calamares.policy
 rm -r /usr/share/locale
 rm /usr/bin/eliminador
 rm /opt/calamares.desktop
 rm /opt/eliminador.sh
 rm /var/log/Calamares.log
 clear
 sed -i '/eliminador/d' /root/.bashrc
fi

