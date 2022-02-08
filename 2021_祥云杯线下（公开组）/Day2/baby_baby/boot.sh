#!/bin/sh
timeout 100 qemu-system-x86_64  -m 2G  -kernel /bzImage   -initrd  /rootfs.img --append "console=ttyS0 root=/dev/ram init=/init kaslr" -smp cores=2,threads=4 -cpu kvm64,+smep,+smap -monitor /dev/null -nographic
