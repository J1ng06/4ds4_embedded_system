// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

// This is the embedded software for the LCD design

#include <stdio.h>
#include "io.h"
#include "system.h"
#include "sys/alt_irq.h"
#include "sys/alt_stdio.h"
#include "priv/alt_busy_sleep.h"

int RGB_colour(int colour) {
    switch (colour & 0x7) {
        case 0 : return 0x00000000; // black 
        case 4 : return 0x000003FF; // red 
        case 2 : return 0x7C007C00; // green 
        case 6 : return 0x7C007FFF; // yellow
        case 1 : return 0x03FF0000; // blue
        case 5 : return 0x03FF03FF; // magenta
        case 3 : return 0x7FFF7C00; // cyan
        case 7 : return 0x7FFF7FFF; // white
    }
    return 0x00000000;
}    

void draw_squares_slow(alt_u8, alt_u8, alt_u8);
void draw_squares_fast(alt_u8, alt_u8, alt_u8);
void Button_Labels(void);

void TouchPanel_int() {
    static alt_u8 cursor_i = 0, cursor_j = 0;
	static alt_u8 cursor_size = 8;
    int TP_val, x_val, y_val, key = 6;

    TP_val = IORD(NIOS_LCD_COMPONENT_0_TOUCHPANEL_BASE, 0);
    x_val = (TP_val >> 20) & 0xFF; y_val = (TP_val >> 4) & 0xFF;

    if (((TP_val >> 31) & 0x1) && (x_val >= 0xC9) && (x_val <= 0xF1)) {
        if ((y_val >= 0x17) && (y_val <= 0x33)) { // Key 0
            key = 0;
            IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0, 0x1);
        }
        if ((y_val >= 0x3D) && (y_val <= 0x58)) { // Key 1
            key = 1;
            IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0, 0x2);
        }
        if ((y_val >= 0x62) && (y_val <= 0x7E)) { // Key 2
            key = 2;
            IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0, 0x4);
        }
        if ((y_val >= 0x88) && (y_val <= 0xA4)) { // Key 3
            key = 3;
            IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0, 0x8);
        }
        if ((y_val >= 0xAE) && (y_val <= 0xC9)) { // Key 4
            key = 4;
            IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0, 0x10);
        }
        if ((y_val >= 0xD3) && (y_val <= 0xEF)) { // Key 5
            key = 5;
            IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0, 0x20);
        }
    } else IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0, 0x0);
        
    if (IORD(NIOS_LCD_COMPONENT_0_TOUCHPANEL_BASE, 2) & 0x2) { // posedge
        switch (key) {
            case 0 : if (cursor_i > 0) cursor_i--; break;
            case 1 : if (cursor_i < 14) cursor_i++; break;
            case 2 : if (cursor_j > 0) cursor_j--; break;
            case 3 : if (cursor_j < 19) cursor_j++; break;
            case 4 : if (cursor_size < 32) cursor_size += 4; break;
            case 5 : if (cursor_size > 4) cursor_size -= 4; break;
        }
        // draw_squares_slow(cursor_i, cursor_j, cursor_size);
        draw_squares_fast(cursor_i, cursor_j, cursor_size);
    }

    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0, 0x0);
    TP_val = IORD(NIOS_LCD_COMPONENT_0_TOUCHPANEL_BASE, 2);
    IOWR(NIOS_LCD_COMPONENT_0_TOUCHPANEL_BASE, 2, TP_val & 0x30);
}

void draw_squares_slow(alt_u8 cursor_i, alt_u8 cursor_j, alt_u8 cursor_size) {
    alt_u32 RGB;
    alt_u16 i, j;
    alt_u8 colour = 0;
    static alt_u8 colours[15][20], flag = 0;

    // initialize colours array
    if (!flag) {
        for (i = 0; i < 15; i++)
            for (j = 0; j < 20; j++)
                colours[i][j] = colour++;
        flag = 1;
    }
    
    // Set pixel position to top-left corner
    IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 2, 0x1);

    // fill in pixels
    for (i = 0; i < 480; i++) 
        for (j = 0; j < 640; j++) {
            colour = colours[i >> 5][j >> 5];
            if (
                ((i & 0x1F) >= (16-(cursor_size/2))) && ((i & 0x1F) <= (16+(cursor_size/2))) &&  
                ((j & 0x1F) >= (16-(cursor_size/2))) && ((j & 0x1F) <= (16+(cursor_size/2))) && 
                ((i >> 5) == cursor_i) && ((j >> 5) == cursor_j)
            ) colour ^= 0x7;
            RGB = RGB_colour((int)colour);
            IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 0, RGB);
        }   
}

