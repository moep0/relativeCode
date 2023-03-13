all:test

pmc.o:
	gcc -g -c -no-pie -O2 -Wall -Wextra -fPIC -o pmc.o pmc.c

test: pmc.o
	g++ -c -std=c++11 test.cpp -o test.o
	g++ -o test test.o pmc.o
clean:
	rm -f test test.o pmc.o