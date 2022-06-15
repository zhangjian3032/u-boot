#!/bin/bash -x
rm env.bin
dd if=/dev/zero of=env.bin bs=8192 count=1

cat oem/E4412_N.bl1 spl/itop4412-spl.bin env.bin u-boot.bin > u-boot-new.bin
