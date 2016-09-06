// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#ifndef	  __define_H__
#define	  __define_H__

#include <io.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include "sys/alt_alarm.h"
#include "alt_types.h"
#include "system.h"
#include "sys/alt_irq.h"
#include "PS2_controller.h"

#define MAX_STRING_LENGTH 10

typedef volatile struct {
	char string_buffer[MAX_STRING_LENGTH];
	int cur_buf_length;
	int buffer_flush;
	alt_u8 caps_lock;
	// key_status stores the state of each key so that 
	// characters are only displayed on the first make code
	alt_u16 key_status[6];
} PS2_context;

#endif
