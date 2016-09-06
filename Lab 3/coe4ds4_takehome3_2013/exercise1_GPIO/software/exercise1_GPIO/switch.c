// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

extern volatile int floor_request;

// ISR when any PB is pressed
void handle_switch_interrupts(elevator_struct *elevator_data)
{
	elevator_data->floor_request = elevator_data->floor_request | (IORD(SWITCH_I_BASE, 3) & 0xFFF);
	
	IOWR(SWITCH_I_BASE, 3, 0x0);
}

// Function for initializing the ISR of the PBs
// The PBs are setup to generate interrupt on falling edge,
// and the interrupt is captured when the edge comes
void init_switch_irq(elevator_struct *elevator_data) {
  // Enable switches[16:15] and switches[11:0] interrupts
  IOWR(SWITCH_I_BASE, 2, 0x18FFF);

  // Reset the edge capture register
  IOWR(SWITCH_I_BASE, 3, 0x0);

  // Register the interrupt handler
  alt_irq_register(SWITCH_I_IRQ, (void *)elevator_data, (void*)handle_switch_interrupts );
}
