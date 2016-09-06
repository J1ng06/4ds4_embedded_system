// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

#include "alt_types.h"
#include "sys/alt_alarm.h"
#include "sys/alt_irq.h"
#include "system.h"
#include "nios2.h"
#include "io.h"
#include "altera_avalon_mutex.h"
#include "altera_up_avalon_character_lcd.h"

#define MESSAGE_WAITING_LCD 2
#define MESSAGE_WAITING_UART 1
#define NO_MESSAGE 0

#define LOCK_SUCCESS 0
#define LOCK_FAIL 1

#define MESSAGE_BUFFER_BASE MESSAGE_BUFFER_RAM_BASE

#define MS_DELAY 1000

//#define NULL 0x0

// Message buffer structure
typedef struct {
	char flag;
	
	// the buffer can hold up to 4KBytes data
	char buf[100];
} message_buffer_struct;

// Global functions
void handle_cpu2_button_interrupts(void *lcd_0) {
    // alt_up_character_lcd_set_cursor_pos((alt_up_character_lcd_dev *)lcd_0, 0, 0);
    // alt_up_character_lcd_string((alt_up_character_lcd_dev *)lcd_0, "CPU2 PB pressed!");

	switch(IORD(CPU2_PB_BUTTON_I_BASE, 3)) {
		case 1: IOWR(CPU2_LED_GREEN_O_BASE, 0, 1); break;
		case 2: IOWR(CPU2_LED_GREEN_O_BASE, 0, 4); break;
		
	// case 1: alt_up_character_lcd_string((alt_up_character_lcd_dev *)lcd_0, "CPU12PB0 pressed"); break;
	// case 2: alt_up_character_lcd_string((alt_up_character_lcd_dev *)lcd_0, "CPU12PB1 pressed"); break;
	}

	IOWR(CPU2_PB_BUTTON_I_BASE, 3, 0x0);
}

// custom sprintf function for small code size
// This is because we only have 32KB memory for CPU2
void custom_sprintf(char *buffer, int cpuid, int count) {
	int pos, i;

	for (i = 0; i < 17; i++)
		buffer[i] = "Message from CPU "[i];
	pos = i;
	buffer[pos++] = "0123"[cpuid];
	for (i = pos; i < pos + 15; i++)
		buffer[i] = ". Number sent: "[i-pos];
	pos = i;
	buffer[pos++] = "0123456789ABCDEF"[count & 0xF];
	buffer[pos++] = '\n';
	buffer[pos] = '\0';
}

// The main function
int main() {
	alt_up_character_lcd_dev *lcd_0;

	// Pointer to our mutex device
	alt_mutex_dev* mutex = NULL;

	// Local variables
	unsigned int id;
	unsigned int value;
	unsigned int count = 0;
	unsigned int ticks_at_last_message;
    int switches;

	message_buffer_struct *message;
	
	IOWR(CPU2_PB_BUTTON_I_BASE, 2, 0x3);
	IOWR(CPU2_PB_BUTTON_I_BASE, 3, 0x0);
	alt_irq_register(CPU2_PB_BUTTON_I_IRQ, (void *)lcd_0, (void*)handle_cpu2_button_interrupts );
  
   	lcd_0 = alt_up_character_lcd_open_dev(CPU2_CHARACTER_LCD_0_NAME);
        
    alt_up_character_lcd_init(lcd_0);
    
    alt_up_character_lcd_string(lcd_0, "COE4DS4 Winter15");
    
    alt_up_character_lcd_set_cursor_pos(lcd_0, 0, 1);
    
    alt_up_character_lcd_string(lcd_0, "Lab7     exp.  3");
    
    // Reading switches 7-0 for CPU2
    switches = IORD(CPU2_SWITCH_I_BASE, 0);

	// Get our processor ID (add 1 so it matches the cpu name in SOPC Builder)
	NIOS2_READ_CPUID(id);

	// Value can be any non-zero value
	value = 1;

	// Initialize the message buffer location
	message = (message_buffer_struct*)MESSAGE_BUFFER_BASE;

	// Okay, now we'll open the real mutex
	// It's not actually a mutex to share the jtag_uart, but to share a message
	// buffer which CPU1 is responsible for reading and printing to the jtag_uart.
	mutex = altera_avalon_mutex_open(MESSAGE_BUFFER_MUTEX_NAME);

	// We'll use the system clock to keep track of our delay time.
	// Here we initialize delay tracking variable.
	ticks_at_last_message = alt_nticks();

	if (mutex) {
		message->flag = NO_MESSAGE;

		while(1) {
			// See if it's time to send a message yet
			if (alt_nticks() >= (ticks_at_last_message + ((alt_ticks_per_second() * (MS_DELAY)) / 1000))) 	{
				ticks_at_last_message = alt_nticks();

				// Try and aquire the mutex (non-blocking).
				if(altera_avalon_mutex_trylock(mutex, value) == LOCK_SUCCESS) {
					// Check if the message buffer is empty
					if(message->flag == NO_MESSAGE) {
						count++;

						// Send the message to the buffer
						custom_sprintf(message->buf, id, count);

						// Set the flag that a message has been put in the buffer
						// And this message should be displayed on UART connected to CPU1
						message->flag = MESSAGE_WAITING_UART;
					}
					// Release the mutex
					altera_avalon_mutex_unlock(mutex);
				}
			}

			// Check the message buffer
			// and if there's a message waiting with the correct flag, display on LCD.
			// Note it will always print the first 32 characters in the buffer
			if(message->flag == MESSAGE_WAITING_LCD) {
			    alt_up_character_lcd_set_cursor_pos(lcd_0, 0, 0);
			    alt_up_character_lcd_string(lcd_0, message->buf);

			    alt_up_character_lcd_set_cursor_pos(lcd_0, 0, 1);
			    alt_up_character_lcd_string(lcd_0, message->buf+16);
				
				// Clear the flag
				message->flag = NO_MESSAGE;
			}
		}
	}

	return(0);
}
