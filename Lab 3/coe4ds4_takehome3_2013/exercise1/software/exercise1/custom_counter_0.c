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
	
	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 2, 0);
}

void reset_counter_0() {
	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 1, 1);
	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 1, 0);

	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 2, 0);
}

int read_counter_0() {
	return IORD(CUSTOM_COUNTER_COMPONENT_0_BASE, 0);
}

int read_counter_0_interrupt() {
	return IORD(CUSTOM_COUNTER_COMPONENT_0_BASE, 2);
}

// Function for initializing the ISR of the Counter
void init_counter_0_irq(elevator_struct *elevator_data) {
	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 2, 0);

	alt_irq_register(CUSTOM_COUNTER_COMPONENT_0_IRQ, (void *)elevator_data, (void*)handle_counter_0_expire_interrupts );
}

void load_counter_0_config(int config) {
	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 3, config);
}
