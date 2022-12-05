#!/bin/bash

make clean-main
make
for size in 8 16 32 64 128 256 512 1024 2048
do
	sudo perf stat -e instructions,cycles,r1d1,r2d1,r4d1 taskset -c 1 ./test 500000 $size
done