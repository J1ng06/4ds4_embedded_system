// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

void KEY0_Pressed() {
	// printf("hahaha: %d\n", read_counter_0());
}

void KEY1_Pressed(elevator_struct *elevator_data) {
	int switch_val;
	
	if (((IORD(PUSH_BUTTON_I_BASE, 0) >> 1) & 0x1) == 0) {
		if (elevator_data->direction == 0 && elevator_data->door_open_expire == 1 && elevator_data->door_keep_open == 0) {
			// only load config when elevator is stationary with door close
			switch_val = (IORD(SWITCH_I_BASE, 0) & 0x18000) >> 15;
		    printf("Loading new config for counter1: %d\n", switch_val);
			load_counter_1_config(switch_val);
		}
	}
}

void KEY2_Pressed(elevator_struct *elevator_data) {
	int switch_val;

	if (((IORD(PUSH_BUTTON_I_BASE, 0) >> 2) & 0x1) == 0) {
		if (elevator_data->direction == 0 && elevator_data->door_open_expire == 1 && elevator_data->door_keep_open == 0) {
			// only load config when elevator is stationary with door close
			switch_val = (IORD(SWITCH_I_BASE, 0) & 0x18000) >> 15;
		    printf("Loading new config for counter0: %d\n", switch_val);
			load_counter_0_config(switch_val);
		}
	}
}

void KEY3_Pressed(elevator_struct *elevator_data) {	
	if (elevator_data->direction == 0 || elevator_data->door_open_expire == 0 || elevator_data->door_keep_open == 1) {
		// only allow door open when door_open_expire flag is 0, which means elevator is stopped with door open, and waiting for timer to expire
		if (((IORD(PUSH_BUTTON_I_BASE, 0) >> 3) & 0x1) == 0) {
	        printf("Door is kept open\n");
			elevator_data->door_keep_open = 1;
		} else {
	        printf("Door is not kept open\n");
			elevator_data->door_keep_open = 0;		
		}
	}
}

// ISR when any PB is pressed
void handle_button_interrupts(elevator_struct *elevator_data)
{	
	switch(IORD(PUSH_BUTTON_I_BASE, 3)) {
	case 1: KEY0_Pressed(); break;
	case 2: KEY1_Pressed(elevator_data); break;
	case 4: KEY2_Pressed(elevator_data); break;
	case 8: KEY3_Pressed(elevator_data); break;
	}
	IOWR(PUSH_BUTTON_I_BASE, 3, 0x0);
}

// Function for initializing the ISR of the PBs
// The PBs are setup to generate interrupt on either edge,
// and the interrupt is captured when the edge comes
void init_button_irq(elevator_struct *elevator_data) {
  // Enable all 4 button interrupts
  IOWR(PUSH_BUTTON_I_BASE, 2, BUTTON_INT_MASK);

  // Reset the edge capture register
  IOWR(PUSH_BUTTON_I_BASE, 3, 0x0);

  // Register the interrupt handler
  alt_irq_register(PUSH_BUTTON_I_IRQ, (void *)elevator_data, (void*)handle_button_interrupts );
}
