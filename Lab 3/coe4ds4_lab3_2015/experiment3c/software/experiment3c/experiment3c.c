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

#define ARRAY_SIZE 500

// For performance counter
void *performance_name = PERFORMANCE_COUNTER_0_BASE;

void bubble_sort(int *data_array, int size)
{

}

int main()
{ 
	int data_set[ARRAY_SIZE];
	int i;
	
	printf("Generating random data...\n");
	for (i = 0; i < ARRAY_SIZE; i++) {
		data_set[i] = rand() % 65536;
	}
	
	// For performance counter
	PERF_RESET(PERFORMANCE_COUNTER_0_BASE);
	
	// Start the performance counter
	PERF_START_MEASURING(performance_name);
	
	printf("Start sorting...\n");
	
	// Start performance counter
	PERF_BEGIN(performance_name, 1);
	
	bubble_sort(data_set, ARRAY_SIZE);
	
	// Stop performance counter
	PERF_END(performance_name, 1);

	// Start the performance counter
	PERF_STOP_MEASURING(performance_name);
	
	printf("PC: %d\n", perf_get_section_time(performance_name, 1));
	
  /* Event loop never exits. */
  while (1);

  return 0;
}
