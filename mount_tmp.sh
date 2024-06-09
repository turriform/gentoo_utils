
echo mounting sda

mkdir -p /mnt/gentoo/boot/efi 
mount /dev/sda1 /mnt/gentoo/boot/efi 

swapon /dev/sda2

mount /dev/sda3 /mnt/gentoo

lsblk
