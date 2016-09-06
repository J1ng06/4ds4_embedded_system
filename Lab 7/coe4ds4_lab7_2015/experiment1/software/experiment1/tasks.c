// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

// For the performance counter
void *performance_name = PERFORMANCE_COUNTER_0_BASE;

// Definition of semaphore for PBs
OS_EVENT *PBSemaphore[4];

// Definition of mailboxes
OS_EVENT *MboxGenArrayStart[2];
OS_EVENT *MboxFindMinStart[2];
OS_EVENT *MboxFindMaxStart[2];
OS_EVENT *MboxFindMinDone[2];
OS_EVENT *MboxFindMaxDone[2];
OS_EVENT *MboxFindMinMax;

// memory partition
OS_MEM	*MemoryPartition;

// Definition of task stacks
OS_STK	  initialize_task_stk[TASK_STACKSIZE];
OS_STK	  task_launcher_stk[TASK_STACKSIZE];
OS_STK	  sorting_stk[TASK_STACKSIZE];
OS_TCB	  sorting_tcb;

OS_STK	  gen_array_stk[2][TASK_STACKSIZE];
OS_TCB	  gen_array_tcb[2];
OS_STK	  find_min_stk[2][TASK_STACKSIZE];
OS_TCB	  find_min_tcb[2];
OS_STK	  find_max_stk[2][TASK_STACKSIZE];
OS_TCB	  find_max_tcb[2];
OS_STK	  find_min_max_stk[TASK_STACKSIZE];
OS_TCB	  find_min_max_tcb;

// The sorting task
// It has the highest priority
// But it initiates other tasks by posting a message in the corresponding mailboxes
// Then it wait for the result to be computed by monitoring other mailboxes
// In the mean time, it'll suspend itself to free up the processor
void sorting(void* pdata) {
	INT16U *min_value, *max_value;
	INT8U return_code = OS_NO_ERR;
	int i;
	INT16U *data_array[2];

	while (1) {
		// Delay for 2 secs so that the message from this task will be displayed last
		// If not delay, since it has highest priority, the wait message for PB0 will be displayed first
		OSTimeDlyHMSM(0, 0, 2, 0);

		printf("Waiting for PB0 to determine min/max 2 arrays each with %d entries\n", ARRAY_SIZE);
		OSSemPend(PBSemaphore[0], 0, &return_code);
		alt_ucosii_check_return_code(return_code);

		printf("Sorting started\n");

		// Get the memory block from memory partition, and pass that memory block to other task through mailboxes
		// to start data generation
		for (i = 0; i < 2; i++) {
			data_array[i] = OSMemGet(MemoryPartition, &return_code);
			alt_ucosii_check_return_code(return_code);
			
			return_code = OSMboxPost(MboxGenArrayStart[i], (void *)(data_array[i]));
			alt_ucosii_check_return_code(return_code);
		}
		
		// Start the performance counter
		PERF_START_MEASURING(performance_name);

		printf("-waiting for find_min_max...\n");

		// Now wait for min value
		min_value = (INT16U *)OSMboxPend(MboxFindMinMax, 0, &return_code);
		alt_ucosii_check_return_code(return_code);

		// Now wait for max value
		max_value = (INT16U *)OSMboxPend(MboxFindMinMax, 0, &return_code);
		alt_ucosii_check_return_code(return_code);

		// Stop the performance counter
		PERF_STOP_MEASURING(performance_name);

		printf("Done: Min: %d, Max: %d\n", *min_value, *max_value);

		printf("Array 0 PC: %d\n", perf_get_section_time(performance_name,1));
		printf("Array 1 PC: %d\n", perf_get_section_time(performance_name,2));
		printf("Merge	PC: %d\n", perf_get_section_time(performance_name,3));
		
		for (i = 0; i < 2; i++) {
			return_code = OSMemPut(MemoryPartition, (void *)data_array[i]);
			alt_ucosii_check_return_code(return_code);
		}
	}
}

