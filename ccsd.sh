make CFLAGS=-g ARCH=arm CROSS_COMPILE=arm-eabi- INSTALL_MOD_PATH=mnt/ext4 modules_install
cp mnt/fat32/$KERNEL.img mnt/fat32/$KERNEL-backup.img
cp arch/arm/boot/zImage mnt/fat32/$KERNEL.img
cp arch/arm/boot/dts/*.dtb mnt/fat32/
cp arch/arm/boot/dts/overlays/*.dtb* mnt/fat32/overlays/
cp arch/arm/boot/dts/overlays/README mnt/fat32/overlays/
