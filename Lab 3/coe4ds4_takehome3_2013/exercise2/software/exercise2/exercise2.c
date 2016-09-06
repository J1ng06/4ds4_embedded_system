// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

/*volatile char string_buffer[MAX_STRING_LENGTH];
volatile int cur_buf_length;
volatile int buffer_flush;
*/
int main()
{
	PS2_context context;
	printf("Start main...\n");

	context.buffer_flush = 0;
	context.cur_buf_length = 0;
	context.caps_lock = 0;
	context.key_status[0] = context.key_status[1] = context.key_status[2] = 0;
	context.key_status[3] = context.key_status[4] = context.key_status[5] = 0;
		
	init_PS2_irq(&context);
	printf("PS2 IRQ initialized...\n");

	IOWR(LED_GREEN_O_BASE, 0, 0x0);
	IOWR(LED_RED_O_BASE, 0, 0x0);
	
	printf("Switch value: %X\n", IORD(SWITCH_I_BASE, 0));
		
	while (1) {
		if (context.buffer_flush == 1) {
			printf("%s", context.string_buffer);
			context.buffer_flush = 0;
			context.string_buffer[0] = '\0';
			context.cur_buf_length = 0;
		}
	};
	
	return 0;
}
