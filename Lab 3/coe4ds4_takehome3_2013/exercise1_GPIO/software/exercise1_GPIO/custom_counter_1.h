// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Digital Systems Design course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#ifndef __CUSTOM_COUNTER_1_H__
#define __CUSTOM_COUNTER_1_H__

// Global functions
void handle_counter_1_expire_interrupts(elevator_struct *);
int read_counter_1();
void reset_counter_1();
int read_counter_1_interrupt();
void init_counter_1_irq(elevator_struct *);
void load_counter_1_config(int);
#endif
