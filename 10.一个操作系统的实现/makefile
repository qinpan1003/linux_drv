all	:
	make	clean
	(cd src; make all	)
	make	buildimg
	
clean	:
	(cd src; make clean	)
	make	cleanimg

buildimg	:
	dd if=src/bootloader/boot.bsf of=boot.img bs=512 count=1 conv=notrunc
	mount -o loop boot.img /mnt/floppy/
	cp -f src/bootloader/loader.bin /mnt/floppy/
	cp -f src/kernel/kernel /mnt/floppy/
	umount /mnt/floppy

cleanimg	:
	mount -o loop boot.img /mnt/floppy/
	rm -f /mnt/floppy/loader.bin
	rm -f /mnt/floppy/kernel
	umount /mnt/floppy