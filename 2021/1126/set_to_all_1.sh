for number in -1 0 1 2 3 4 5 6 7
do

	nasm -f elf64 set_to_all_1.asm -g -Dnumber=$number -o set_to_all_1.o && ld -m elf_x86_64 set_to_all_1.o -o set_to_all_1
	echo $(expr $number);  
	sudo taskset -c 1 perf stat --all-user -e task-clock,context-switches,cpu-migrations,page-faults,cycles,instructions,r10e,r1b1,r1002479 -r2 ./set_to_all_1

done