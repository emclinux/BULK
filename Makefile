SOURCES=boot.o kmain.o

CFLAGS=-nostdlib -nostdinc -fno-builtin -fno-stack-protector
LDFLAGS=-T link.ld
ASFLAGS=-felf

all:
	nasm $(ASFLAGS) start.s -o boot.o
	i586-elf-gcc $(CFLAGS) kmain.c -o kmain.o
clean:
	-rm *.o kernel

link:
	i586-elf-ld $(LDFLAGS) -o kernel $(SOURCES)

