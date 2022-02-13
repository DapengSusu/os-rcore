#!/bin/bash

BOOTLOADER=../bootloader/rustsbi-qemu.bin
OUTPUT=target/riscv64gc-unknown-none-elf/release
OS_ELF=$OUTPUT/os
OS_BIN=$OUTPUT/os.bin

# ls
#ls $OUTPUT

# remove metadata
#echo "bash: rust-objcopy --strip-all $OS_ELF -O binary $OS_BIN"
rust-objcopy --strip-all $OS_ELF -O binary $OS_BIN

# show info
#echo BOOTLOADER = $BOOTLOADER
#echo OS_ELF = $OS_ELF
#echo OS_BIN = $OS_BIN

# start os
qemu-system-riscv64 \
-machine virt \
-nographic \
-bios $BOOTLOADER \
-device loader,file=$OS_BIN,addr=0x80200000

