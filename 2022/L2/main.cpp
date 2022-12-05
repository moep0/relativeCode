#include <stdio.h>
#include <sys/wait.h>
#include <stdio.h>
#include <string.h>
#include <sched.h>
#include <stdint.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <unistd.h>
#include <time.h> 
#include "util.hpp"
#include <random>
extern "C" void bandwidth_test256(int loop,void *region);
int main(int argc, char const *argv[]){
	//long long ans;
	int count,size;
	if(argc>=3){
		count = atoi(argv[1]);
		size = atoi(argv[2]);		
	}
	else{
		count=100;
		size=1024*8*8;
	}
	size=size*1024*8;
	region r=shuffled_region(size);
	bandwidth_test256(count,&r);
	return 0;
}