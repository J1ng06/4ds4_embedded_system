// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include <stdio.h>
#include <string.h>
#include "sys/alt_alarm.h"
#include "alt_types.h"
#include "sys/alt_irq.h"
#include "system.h"
#include "nios2.h"
#include "io.h"
#include "altera_avalon_mutex.h"
#include "altera_avalon_performance_counter.h"

#define MESSAGE_WAITING_LCD 2
#define MESSAGE_WAITING_UART 1
#define NO_MESSAGE 0

#define LOCK_SUCCESS 0
#define LOCK_FAIL 1

#define MESSAGE_BUFFER_BASE MESSAGE_BUFFER_RAM_BASE

#define MS_DELAY 1000

// Message buffer structure
typedef struct {
	char flag;
	
	// the buffer can hold up to 4KBytes data
	char buf[100];
} message_buffer_struct;

// For performance counter
void *performance_name = CPU1_PERFORMANCE_COUNTER_BASE;

// Global functions
void handle_cpu1_button_interrupts() {
	switch(IORD(CPU1_PB_BUTTON_I_BASE, 3)) {
	case 1: printf("CPU1 PB0 pressed\n"); break;
	case 2: printf("CPU1 PB1 pressed\n"); break;
	}
	IOWR(CPU1_PB_BUTTON_I_BASE, 3, 0x0);
}

// The main function
int main() {
	// Pointer to our mutex device
	alt_mutex_dev* mutex = NULL;

	// Local variables
	unsigned int id;
	unsigned int value;
	unsigned int count = 0;
	unsigned int ticks_at_last_message;
	int switches;

	message_buffer_struct *message;

	// For performance counter
	PERF_RESET(CPU1_PERFORMANCE_COUNTER_BASE);

	// Reading switches 15-8 for CPU1
	switches = IORD(CPU1_SWITCH_I_BASE, 0);
	
	// Enable all button interrupts
	IOWR(CPU1_PB_BUTTON_I_BASE, 2, 0x3);
	IOWR(CPU1_PB_BUTTON_I_BASE, 3, 0x0);
	alt_irq_register(CPU1_PB_BUTTON_I_IRQ, NULL, (void*)handle_cpu1_button_interrupts );
  
	// Get our processor ID (add 1 so it matches the cpu name in SOPC Builder)
	NIOS2_READ_CPUID(id);

	printf("COE4DS4 Winter15\n");
	printf("Lab7     exp.  3\n\n");

	// Value can be any non-zero value
	value = 1;

	// Initialize the message buffer location
	message = (message_buffer_struct*)MESSAGE_BUFFER_BASE;

	// Okay, now we'll open the real mutex
	// It's not actually a mutex to share the jtag_uart, but to share a message
	// buffer which CPU1 is responsible for reading and printing to the jtag_uart.
	mutex = altera_avalon_mutex_open(MESSAGE_BUFFER_MUTEX_NAME);

	// We'll use the system clock to keep track of our delay time.
	// Here we initialize delay tracking variable.
	ticks_at_last_message = alt_nticks();

	if (mutex) {
		message->flag = NO_MESSAGE;
		
		while(1) {
			// See if it's time to send a message yet
			if (alt_nticks() >= (ticks_at_last_message + ((alt_ticks_per_second() * (MS_DELAY)) / 1000))) {
				ticks_at_last_message = alt_nticks();

				// Try and aquire the mutex (non-blocking).
				if(altera_avalon_mutex_trylock(mutex, value) == LOCK_SUCCESS) {
					// Check if the message buffer is empty
					if(message->flag == NO_MESSAGE) {
						count++;

						// Send the message to the buffer						
						sprintf(message->buf, "Mesg from CPU %d.Number sent: %d  ", id, count);

						// Set the flag that a message has been put in the buffer
						// And this message should be displayed on LCD connected to CPU2
						message->flag = MESSAGE_WAITING_LCD;
					}
					// Release the mutex
					altera_avalon_mutex_unlock(mutex);
				}
			}

			// Check the message buffer
			// and if there's a message waiting with the correct flag, print it to stdout.
			if(message->flag == MESSAGE_WAITING_UART) {
				printf("%s", message->buf);

				// Clear the flag
				message->flag = NO_MESSAGE;
			}
		}
	}
	
	return(0);
}
