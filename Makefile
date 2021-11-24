all:
	gcc -c -nostdlib -m16 -g -march=i686 -ffreestanding -Os  ./boot.s -o boot.o
	ld -m elf_i386 -s -Tlinker.ld -static -nostdlib --nmagic -e init -o boot.elf boot.o
	objcopy -O binary boot.elf boot.bin
	ls -alh
