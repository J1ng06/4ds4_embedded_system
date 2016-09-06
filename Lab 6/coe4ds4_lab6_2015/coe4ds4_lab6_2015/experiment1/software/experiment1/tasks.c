// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

// Definition of semaphore for PBs
OS_EVENT *PBSemaphore[4];

// Definition of task stacks
OS_STK	  initialize_task_stk[TASK_STACKSIZE];
OS_STK	  task_launcher_stk[TASK_STACKSIZE];

OS_STK	  custom_task_stk[NUM_TASK][TASK_STACKSIZE];
OS_TCB	  custom_task_tcb[NUM_TASK];

// Custom task 0
// It has a high priority to monitor PB0
// And it display OS info when PB0 is pressed
void custom_task_0(void* pdata) {
	INT8U return_code = OS_NO_ERR;
	OS_TCB tcb_data;
	OS_SEM_DATA sem_data;
	int i;

	while (1) {
		// Wait for PB0
		OSSemPend(PBSemaphore[0], 0, &return_code);
		alt_ucosii_check_return_code(return_code);

		printf("Printing task info:\n");
		for (i = 1; i <= NUM_TASK; i++) {
			return_code = OSTaskQuery(TASK_START_PRIORITY + i, &tcb_data);
			if (return_code == OS_NO_ERR) {
				printf("Task %d: Priority = %d, Status = %d, # of times active = %4ld\n",
					i-1,
					tcb_data.OSTCBPrio,
					tcb_data.OSTCBStat,
					tcb_data.OSTCBCtxSwCtr);
			}
		}

		printf("\n");
		printf("Printing Semaphore info:\n");
		for (i = 0; i < NUM_PB_BUTTON; i++) {
			return_code = OSSemQuery(PBSemaphore[i], &sem_data);
			if (return_code == OS_NO_ERR) {
				printf("PB%d: count = %d\n",
					i,
					sem_data.OSCnt);
			}
		}
		printf("\n");

		printf("Overall stats:\n");
		printf("# of tasks created   : %d\n", OSTaskCtr);
		printf("# of context switches: %4ld\n", OSCtxSwCtr);
		OSTimeDlyHMSM(0, 0, 0, 100);
	}
}

// Custom task 1
// It monitors PB1
// And it deletes itself afterwards
void custom_task_1(void* pdata) {
	INT8U return_code = OS_NO_ERR;

	while (1) {
		#if MY_NON_PREEMPTIVE_SCH == 1
				OSSchedLock();
		#endif

		printf("Hello from custom_task1\n");
		printf("Waiting for PB1 to be pressed...\n");
		while (OSSemAccept(PBSemaphore[1]) == 0) ;
		printf("PB1 pressed\n");

		OSTimeDly(20);

		#if MY_NON_PREEMPTIVE_SCH == 1
				OSSchedUnlock();
		#endif

		return_code = OSTaskDel(OS_PRIO_SELF);
		alt_ucosii_check_return_code(return_code);
	}
}

// Custom task 2
// It monitors PB2
// And it deletes itself afterwards
void custom_task_2(void* pdata) {
	INT8U return_code = OS_NO_ERR;

	while (1) {
		#if MY_NON_PREEMPTIVE_SCH == 1
				OSSchedLock();
		#endif

		printf("Hello from custom_task2\n");
		
		// Create custom task 1 which has a higher priority
		printf("Creating task custom_task_1...\n");
		return_code = OSTaskCreateExt(custom_task_1,
			NULL,
			(void *)&custom_task_stk[1][TASK_STACKSIZE-1],
			CUSTOM_TASK_1_PRIORITY,
			CUSTOM_TASK_1_PRIORITY,
			&custom_task_stk[1][0],
			TASK_STACKSIZE,
			&custom_task_tcb[1],
			0);
		alt_ucosii_check_return_code(return_code);
		printf("Finish creating task...\n");

		printf("Waiting for PB2 to be pressed...\n");
		while (OSSemAccept(PBSemaphore[2]) == 0) ;
		printf("PB2 pressed\n");

		OSTimeDly(20);

		#if MY_NON_PREEMPTIVE_SCH == 1
				OSSchedUnlock();
		#endif

		return_code = OSTaskDel(OS_PRIO_SELF);
		alt_ucosii_check_return_code(return_code);
	}
}

// Custom task 3
// It monitors PB3
// And it deletes itself afterwards
void custom_task_3(void* pdata) {
	INT8U return_code = OS_NO_ERR;

	while (1) {
		#if MY_NON_PREEMPTIVE_SCH == 1
				OSSchedLock();
		#endif

		printf("Hello from custom_task3\n");
		// Create custom task 2 which has a higher priority
		printf("Creating task custom_task_2...\n");
		return_code = OSTaskCreateExt(custom_task_2,
			NULL,
			(void *)&custom_task_stk[2][TASK_STACKSIZE-1],
			CUSTOM_TASK_2_PRIORITY,
			CUSTOM_TASK_2_PRIORITY,
			&custom_task_stk[2][0],
			TASK_STACKSIZE,
			&custom_task_tcb[2],
			0);
		alt_ucosii_check_return_code(return_code);
		printf("Finish creating task...\n");

		printf("Waiting for PB3 to be pressed...\n");
		while (OSSemAccept(PBSemaphore[3]) == 0) ;

		printf("PB3 pressed\n");

		OSTimeDly(20);

	  #if MY_NON_PREEMPTIVE_SCH == 1
				OSSchedUnlock();
	  #endif

		return_code = OSTaskDel(OS_PRIO_SELF);
		alt_ucosii_check_return_code(return_code);
	}
}

// Task launcher
// It creates custom tasks 0 and 3
// And it deletes itself afterwards
void task_launcher(void *pdata) {

	INT8U return_code = OS_NO_ERR;

	printf("Starting task launcher...\n");
	while (1) {
		printf("Creating task custom_task_0...\n");
		return_code = OSTaskCreateExt(custom_task_0,
			NULL,
			(void *)&custom_task_stk[0][TASK_STACKSIZE-1],
			CUSTOM_TASK_0_PRIORITY,
			CUSTOM_TASK_0_PRIORITY,
			&custom_task_stk[0][0],
			TASK_STACKSIZE,
			&custom_task_tcb[0],
			0);
		alt_ucosii_check_return_code(return_code);

		printf("Creating task custom_task_3...\n");

		return_code = OSTaskCreateExt(custom_task_3,
			NULL,
			(void *)&custom_task_stk[3][TASK_STACKSIZE-1],
			CUSTOM_TASK_3_PRIORITY,
			CUSTOM_TASK_3_PRIORITY,
			&custom_task_stk[3][0],
			TASK_STACKSIZE,
			&custom_task_tcb[3],
			0);
		alt_ucosii_check_return_code(return_code);

		printf("Finish creating/deleting tasks 1, 2 and 3 ...\n");
		printf("PB 0: Print OS info\n");
		#if MY_NON_PREEMPTIVE_SCH == 0
			printf("Experiment for preemptive scheduling...\n");
		#else
			printf("Experiment for non-preemptive scheduling...\n");
		#endif

		printf("\n");

		// Delay 1 sec
		OSTimeDlyHMSM(0, 0, 1, 0);

		return_code = OSTaskDel(OS_PRIO_SELF);
		alt_ucosii_check_return_code(return_code);
	}
}
