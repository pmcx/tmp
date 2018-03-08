`Error 28: Selected item cannot fit into memory`

https://github.com/joyent/smartos-live/issues/712

# Installation
(from [MAHDTech|https://github.com/MAHDTech])
For anyone playing along at home, one work around is to install grub2.

Instructions adapted from HERE

Boot a Linux LiveCD (I used Ubuntu)

Mount your disk which has SmartOS installed

mkdir /media/smartos
mount /dev/sdX /media/smartos
Install grub2 to the mounted drive
`grub-install --boot-directory=/media/smartos/boot /dev/sdX`

Create a grub.cfg
`vi /media/smartos/boot/grub/grub.cfg`

Insert the following configuration into the file (modify as appropriate)
```
menuentry "SmartOS" {
    insmod multiboot
    set root='hd0,1'
    multiboot /platform/i86pc/kernel/amd64/unix /platform/i86pc/kernel/amd64/unix -B smartos=true
    module /platform/i86pc/amd64/boot_archive /platform/i86pc/amd64/boot_archive type=rootfs name=ramdisk
}
```
