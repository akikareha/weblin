#!/bin/sh
cp ../buildroot/.config buildroot.config
cp ../buildroot/output/images/bzImage .
cp ../buildroot/output/images/rootfs.ext2 .

cp ../v86-releases/libv86.js .
cp ../v86-releases/v86.wasm build/

mkdir -p bios
cp ../v86/bios/seabios.bin bios/
cp ../v86/bios/vgabios.bin bios/
