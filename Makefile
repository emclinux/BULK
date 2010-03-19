kernel.bin: kernel.o loader.o linker.ld
	i586-elf-ld -T linker.ld -o kernel.bin loader.o kernel.o
loader.o: loader.s
	nasm -f elf -o loader.o loader.s
kernel.o: kernel.c
	i586-elf-gcc -o kernel.o -c kernel.c -Wall -Wextra -nostdlib -nostartfiles -nodefaultlibs
image:
	dd if=/dev/zero of=pad bs=1 count=750
	cat  stage1 stage2 pad kernel.bin > floppy.img
clean:
	rm -rf *.o pad floppy.img
