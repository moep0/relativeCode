all : page-info.o util.o main.o bandwidth.o
	g++ -no-pie -o test main.o util.o page-info.o bandwidth.o
	#

util.o: page-info.o
	g++ -g -c -no-pie -O2 -std=c++11 -Wall -Wextra -fPIC -o util.o util.cpp
page-info.o:
	gcc -g -c -no-pie -O2 -Wall -Wextra -fPIC -o page-info.o page-info.c 
main.o:
	g++ -g -c -no-pie -O2 -Wall -Wextra -fPIC -o main.o main.cpp
bandwidth.o:
	nasm -felf64 -g -Fdwarf -o bandwidth.o bandwidth.asm

clean:
	rm -f page-info.o util.o main.o test bandwidth.o
clean-main:
	rm -f test main.o bandwidth.o