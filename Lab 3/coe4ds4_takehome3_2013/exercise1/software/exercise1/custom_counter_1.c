// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

// ISR when the counter_1 is expired
void handle_counter_1_expire_interrupts(elevator_struct *elevator_data)
{
	elevator_data->door_open_expire = 1;
	
	IOWR(CUSTOM_COUNTER_COMPONENT_1_BASE, 2, 0);
}

void reset_counter_1() {
	// printf("Resetting counter_1 value\n");

	IOWR(CUSTOM_COUNTER_COMPONENT_1_BASE, 1, 1);
	IOWR(CUSTOM_COUNTER_COMPONENT_1_BASE, 1, 0);

	IOWR(CUSTOM_COUNTER_COMPONENT_1_BASE, 2, 0);
}

int read_counter_1() {
	return IORD(CUSTOM_COUNTER_COMPONENT_1_BASE, 0);
}

int read_counter_1_interrupt() {
	return IORD(CUSTOM_COUNTER_COMPONENT_1_BASE, 2);
}

// Function for initializing the ISR of the Counter
void init_counter_1_irq(elevator_struct *elevator_data) {
	IOWR(CUSTOM_COUNTER_COMPONENT_1_BASE, 2, 0);

	alt_irq_register(CUSTOM_COUNTER_COMPONENT_1_IRQ, (void *)elevator_data, (void*)handle_counter_1_expire_interrupts );
}

void load_counter_1_config(int config) {
	IOWR(CUSTOM_COUNTER_COMPONENT_1_BASE, 3, config);
}
