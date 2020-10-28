#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="wanderos"
iso_label="ARCH_$(date +%Y%m)"
#iso_publisher="WanderoS <https://www.archlinux.org>"
#iso_application="WanderoS Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="wander"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"