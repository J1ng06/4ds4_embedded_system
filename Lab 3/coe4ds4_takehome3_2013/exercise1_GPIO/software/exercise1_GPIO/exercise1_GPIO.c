// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

alt_u16 disp_seven_seg(alt_u8 val) {
    switch (val) {
        case  0 : return 0x40;
        case  1 : return 0x79;
        case  2 : return 0x24;
        case  3 : return 0x30;
        case  4 : return 0x19;
        case  5 : return 0x12;
        case  6 : return 0x02;
        case  7 : return 0x78;
        case  8 : return 0x00;
        case  9 : return 0x18;
        case 10 : return 0x08;
        case 11 : return 0x03;
        case 12 : return 0x46;
        case 13 : return 0x21;
        case 14 : return 0x06;
        case 15 : return 0x0e;
        default : return 0x7f;
    }
}        

int main()
{
	elevator_struct elevator_data;
	
	printf("Start main...\n");

	init_button_irq(&elevator_data);
	printf("PB initialized...\n");
	
	init_counter_0_irq(&elevator_data);
	printf("Counter 0 IRQ initialized...\n");
	
	init_counter_1_irq(&elevator_data);
	printf("Counter 1 IRQ initialized...\n");

	init_switch_irq(&elevator_data);
	printf("Switch IRQ initialized...\n");

	IOWR(LED_GREEN_O_BASE, 0, 0x0);
	IOWR(LED_RED_O_BASE, 0, 0x0);
		
	elevator_data.current_floor = 0;
	elevator_data.direction = 0;
	elevator_data.floor_request = 0;
	elevator_data.door_open_expire = 1;
	elevator_data.door_keep_open = 0;
	elevator_data.elevator_moving = 0;
	
	while (1) {
		IOWR(LED_RED_O_BASE, 0, elevator_data.floor_request);
		IOWR(LED_GREEN_O_BASE, 0, (elevator_data.direction << 1) | ((~elevator_data.door_open_expire | elevator_data.door_keep_open) & 0x1));
		IOWR(SEVEN_SEGMENT_N_O_0_BASE, 0, disp_seven_seg(elevator_data.current_floor));
		
		if (elevator_data.elevator_moving == 0) {
			if (elevator_data.direction != 0) {
				if (((elevator_data.floor_request >> elevator_data.current_floor) & 0x1) == 1) {
					elevator_data.floor_request = elevator_data.floor_request & ~(0x1 << elevator_data.current_floor);	

					// This floor is requested
					elevator_data.door_open_expire = 0;
					reset_counter_1();
				} else {
					if (elevator_data.door_open_expire == 1 && elevator_data.door_keep_open == 0) {
						if (elevator_data.direction == 1) {
							// elevator going up
							if (elevator_data.current_floor < 11) {
								if ((elevator_data.floor_request >> elevator_data.current_floor) != 0) {
									// there are still requests at the upper floor, so keep moving up
				                    printf("elevator at floor %d, keeps going up...\n", elevator_data.current_floor);
									elevator_data.elevator_moving = 1;
									reset_counter_0();					
								} else {
									if (elevator_data.floor_request != 0) {
				                        printf("elevator at floor %d, now doing down...\n", elevator_data.current_floor);
										// no more request going up, but there are request going down
										elevator_data.direction = -1;
										elevator_data.elevator_moving = 1;
										reset_counter_0();					
									} else {
										// no more request
			                            printf("elevator stopped...\n");
			                            elevator_data.direction = 0;
									}
								}
							} else {
								// already hit the top floor, so start going down
								if (elevator_data.floor_request != 0) {
				                    printf("elevator hit top floor, starts going down...\n");
									elevator_data.direction = -1;
									elevator_data.elevator_moving = 1;
									reset_counter_0();					
								} else {
		                            printf("elevator hit top floor and stopped...\n");
									// no more request
									elevator_data.direction = 0;
								}
							}
						} else {
							// elevator going down
							if (elevator_data.current_floor > 0) {
								if ((elevator_data.floor_request & ((~(0xFFF << elevator_data.current_floor)) & 0xFFF)) != 0) {
									// there are still requests at the lower floor, so keep moving down
				                    printf("elevator at floor %d, keeps going down...\n", elevator_data.current_floor);
									elevator_data.elevator_moving = 1;
									reset_counter_0();					
								} else {
									if (elevator_data.floor_request != 0) {
										// no more request going down, but there are request going up
				                        printf("elevator at floor %d, now goes up...\n", elevator_data.current_floor);
										elevator_data.direction = 1;
										elevator_data.elevator_moving = 1;
										reset_counter_0();					
									} else {
										// no more request
			                            printf("elevator stopped...\n");
		                                elevator_data.direction = 0;
									}                            
								}
							} else {
								// already hit the lowest floor, so start going up
								if (elevator_data.floor_request != 0) {
			                        printf("elevator hit bottom floor, starts going up...\n");
									elevator_data.direction = 1;
									elevator_data.elevator_moving = 1;
									reset_counter_0();					
								} else {
		                            printf("elevator hit bottom floor and stopped...\n");
									// no more request
									elevator_data.direction = 0;
								}
							}			
						}
					}
				}
			} else {
				if (elevator_data.door_open_expire == 1 && elevator_data.door_keep_open == 0) {
					if (elevator_data.floor_request != 0) {
						// elevator stop and new request comes in
			            if ((elevator_data.floor_request >> elevator_data.current_floor) != 0) {
			                printf("elevator start going up...\n");
			                elevator_data.direction = 1;
			            } else {
			                printf("elevator start going down...\n");
			                elevator_data.direction = -1;
			            }
						elevator_data.elevator_moving = 1;
						reset_counter_0();
					}
				}
			}
		}			
	}
	
	return 0;
}
