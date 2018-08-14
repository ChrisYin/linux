make distclean
KERNEL=kernel7
#make ARCH=arm CROSS_COMPILE=arm-eabi- bcm2709_defconfig
make ARCH=arm CROSS_COMPILE=arm-eabi- ckos_zimage_defconfig
#make ARCH=arm CROSS_COMPILE=arm-eabi- menuconfig
make CFLAGS=-g ARCH=arm CROSS_COMPILE=arm-eabi- zImage -j8
make CFLAGS=-g ARCH=arm CROSS_COMPILE=arm-eabi- modules -j8
cp ${PWD}/arch/arm/boot/zImage $tftp_path/pi3/img/zImage
