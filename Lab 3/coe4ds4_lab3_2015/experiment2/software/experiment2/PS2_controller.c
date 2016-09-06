// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "define.h"

extern volatile char string_buffer[];
extern volatile int cur_buf_length;
extern volatile int buffer_flush;

void translate_PS2_code(char buffer[], int PS2_code) {
	if (cur_buf_length >= MAX_STRING_LENGTH-2) {
		printf("buffer overflow\n");
	} else {
		switch (PS2_code) {
			case 0x0E: buffer[cur_buf_length++] = '`'; break;
			case 0x16: buffer[cur_buf_length++] = '1'; break;
			case 0x1E: buffer[cur_buf_length++] = '2'; break;
			case 0x26: buffer[cur_buf_length++] = '3'; break;
			case 0x25: buffer[cur_buf_length++] = '4'; break;
			case 0x2E: buffer[cur_buf_length++] = '5'; break;
			case 0x36: buffer[cur_buf_length++] = '6'; break;
			case 0x3D: buffer[cur_buf_length++] = '7'; break;
			case 0x3E: buffer[cur_buf_length++] = '8'; break;
			case 0x46: buffer[cur_buf_length++] = '9'; break;
			case 0x45: buffer[cur_buf_length++] = '0'; break;
			case 0x4E: buffer[cur_buf_length++] = '-'; break;
			case 0x55: buffer[cur_buf_length++] = '='; break;
		
			case 0x5D: buffer[cur_buf_length++] = '\\'; break;
			case 0x15: buffer[cur_buf_length++] = 'q'; break;
			case 0x1D: buffer[cur_buf_length++] = 'w'; break;
			case 0x24: buffer[cur_buf_length++] = 'e'; break;
			case 0x2D: buffer[cur_buf_length++] = 'r'; break;
			case 0x2C: buffer[cur_buf_length++] = 't'; break;
			case 0x35: buffer[cur_buf_length++] = 'y'; break;
			case 0x3C: buffer[cur_buf_length++] = 'u'; break;
			case 0x43: buffer[cur_buf_length++] = 'i'; break;
			case 0x44: buffer[cur_buf_length++] = 'o'; break;
			case 0x4D: buffer[cur_buf_length++] = 'p'; break;
			case 0x54: buffer[cur_buf_length++] = '['; break;
			case 0x5B: buffer[cur_buf_length++] = ']'; break;

			case 0x1C: buffer[cur_buf_length++] = 'a'; break;
			case 0x1B: buffer[cur_buf_length++] = 's'; break;
			case 0x23: buffer[cur_buf_length++] = 'd'; break;
			case 0x2B: buffer[cur_buf_length++] = 'f'; break;
			case 0x34: buffer[cur_buf_length++] = 'g'; break;
			case 0x33: buffer[cur_buf_length++] = 'h'; break;
			case 0x3B: buffer[cur_buf_length++] = 'j'; break;
			case 0x42: buffer[cur_buf_length++] = 'k'; break;
			case 0x4B: buffer[cur_buf_length++] = 'l'; break;
			case 0x4C: buffer[cur_buf_length++] = ';'; break;
			case 0x52: buffer[cur_buf_length++] = '\''; break;
			case 0x1A: buffer[cur_buf_length++] = 'z'; break;
			case 0x22: buffer[cur_buf_length++] = 'x'; break;

			case 0x21: buffer[cur_buf_length++] = 'c'; break;
			case 0x2A: buffer[cur_buf_length++] = 'v'; break;
			case 0x32: buffer[cur_buf_length++] = 'b'; break;
			case 0x31: buffer[cur_buf_length++] = 'n'; break;
			case 0x3A: buffer[cur_buf_length++] = 'm'; break;
			case 0x41: buffer[cur_buf_length++] = ','; break;
			case 0x49: buffer[cur_buf_length++] = '.'; break;
			case 0x4A: buffer[cur_buf_length++] = '/'; break;
			case 0x29: buffer[cur_buf_length++] = ' '; break;
			case 0x5A: buffer[cur_buf_length++] = '\n'; break;
			// case 0x12: buffer[cur_buf_length++] = ''; break;
			// case 0x59: buffer[cur_buf_length++] = ''; break;
		}
	
		buffer[cur_buf_length] = '\0';
	}
}

void read_PS2_data(int *make_code_flag, int *PS2_code) {
	int data;
	
	data = IORD(PS2_CONTROLLER_COMPONENT_0_BASE, 0);
	*make_code_flag = (data >> 8) & 0x1;
	*PS2_code = data & 0xFF;
}

// ISR when the a PS2 code is acquired
void handle_PS2_interrupts()
{
	int make_code_flag, PS2_code;
	
	read_PS2_data(&make_code_flag, &PS2_code);
	
	if (make_code_flag == 1) {
		translate_PS2_code(string_buffer, PS2_code);
		buffer_flush = 1;
	}
		
	IOWR(PS2_CONTROLLER_COMPONENT_0_BASE, 0, 0);
}

// Function for initializing the ISR of the PS2 controller
void init_PS2_irq() {
	IOWR(PS2_CONTROLLER_COMPONENT_0_BASE, 0, 0);

	alt_irq_register(PS2_CONTROLLER_COMPONENT_0_IRQ, NULL, (void*)handle_PS2_interrupts );
}
