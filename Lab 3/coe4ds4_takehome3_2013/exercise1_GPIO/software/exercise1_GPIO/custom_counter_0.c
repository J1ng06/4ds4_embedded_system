// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

// ISR when the counter_0 is expired
void handle_counter_0_expire_interrupts(elevator_struct *elevator_data)
{
	if (elevator_data->direction == 1) {
		elevator_data->current_floor++;
	} else {
		if (elevator_data->direction == -1) {
			elevator_data->current_floor--;
		}
	}

	elevator_data->elevator_moving = 0;
	
	IOWR(CUSTOM_COUNTER_0_COUNTER_EXPIRE_BASE, 3, 0x0);
}

void reset_counter_0() {
	// printf("Resetting counter_0 value\n");
	IOWR(CUSTOM_COUNTER_0_RESET_COUNTER_BASE, 0, 1);
	IOWR(CUSTOM_COUNTER_0_RESET_COUNTER_BASE, 0, 0);
}

int read_counter_0() {
	return IORD(CUSTOM_COUNTER_0_VALUE_BASE, 0);
}

int read_counter_0_interrupt() {
	return IORD(CUSTOM_COUNTER_0_COUNTER_EXPIRE_BASE, 0);
}

// Function for initializing the ISR of the Counter
void init_counter_0_irq(elevator_struct *elevator_data) {
	IOWR(CUSTOM_COUNTER_0_COUNTER_EXPIRE_BASE, 2, 0x1);

	IOWR(CUSTOM_COUNTER_0_COUNTER_EXPIRE_BASE, 3, 0x0);

	alt_irq_register(CUSTOM_COUNTER_0_COUNTER_EXPIRE_IRQ, (void *)elevator_data, (void*)handle_counter_0_expire_interrupts );
}

void load_counter_0_config(int config) {
	IOWR(CUSTOM_COUNTER_0_LOAD_CONFIG_BASE, 0, config);
	IOWR(CUSTOM_COUNTER_0_LOAD_BASE, 0, 1);
	IOWR(CUSTOM_COUNTER_0_LOAD_BASE, 0, 0);
}
