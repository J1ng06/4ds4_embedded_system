// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Digital Systems Design course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#ifndef __CUSTOM_COUNTER_0_H__
#define __CUSTOM_COUNTER_0_H__

// Global functions
void handle_counter_0_expire_interrupts(elevator_struct *);
int read_counter_0();
void reset_counter_0();
int read_counter_0_interrupt();
void init_counter_0_irq(elevator_struct *);
void load_counter_0_config(int);
#endif