// gen_array_0 task
// It randomly generates numbers in the range of 0-65535 (16 bits)
// And stores them in the data array obtained from the mailbox
void gen_array_0(void* pdata) {
	INT16U *data_array;
	INT8U return_code = OS_NO_ERR;
	int i;
	INT16U min_value, max_value;
	int switches;

	while (1) {
		printf("gen_array_0 wait for start\n");
		data_array = (INT16U *)OSMboxPend(MboxGenArrayStart[0], 0, &return_code);
		alt_ucosii_check_return_code(return_code);

		printf("gen_array_0 started (%p)\n", data_array);

		max_value = 0;
		min_value = 65535;

		// Get the seed from the switches
		switches = IORD(SWITCH_I_BASE, 0);

		srand(switches);

		// Start generation
		for (i = 0; i < ARRAY_SIZE; i++) {
			data_array[i] = rand() % 65536;

			// For verification
			if (data_array[i] > max_value) max_value = data_array[i];
			if (data_array[i] < min_value) min_value = data_array[i];
		}

		printf("gen_array_0 done (min: %d)(max: %d)\n", min_value, max_value);
		
		// When data generation is finished, the data array is posted to
		// two different mailboxes, so that the two tasks for finding
		// the min and max values in the array will be initiated
		return_code = OSMboxPost(MboxFindMinStart[0], (void *)(data_array));
		alt_ucosii_check_return_code(return_code);

		return_code = OSMboxPost(MboxFindMaxStart[0], (void *)(data_array));
		alt_ucosii_check_return_code(return_code);

		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

// gen_array_1 task
// It randomly generates numbers in the range of 0-65535 (16 bits)
// And stores them in the data array obtained from the mailbox
void gen_array_1(void* pdata) {
	INT16U *data_array;
	INT8U return_code = OS_NO_ERR;
	int i;
	INT16U min_value, max_value;
	int switches;

	while (1) {
		printf("gen_array_1 wait for start\n");
		data_array = (INT16U *)OSMboxPend(MboxGenArrayStart[1], 0, &return_code);
		alt_ucosii_check_return_code(return_code);

		printf("gen_array_1 started (%p)\n", data_array);

		max_value = 0;
		min_value = 65535;

		// Get the seed from the switches
		switches = IORD(SWITCH_I_BASE, 0);

		srand(~switches);

		// Start generation
		for (i = 0; i < ARRAY_SIZE; i++) {
			data_array[i] = rand() % 65536;

			// For verification
			if (data_array[i] > max_value) max_value = data_array[i];
			if (data_array[i] < min_value) min_value = data_array[i];
		}

		printf("gen_array_1 done (min: %d)(max: %d)\n", min_value, max_value);

		// When data generation is finished, the data array is posted to
		// two different mailboxes, so that the two tasks for finding
		// the min and max values in the array will be initiated
		return_code = OSMboxPost(MboxFindMinStart[1], (void *)(data_array));
		alt_ucosii_check_return_code(return_code);

		return_code = OSMboxPost(MboxFindMaxStart[1], (void *)(data_array));
		alt_ucosii_check_return_code(return_code);

		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

// find_min_0 task
// It obtains the data array from the mailbox
// and then find the min value in the array
void find_min_0(void* pdata) {
	INT16U min_value;
	INT16U *data_array;
	INT8U return_code = OS_NO_ERR;
	int i;

	while (1) {
		printf("find_min_0 wait for start\n");
		data_array = (INT16U *)OSMboxPend(MboxFindMinStart[0], 0, &return_code);
		alt_ucosii_check_return_code(return_code);
		printf("find_min_0 started (%p)\n", data_array);

		// Start performance counter
		PERF_BEGIN(performance_name, 1);

		min_value = 65535;
		for (i = 0; i < ARRAY_SIZE; i++) {
			if (data_array[i] < min_value) min_value = data_array[i];
		}
		// Stop performance counter
		PERF_END(performance_name, 1);

		printf("find_min_0 done (%d)\n", min_value);
		
		// Post the min value to the mailbox for other task
		return_code = OSMboxPost(MboxFindMinDone[0], (void *)(&min_value));
		alt_ucosii_check_return_code(return_code);

		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

// find_max_0 task
// It obtains the data array from the mailbox
// and then find the min value in the array
void find_max_0(void* pdata) {
	INT16U max_value;
	INT16U *data_array;
	INT8U return_code = OS_NO_ERR;
	int i;

	while (1) {
		printf("find_max_0 wait for start\n");

		data_array = (INT16U *)OSMboxPend(MboxFindMaxStart[0], 0, &return_code);
		alt_ucosii_check_return_code(return_code);
		printf("find_max_0 started (%p)\n", data_array);

		// Start performance counter
		PERF_BEGIN(performance_name, 1);
		max_value = 0;
		for (i = 0; i < ARRAY_SIZE; i++) {
			if (data_array[i] > max_value) max_value = data_array[i];
		}
		// Stop performance counter
		PERF_END(performance_name, 1);

		printf("find_max_0 done (%d)\n", max_value);

		// Post the max value to the mailbox for other task
		return_code = OSMboxPost(MboxFindMaxDone[0], (void *)(&max_value));
		alt_ucosii_check_return_code(return_code);

		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

// find_min_1 task
// It obtains the data array from the mailbox
// and then find the min value in the array
void find_min_1(void* pdata) {
	INT16U min_value;
	INT16U *data_array;
	INT8U return_code = OS_NO_ERR;
	int i;

	while (1) {
		printf("find_min_1 wait for start\n");

		data_array = (INT16U *)OSMboxPend(MboxFindMinStart[1], 0, &return_code);
		alt_ucosii_check_return_code(return_code);
		printf("find_min_1 started (%p)\n", data_array);

		// Start performance counter
		PERF_BEGIN(performance_name, 2);
		min_value = 65535;
		for (i = 0; i < ARRAY_SIZE; i++) {
			if (data_array[i] < min_value) min_value = data_array[i];
		}
		// Stop performance counter
		PERF_END(performance_name, 2);

		printf("find_min_1 done (%d)\n", min_value);

		// Post the min value to the mailbox for other task
		return_code = OSMboxPost(MboxFindMinDone[1], (void *)(&min_value));
		alt_ucosii_check_return_code(return_code);

		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

// find_max_1 task
// It obtains the data array from the mailbox
// and then find the min value in the array
void find_max_1(void* pdata) {
	INT8U return_code = OS_NO_ERR;
	INT16U *data_array;
	INT16U max_value;
	int i;

	while (1) {
		printf("find_max_1 wait for start\n");

		data_array = (INT16U *)OSMboxPend(MboxFindMaxStart[1], 0, &return_code);
		alt_ucosii_check_return_code(return_code);
		printf("find_max_1 started (%p)\n", data_array);

		// Start performance counter
		PERF_BEGIN(performance_name, 2);
		max_value = 0;
		for (i = 0; i < ARRAY_SIZE; i++) {
			if (data_array[i] > max_value) max_value = data_array[i];
		}
		// Stop performance counter
		PERF_END(performance_name, 2);

		printf("find_max_1 done (%d)\n", max_value);

		// Post the max value to the mailbox for other task
		return_code = OSMboxPost(MboxFindMaxDone[1], (void *)(&max_value));
		alt_ucosii_check_return_code(return_code);

		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

// find_min_max task
// It obtains the four min and max values for the two data arrays from the mailboxes
// and then find the global min and max values in the arrays
// It post the results into the same mailbox at the end
void find_min_max(void* pdata) {
	INT8U return_code = OS_NO_ERR;
	INT16U *min_msg[2], *max_msg[2];
	int i;
	INT16U max_value, min_value;

	while (1) {
		printf("find_min_max wait for start\n");
		for (i = 0; i < 2; i++) {
			min_msg[i] = (INT16U *)OSMboxPend(MboxFindMinDone[i], 0, &return_code);
			alt_ucosii_check_return_code(return_code);
			max_msg[i] = (INT16U *)OSMboxPend(MboxFindMaxDone[i], 0, &return_code);
			alt_ucosii_check_return_code(return_code);
		}
		printf("find_min_max started\n");

		// Start performance counter
		PERF_BEGIN(performance_name, 3);

		if (*min_msg[0] >= *min_msg[1]) min_value = *min_msg[1];
		else min_value = *min_msg[0];

		if (*max_msg[0] <= *max_msg[1]) max_value = *max_msg[1];
		else max_value = *max_msg[0];

		// Stop performance counter
		PERF_END(performance_name, 3);

		printf("find_min_max done\n");
		
		// Post the min and max value to the same mailbox
		return_code = OSMboxPost(MboxFindMinMax, (void *)(&min_value));
		alt_ucosii_check_return_code(return_code);
		return_code = OSMboxPost(MboxFindMinMax, (void *)(&max_value));
		alt_ucosii_check_return_code(return_code);

		OSTimeDlyHMSM(0, 0, 1, 0);
	}
}

// Task launcher
// It creates all the custom tasks
// And then it deletes itself
void task_launcher(void *pdata) {
	INT8U return_code = OS_NO_ERR;

	#if OS_CRITICAL_METHOD == 3
			OS_CPU_SR cpu_sr;
	#endif

	printf("Starting task launcher...\n");
	while (1) {
		OS_ENTER_CRITICAL();
		printf("Creating tasks...\n");

		return_code = OSTaskCreateExt(sorting,
			NULL,
			(void *)&sorting_stk[TASK_STACKSIZE-1],
			SORTING_PRIORITY,
			SORTING_PRIORITY,
			&sorting_stk,
			TASK_STACKSIZE,
			&sorting_tcb,
			0);
		alt_ucosii_check_return_code(return_code);

		return_code = OSTaskCreateExt(gen_array_0,
			NULL,
			(void *)&gen_array_stk[0][TASK_STACKSIZE-1],
			GEN_ARRAY_0_PRIORITY,
			GEN_ARRAY_0_PRIORITY,
			&gen_array_stk[0][0],
			TASK_STACKSIZE,
			&gen_array_tcb[0],
			0);
		alt_ucosii_check_return_code(return_code);

		return_code = OSTaskCreateExt(gen_array_1,
			NULL,
			(void *)&gen_array_stk[1][TASK_STACKSIZE-1],
			GEN_ARRAY_1_PRIORITY,
			GEN_ARRAY_1_PRIORITY,
			&gen_array_stk[1][0],
			TASK_STACKSIZE,
			&gen_array_tcb[1],
			0);
		alt_ucosii_check_return_code(return_code);

		return_code = OSTaskCreateExt(find_min_0,
			NULL,
			(void *)&find_min_stk[0][TASK_STACKSIZE-1],
			FIND_MIN_0_PRIORITY,
			FIND_MIN_0_PRIORITY,
			&find_min_stk[0][0],
			TASK_STACKSIZE,
			&find_min_tcb[0],
			0);
		alt_ucosii_check_return_code(return_code);

		return_code = OSTaskCreateExt(find_max_0,
			NULL,
			(void *)&find_max_stk[0][TASK_STACKSIZE-1],
			FIND_MAX_0_PRIORITY,
			FIND_MAX_0_PRIORITY,
			&find_max_stk[0][0],
			TASK_STACKSIZE,
			&find_max_tcb[0],
			0);
		alt_ucosii_check_return_code(return_code);

		return_code = OSTaskCreateExt(find_min_1,
			NULL,
			(void *)&find_min_stk[1][TASK_STACKSIZE-1],
			FIND_MIN_1_PRIORITY,
			FIND_MIN_1_PRIORITY,
			&find_min_stk[1][0],
			TASK_STACKSIZE,
			&find_min_tcb[1],
			0);
		alt_ucosii_check_return_code(return_code);

		return_code = OSTaskCreateExt(find_max_1,
			NULL,
			(void *)&find_max_stk[1][TASK_STACKSIZE-1],
			FIND_MAX_1_PRIORITY,
			FIND_MAX_1_PRIORITY,
			&find_max_stk[1][0],
			TASK_STACKSIZE,
			&find_max_tcb[1],
			0);
		alt_ucosii_check_return_code(return_code);

		return_code = OSTaskCreateExt(find_min_max,
			NULL,
			(void *)&find_min_max_stk[TASK_STACKSIZE-1],
			FIND_MIN_MAX_PRIORITY,
			FIND_MIN_MAX_PRIORITY,
			&find_min_max_stk[0],
			TASK_STACKSIZE,
			&find_min_max_tcb,
			0);
		alt_ucosii_check_return_code(return_code);

		printf("Finish creating tasks...\n");

		printf("\n");
		OSTimeDlyHMSM(0, 0, 1, 0);

		return_code = OSTaskDel(OS_PRIO_SELF);
		alt_ucosii_check_return_code(return_code);

		OS_EXIT_CRITICAL();
	}
}
