// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

/*
extern volatile char string_buffer[];
extern volatile int cur_buf_length;
extern volatile int buffer_flush;
*/
void translate_PS2_code(int PS2_code, PS2_context *context) {
	if (context->cur_buf_length >= MAX_STRING_LENGTH-2) {
		printf("buffer overflow\n");
	} else if (!(context->key_status[PS2_code >> 4] & (1 << (PS2_code & 0xf)))) {
		// if this is the first make code for this keypress
		switch (PS2_code) {
			case 0x0E: context->string_buffer[context->cur_buf_length++] = '`'; break;
			case 0x16: context->string_buffer[context->cur_buf_length++] = '1'; break;
			case 0x1E: context->string_buffer[context->cur_buf_length++] = '2'; break;
			case 0x26: context->string_buffer[context->cur_buf_length++] = '3'; break;
			case 0x25: context->string_buffer[context->cur_buf_length++] = '4'; break;
			case 0x2E: context->string_buffer[context->cur_buf_length++] = '5'; break;
			case 0x36: context->string_buffer[context->cur_buf_length++] = '6'; break;
			case 0x3D: context->string_buffer[context->cur_buf_length++] = '7'; break;
			case 0x3E: context->string_buffer[context->cur_buf_length++] = '8'; break;
			case 0x46: context->string_buffer[context->cur_buf_length++] = '9'; break;
			case 0x45: context->string_buffer[context->cur_buf_length++] = '0'; break;
			case 0x4E: context->string_buffer[context->cur_buf_length++] = '-'; break;
			case 0x55: context->string_buffer[context->cur_buf_length++] = '='; break;
		
			case 0x5D: context->string_buffer[context->cur_buf_length++] = '\\'; break;
			case 0x15: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'Q' : 'q'; break;
			case 0x1D: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'W' : 'w'; break;
			case 0x24: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'E' : 'e'; break;
			case 0x2D: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'R' : 'r'; break;
			case 0x2C: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'T' : 't'; break;
			case 0x35: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'Y' : 'y'; break;
			case 0x3C: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'U' : 'u'; break;
			case 0x43: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'I' : 'i'; break;
			case 0x44: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'O' : 'o'; break;
			case 0x4D: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'P' : 'p'; break;
			case 0x54: context->string_buffer[context->cur_buf_length++] = '['; break;
			case 0x5B: context->string_buffer[context->cur_buf_length++] = ']'; break;

			case 0x1C: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'A' : 'a'; break;
			case 0x1B: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'S' : 's'; break;
			case 0x23: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'D' : 'd'; break;
			case 0x2B: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'F' : 'f'; break;
			case 0x34: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'G' : 'g'; break;
			case 0x33: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'H' : 'h'; break;
			case 0x3B: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'J' : 'j'; break;
			case 0x42: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'K' : 'k'; break;
			case 0x4B: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'L' : 'l'; break;
			case 0x4C: context->string_buffer[context->cur_buf_length++] = ';'; break;
			case 0x52: context->string_buffer[context->cur_buf_length++] = '\''; break;
			case 0x1A: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'Z' : 'z'; break;
			case 0x22: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'X' : 'x'; break;

			case 0x21: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'C' : 'c'; break;
			case 0x2A: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'V' : 'v'; break;
			case 0x32: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'B' : 'b'; break;
			case 0x31: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'N' : 'n'; break;
			case 0x3A: context->string_buffer[context->cur_buf_length++] = (context->caps_lock) ? 'M' : 'm'; break;
			case 0x41: context->string_buffer[context->cur_buf_length++] = ','; break;
			case 0x49: context->string_buffer[context->cur_buf_length++] = '.'; break;
			case 0x4A: context->string_buffer[context->cur_buf_length++] = '/'; break;
			case 0x29: context->string_buffer[context->cur_buf_length++] = ' '; break;
			case 0x5A: context->string_buffer[context->cur_buf_length++] = '\n'; break;
			case 0x58: context->caps_lock = !(context->caps_lock); break;
			// case 0x12: buffer[cur_buf_length++] = ''; break;
			// case 0x59: buffer[cur_buf_length++] = ''; break;
		}
	
		context->string_buffer[context->cur_buf_length] = '\0';
		context->buffer_flush = 1;
		context->key_status[PS2_code >> 4] |= (1 << (PS2_code & 0xf));
	}
}

void read_PS2_data(int *make_code_flag, int *PS2_code) {
	int data;
	
	data = IORD(PS2_CONTROLLER_COMPONENT_0_BASE, 0);
	*make_code_flag = (data >> 8) & 0x1;
	*PS2_code = data & 0xFF;
}

// ISR when the a PS2 code is acquired
void handle_PS2_interrupts(void *context, alt_u32 id)
{
	int make_code_flag, PS2_code;
	
	read_PS2_data(&make_code_flag, &PS2_code);
	
	if (PS2_code < 0x60) { // if we get a code for a valid key we can handle
		if (make_code_flag == 1) 
			translate_PS2_code(PS2_code, (PS2_context *)context);
		else 
			// clear status flag on break code
			((PS2_context *)context)->key_status[PS2_code >> 4] &= ((alt_u16) 0xffff) ^ (1 << (PS2_code & 0xf));
	}
		
	IOWR(PS2_CONTROLLER_COMPONENT_0_BASE, 0, 0);
}

// Function for initializing the ISR of the PS2 controller
void init_PS2_irq(PS2_context *context) {
	IOWR(PS2_CONTROLLER_COMPONENT_0_BASE, 0, 0);

	alt_irq_register(PS2_CONTROLLER_COMPONENT_0_IRQ, (void *)context, (void*)handle_PS2_interrupts );
}
