
echo mounting sda

mkdir -p /mnt/gentoo/boot/efi 
mount /dev/sda1 /mnt/gentoo/boot/efi 

mkswap /dev/sda2
swapon /dev/sda2

mount /dev/sda3 /mnt/gentoo

lsblk

mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
mount --rbind /run /mnt/gentoo/run
mount --make-rslave /mnt/gentoo/run 

chroot /mnt/gentoo /bin/bash
source /etc/profile
export PS1="(chroot) ${PS1}"