void draw_squares_fast(alt_u8 cursor_i, alt_u8 cursor_j, alt_u8 cursor_size) {
    alt_u32 RGB;
    alt_u16 i, j;
    alt_u8 blk_i, blk_j, pix_j, colour = 0;
    static alt_u8 colours[15][20], flag = 0;
    
    // initialize colours array
    if (!flag) {
        for (i = 0; i < 15; i++)
            for (j = 0; j < 20; j++)
                colours[i][j] = colour++;
        flag = 1;
    }
    
    // Set pixel position to top-left corner
    IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 2, 0x1);

    // rows before cursor position
    for (i = 0; i < (((alt_u16)cursor_i) << 5) + (16-(cursor_size/2)); i++) {
        blk_i = i >> 5;
        for (blk_j = 0; blk_j < 20; blk_j++) {
            colour = colours[blk_i][blk_j];
            RGB = RGB_colour((int)colour);
            for (pix_j = 0; pix_j < 32; pix_j++) 
                IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 0, RGB);
        }
    }

    // rows of the cursor
    blk_i = i >> 5;
    for (; i < (((alt_u16)cursor_i) << 5) + (16+(cursor_size/2)); i++) {
        // columns before the cursor
        for (blk_j = 0; blk_j < cursor_j; blk_j++) {
            colour = colours[blk_i][blk_j];
            RGB = RGB_colour((int)colour);
            for (pix_j = 0; pix_j < 32; pix_j++) 
                IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 0, RGB);
        }
        colour = colours[blk_i][blk_j];
        RGB = RGB_colour((int)colour);        
        for (pix_j = 0; pix_j < 16-(cursor_size/2); pix_j++) 
            IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 0, RGB);
        
        // columns of the cursor
        colour ^= 0x7;
        RGB = RGB_colour((int)colour);        
        for (; pix_j < 16+(cursor_size/2); pix_j++) 
            IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 0, RGB);
                    
        // columns after the cursor
        colour ^= 0x7;
        RGB = RGB_colour((int)colour);        
        for (; pix_j < 32; pix_j++) 
            IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 0, RGB);
        for (blk_j = blk_j+1; blk_j < 20; blk_j++) {
            colour = colours[blk_i][blk_j];
            RGB = RGB_colour((int)colour);
            for (pix_j = 0; pix_j < 32; pix_j++) 
                IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 0, RGB);
        }
    }
    
    // rows after the cursor
    for (; i < (15 << 5); i++) {
        blk_i = i >> 5;
        for (blk_j = 0; blk_j < 20; blk_j++) {
            colour = colours[blk_i][blk_j];
            RGB = RGB_colour((int)colour);
            for (pix_j = 0; pix_j < 32; pix_j++) 
                IOWR(NIOS_LCD_COMPONENT_0_IMAGE_BASE, 0, RGB);
        }
    }
}

int main()
{	
    printf("Exercise 1!\n");
    alt_irq_register(NIOS_LCD_COMPONENT_0_TOUCHPANEL_IRQ, NULL, (void *)TouchPanel_int);

    // initialize button labels
    Button_Labels();

    // Turn button indicators off
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0, 0x0);

    // initialize
    // draw_squares_slow(0, 0, 16);
    draw_squares_fast(0, 0, 8);

    while (1);        

    return 0;
}

void Button_Labels(void) {
    alt_u16 i, character_map_address = 0x410;
    alt_u16 character_map[] = { 
        // up arrow 0x1
        0x0000, 0x03c0, 0x07e0, 0x0db0, 0x1998, 0x318c, 0x6186, 0x4182, 
        0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0000,

        // down arrow 0x2
        0x0000, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 
        0x4182, 0x6186, 0x318c, 0x1998, 0x0db0, 0x07e0, 0x03c0, 0x0000,
        
        // left arrow 0x3
        0x0000, 0x0300, 0x0600, 0x0c00, 0x1800, 0x3000, 0x6000, 0x7ffe,
        0x7ffe, 0x6000, 0x3000, 0x1800, 0x0c00, 0x0600, 0x0300, 0x0000,
        
        // right arrow 0x4
        0x0000, 0x00c0, 0x0060, 0x0030, 0x0018, 0x000c, 0x0006, 0x7ffe,
        0x7ffe, 0x0006, 0x000c, 0x0018, 0x0030, 0x0060, 0x00c0, 0x0000,

        // plus 0x5
        0x0000, 0x0000, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x3ffc,
        0x3ffc, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0000, 0x0000,
        
        // minus 0x6
        0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x3ffc, 
        0x3ffc, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
    };

    // fill in character map
    for (i = 0; i < 96; i++) 
        IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 
            character_map_address++, character_map[i]);
        
    // button 0
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x30B, 0x1);   
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x30C, 0x1);   

    // button 1
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x323, 0x2);   
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x324, 0x2);   

    // button 2                                            
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x33B, 0x3);   
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x33C, 0x3);   
                                                           
    // button 3                                            
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x353, 0x4);   
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x354, 0x4);   
                                                           
    // button 4                                            
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x36B, 0x5);   
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x36C, 0x5);   
                                                           
    // button 5                                            
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x383, 0x6);   
    IOWR(NIOS_LCD_COMPONENT_0_CONSOLE_BASE, 0x384, 0x6);   
}
