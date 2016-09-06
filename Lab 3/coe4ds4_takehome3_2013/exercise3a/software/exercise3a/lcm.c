// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include "sys/alt_alarm.h"
#include "alt_types.h"
#include "system.h"
#include "altera_avalon_performance_counter.h"

#define ALGO_3

#define ARRAY_SIZE 100

// For performance counter
void *performance_name = PERFORMANCE_COUNTER_0_BASE;

int GCD(int a, int b)
{
    int r_p1, r_m1, r_0;
 
    if (a < b) {
        r_m1 = b;
        r_0 = a;    
    } else {
        r_m1 = a;
        r_0 = b;        
    }
    
    while (r_0 != 0) {
        r_p1 = r_0;
        r_0 = r_m1 % r_0;
        r_m1 = r_p1;
    }
    
    return r_m1;
}

int lcm(int a, int b)
{
    int a_mult = 1, b_mult = 1, a_prod = a, b_prod = b;
    
#ifdef ALGO_1
    while (a_prod != b_prod)
        if (a_prod < b_prod) a_prod = ++a_mult * a;
        else b_prod = ++b_mult * b;
#endif
#ifdef ALGO_2
    while ((a_prod = a * a_mult) != (b_prod = b * b_mult)) {
        if (a_prod < b_prod) a_mult++;
        else b_mult++;
    }
#endif
#ifdef ALGO_3
    a_prod = (a * b) / GCD(a,b);
#endif

    return a_prod;
}

int main()
{ 
    int common[ARRAY_SIZE];
	int i, a[ARRAY_SIZE], b[ARRAY_SIZE];
    
	// For performance counter
	PERF_RESET(PERFORMANCE_COUNTER_0_BASE);
	
	// Start the performance counter
	PERF_START_MEASURING(performance_name);

    printf("Generating Random Set...\n");
    for (i = 0; i < ARRAY_SIZE; i++) {
        do { a[i] = rand() & 0x3ff; } while(a[i] == 0);
        do { b[i] = rand() & 0x3ff; } while(b[i] == 0);
      // printf("%x %x\n",a[i],b[i]);
    }
	
	printf("Start lcm calculation...\n");
	
	// Start performance counter
	PERF_BEGIN(performance_name, 1);
	
	for (i = 0; i < ARRAY_SIZE; i++) {
        common[i] = lcm(a[i],b[i]);	
    }
	
	// Stop performance counter
	PERF_END(performance_name, 1);

	// Start the performance counter
	PERF_STOP_MEASURING(performance_name);
	
	for (i = 0; i < ARRAY_SIZE; i++) printf("%d %d: %d\n",a[i],b[i],common[i]);
    printf("Done! PC: %d\n", (int)perf_get_section_time(performance_name, 1));
		
  /* Event loop never exits. */
  while (1);

  return 0;
}
