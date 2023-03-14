
#include <stdint.h>
#include <stdio.h>
#include "pmc.h"

#include <fstream>
#include <iostream>

using namespace std;

counter programmables[] =
{
  { 0x000000c0ull, "INSTRUCTION_RETIRED"},
};

int core = 0;
static void pin_cpu(size_t core_ID)
{
  cpu_set_t set;
  CPU_ZERO(&set);
  CPU_SET(core_ID, &set);
  if (sched_setaffinity(0, sizeof(cpu_set_t), &set) < 0) {
    printf("Unable to Set Affinity\n");
    exit(EXIT_FAILURE);
  }
}

int main(){
	pin_cpu(core);
	int result = 0;
	int n=10000;
	double cnt = 0;
	srand(10769);
	size_t n_programmables = sizeof(programmables) / sizeof(programmables[0]);
	setup_pmc(core, programmables, n_programmables);
	zero_pmc(n_programmables);
	start_pmc();
	double a=0;
	for(int i=1;i<=n;i++){
		a=(double)(rand()+300+i)/(rand()-i);
		cnt+=a;
		//printf("%lf\n",a);
	}
	stop_pmc();
	result=get_stats_single();
	printf("%lf %d\n",cnt,result);
}
/*
pmc.o:
	gcc -g -c -no-pie -O2 -Wall -Wextra -fPIC -o pmc.o pmc.c

test: pmc.o
	g++ -c -std=c++11 test.cpp -o test.o
	g++ -o test test.o pmc.o
*/