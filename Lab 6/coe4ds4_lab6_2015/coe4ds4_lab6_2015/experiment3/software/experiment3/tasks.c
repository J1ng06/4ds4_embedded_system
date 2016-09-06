// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

// Definition of semaphore for PBs
OS_EVENT *PBSemaphore[4];

// Definition of Mutex for LCD
OS_EVENT *LCDMutex;

// Definition of task stacks
OS_STK	  initialize_task_stk[TASK_STACKSIZE];
OS_STK	  task_launcher_stk[TASK_STACKSIZE];

OS_STK	  custom_task_stk[NUM_TASK][TASK_STACKSIZE];
OS_TCB	  custom_task_tcb[NUM_TASK];

extern alt_up_character_lcd_dev *lcd_0;

// Local function prototypes
void custom_delay(int);

// Custom task 0
// It has a high priority to monitor PB0
// And it display OS info when PB0 is pressed
void custom_task_0(void* pdata) {
	INT8U return_code = OS_NO_ERR;
	OS_TCB tcb_data;

	OS_MUTEX_DATA mutex_data;
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
					i,
					tcb_data.OSTCBPrio,
					tcb_data.OSTCBStat,
					tcb_data.OSTCBCtxSwCtr);
			}
		}

		printf("\n");
		printf("Printing Mutex info:\n");
		return_code = OSMutexQuery(LCDMutex, &mutex_data);
		if (return_code == OS_NO_ERR) {
			printf("LCDMutex: PIP = %d, Owner = %d, Available = %d\n",
				mutex_data.OSMutexPIP,
				mutex_data.OSOwnerPrio,
				mutex_data.OSValue);
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
		printf("# of task created  : %d\n", OSTaskCtr);
		printf("# of context switch: %4ld\n", OSCtxSwCtr);
		OSTimeDlyHMSM(0, 0, 0, 100);
	}
}

// Custom task 1
// It monitors PB1
// And it display a message on LCD when PB1 is pressed
void custom_task_1(void* pdata) {
	INT8U return_code = OS_NO_ERR;

	while (1) {
		// Wait for PB1
		// Task will be suspended while waiting
		OSSemPend(PBSemaphore[1], 0, &return_code);
		alt_ucosii_check_return_code(return_code);

		printf("Printing msg 1 to LCD...\n");

		#if MY_MUTEX_ENABLE == 1
			printf("-Waiting for LCDMutex (1)...\n");
			OSMutexPend(LCDMutex, 0, &return_code);
			alt_ucosii_check_return_code(return_code);
			printf("-LCDMutex obtained (1)...\n");
		#endif

		printf("-Printing line 1 of msg 1 to LCD...\n");
	    alt_up_character_lcd_set_cursor_pos(lcd_0, 0, 0);
	   	alt_up_character_lcd_string(lcd_0, "Line 1/2 of msg1");

		// Delay the display of LCD
		custom_delay(DELAY_TICK);

		printf("-Printing line 2 of msg 1 to LCD...\n");
	    alt_up_character_lcd_set_cursor_pos(lcd_0, 0, 1);
	    alt_up_character_lcd_string(lcd_0, "Line 2/2 of msg1");		

		#if MY_MUTEX_ENABLE == 1
			printf("-Releasing LCDMutex (1)...\n");
			return_code = OSMutexPost(LCDMutex);
			alt_ucosii_check_return_code(return_code);
			printf("-LCDMutex released (1)...\n");
		#endif
		printf("done\n");
	}
}

// Custom task 2
// It monitors PB2
// And it display a message on LCD when PB2 is pressed
void custom_task_2(void* pdata) {
	INT8U return_code = OS_NO_ERR;

	while (1) {
		// Wait for PB2
		// Task will be suspended while waiting
		OSSemPend(PBSemaphore[2], 0, &return_code);
		alt_ucosii_check_return_code(return_code);

		printf("Printing msg 2 to LCD...\n");

		#if MY_MUTEX_ENABLE == 1
			printf("-Waiting for LCDMutex (2)...\n");
			OSMutexPend(LCDMutex, 0, &return_code);
			alt_ucosii_check_return_code(return_code);
			printf("-LCDMutex obtained (2)...\n");
		#endif

		printf("-Printing line 1 of msg 2 to LCD...\n");
	    alt_up_character_lcd_set_cursor_pos(lcd_0, 0, 0);
	   	alt_up_character_lcd_string(lcd_0, "Line 1/2 of msg2");

		// Delay the display of LCD
		custom_delay(DELAY_TICK);

		printf("-Printing line 2 of msg 2 to LCD...\n");
	    alt_up_character_lcd_set_cursor_pos(lcd_0, 0, 1);
	    alt_up_character_lcd_string(lcd_0, "Line 2/2 of msg2");		

		#if MY_MUTEX_ENABLE == 1
			printf("-Releasing LCDMutex (2)...\n");
			return_code = OSMutexPost(LCDMutex);
			alt_ucosii_check_return_code(return_code);
			printf("-LCDMutex released (2)...\n");
		#endif
		printf("done\n");
	}
}

// Custom task 3
// It monitors PB3
// And it erases all characters on LCD when PB3 is pressed
void custom_task_3(void* pdata) {
	INT8U return_code = OS_NO_ERR;
	int x, y;

	while (1) {
		// Wait for PB3
		// Task will be suspended while waiting
		OSSemPend(PBSemaphore[3], 0, &return_code);
		alt_ucosii_check_return_code(return_code);

		printf("Erasing LCD...\n");

		#if MY_MUTEX_ENABLE == 1
			printf("-Waiting for LCDMutex (3)...\n");
			OSMutexPend(LCDMutex, 0, &return_code);
			alt_ucosii_check_return_code(return_code);
			printf("-LCDMutex obtained (3)...\n");
		#endif
		for (y = 0; y < 2; y++) {
			printf("-Erasing line %d of LCD...\n", y);

			for (x = 0; x < 16; x++) {
				alt_up_character_lcd_erase_pos(lcd_0, x, y);
			}
			// Delay the display of LCD
			custom_delay(DELAY_TICK);
		}
		#if MY_MUTEX_ENABLE == 1
			printf("-Releasing LCDMutex (3)...\n");
			return_code = OSMutexPost(LCDMutex);
			alt_ucosii_check_return_code(return_code);
			printf("-LCDMutex released (3)...\n");
		#endif
		printf("done\n");
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
		
		IOWR(LED_GREEN_O_BASE, 0, IORD(SWITCH_GRPA_I_BASE, 0));
		IOWR(LED_RED_O_BASE, 0, IORD(SWITCH_GRPB_I_BASE, 0));
		
		printf("Creating tasks...\n");

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


		printf("Finish creating tasks...\n");

		printf("PB 0: Print OS info\n");
		printf("PB 1: Print msg1 to LCD\n");
		printf("PB 2: Print msg2 to LCD\n");
		printf("PB 3: Erase LCD\n");
		printf("\n");

		// Delay for 1 sec
		OSTimeDlyHMSM(0, 0, 1, 0);

		// Delete itself
		return_code = OSTaskDel(OS_PRIO_SELF);
		alt_ucosii_check_return_code(return_code);

		OS_EXIT_CRITICAL();
	}
}

// Function for occupying the processor for the specified number of clock ticks
// to simulate custom delay while keeping the task in the processor
void custom_delay(int ticks) {
    INT32U cur_tick;
    ticks--;
    cur_tick = OSTimeGet();
    while (ticks > 0) {
         if (OSTimeGet() > cur_tick) {
            ticks--;
            cur_tick = OSTimeGet();
         }  
    }
}
