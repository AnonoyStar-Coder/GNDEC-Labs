#!/bin/bash

# WARNING: This script irreversibly deletes all specified VMware files.
# Run with caution. Suggested usage: sudo ./remove-vmware.sh

FILES_AND_DIRS=(
   /etc/vmware-installer
   /etc/systemd/system/multi-user.target.wants/vmware.service
   /etc/systemd/system/multi-user.target.wants/vmware-USBArbitrator.service
   /etc/modprobe.d/vmware-fuse.conf
   /etc/vmware-vix
   /sys/module/kvm/parameters/enable_vmware_backdoor
   /var/log/vmware-installer
   /var/log/vmware
   /usr/share/applications/vmware-player.desktop
   /usr/share/applications/vmware-netcfg.desktop
   /usr/share/applications/vmware-workstation.desktop
   /usr/share/libinput/30-vendor-vmware.quirks
   /sys/fs/cgroup/system.slice/vmware-USBArbitrator.service
   /var/lib/pacman/local/vmware-keymaps-1.0-3
   /usr/bin/vmware-installer
   /usr/bin/vmware-authdlauncher
   /usr/bin/vmware-collect-host-support-info
   /usr/bin/vmware-networks
   /usr/bin/vmware-gksu
   /usr/bin/vmware-vprobe
   /usr/bin/vmware-license-enter.sh
   /usr/bin/vmware-netcfg
   /usr/bin/vmware-usbarbitrator
   /usr/bin/vmware-vdiskmanager
   /usr/bin/vmware-mount
   /usr/bin/vmware-uninstall
   /usr/bin/vmware-ping
   /usr/bin/vmware-modconfig
   /usr/bin/vmware-authd
   /usr/bin/vmware-license-check.sh
   /usr/bin/vmware-fuseUI
   /usr/bin/vmware-tray
   /usr/share/icons/hicolor
   /usr/share/mime/packages/vmware-player.xml
   /usr/share/mime/application/x-vmware-vmdisk.xml
   /usr/share/mime/application/x-vmware-enc-vm.xml
   /usr/share/mime/application/x-vmware-vmfoundry.xml
   /usr/share/mime/application/x-vmware-team.xml
   /usr/share/mime/application/x-vmware-vm.xml
   /usr/share/mime/application/x-vmware-snapshot.xml
   /usr/share/doc/vmware-workstation
   /usr/share/doc/vmware-player
   /usr/lib/vmware-installer
   /usr/share/doc/vmware-vix
   /usr/share/licenses/vmware-keymaps
   /usr/lib/vmware-ovftool
   /run/systemd/units/invocation:vmware-USBArbitrator.service
   /usr/lib/systemd/system/vmware.service
   /usr/lib/systemd/system/vmware-USBArbitrator.service
   /usr/share/appdata/vmware-player.appdata.xml
   /usr/share/appdata/vmware-workstation.appdata.xml
   /run/vmware
   /usr/local/share/appdata/vmware-player.appdata.xml
   /usr/local/share/appdata/vmware-workstation.appdata.xml
   /usr/local/share/applications/vmware-player.desktop
   /usr/local/share/applications/vmware-netcfg.desktop
   /usr/local/share/applications/vmware-workstation.desktop
   /tmp/vmware-balraj
   /tmp/vmware-root
   /usr/include/vmware-vix
   /usr/lib/vmware
   /usr/lib/vmware-vix
   /usr/lib/modules/6.16.7-arch1-1/build/include/config/INFINIBAND_VMWARE_PVRDMA
   /usr/lib/modules/6.16.7-arch1-1/build/include/config/VMWARE_BALLOON
   /usr/lib/modules/6.16.7-arch1-1/build/include/config/VMWARE_VMCI_VSOCKETS
   /usr/lib/modules/6.16.7-arch1-1/build/include/config/VMWARE_PVSCSI
   /usr/lib/modules/6.16.7-arch1-1/build/include/config/VMWARE_VMCI
   /usr/lib/modules/6.16.7-arch1-1/build/arch/x86/include/asm/vmware.h
)

for ITEM in "${FILES_AND_DIRS[@]}"; do
    if [ -e "/$ITEM" ]; then
        echo "Deleting /$ITEM"
        sudo rm -rf "/$ITEM"
    else
        echo "Not found: /$ITEM"
    fi
done

