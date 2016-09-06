// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

// ISR when the counter is expired
void handle_counter_expire_interrupts()
{
	printf("Counter expires\n");
		
	IOWR(CUSTOM_COUNTER_COUNTER_EXPIRE_BASE, 3, 0x0);
}

void reset_counter() {
	printf("Resetting counter value\n");

	IOWR(CUSTOM_COUNTER_RESET_COUNTER_BASE, 0, 1);
	IOWR(CUSTOM_COUNTER_RESET_COUNTER_BASE, 0, 0);
}

int read_counter() {
	return IORD(CUSTOM_COUNTER_VALUE_BASE, 0);
}

int read_counter_interrupt() {
	return IORD(CUSTOM_COUNTER_COUNTER_EXPIRE_BASE, 0);
}

void load_counter_config(int config) {
	printf("Loading counter config %d\n", config);
	
	IOWR(CUSTOM_COUNTER_LOAD_CONFIG_BASE, 0, config);
	IOWR(CUSTOM_COUNTER_LOAD_BASE, 0, 1);
	IOWR(CUSTOM_COUNTER_LOAD_BASE, 0, 0);
}

// Function for initializing the ISR of the Counter
void init_counter_irq() {
	IOWR(CUSTOM_COUNTER_COUNTER_EXPIRE_BASE, 2, 0x1);

	IOWR(CUSTOM_COUNTER_COUNTER_EXPIRE_BASE, 3, 0x0);

	reset_counter();

	alt_irq_register(CUSTOM_COUNTER_COUNTER_EXPIRE_IRQ, NULL, (void*)handle_counter_expire_interrupts );
}
