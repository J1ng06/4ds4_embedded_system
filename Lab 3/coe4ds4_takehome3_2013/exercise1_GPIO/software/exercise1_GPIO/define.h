// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Digital Systems Design course (COE4DS4)
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

typedef struct elevator {
	int direction;
	int current_floor;
	int floor_request;
	int door_open_expire;
	int door_keep_open;
	int elevator_moving;
} elevator_struct;

#include "PB_button.h"
#include "switch.h"
#include "custom_counter_0.h"
#include "custom_counter_1.h"
#endif
