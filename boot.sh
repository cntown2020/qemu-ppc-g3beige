#!/bin/bash

QVER=v4.0.0
KVER=v5.1
RVER=2016.05

qemu-system-ppc -M g3beige -m 128M -smp 1 -no-reboot -nographic \
	-bios qemu/$QVER/share/qemu/openbios-ppc \
	-kernel kernel/$KVER/vmlinux \
	-initrd root/$RVER/rootfs.cpio.gz \
	-append 'route=172.17.0.5 root=/dev/ram0  console=ttyS0' \
	#-net nic,model=pcnet -net tap
