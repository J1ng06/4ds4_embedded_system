#include "io.h"
#include "system.h"
#include "alt_types.h"
#include "sys/alt_stdio.h"

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
    alt_8 i,on_counter;
    alt_16 green_led;
    alt_u32 switch_val;
    alt_putstr("Experiment 2!\n");
    
    while(1){
        switch_val = IORD(SWITCH_I_BASE, 0);
         IOWR(LED_RED_O_BASE, 0, switch_val);

         for (i = 0, on_counter = 0; i <= 17; i++) {
         	// count the number of switches that are turned on
             if (((switch_val >> i) & 0x1) == 1) on_counter++;
         }

         if ((switch_val >> 16) != 0) {	// Check if switch 16 or 17 is on
			if ((switch_val >> 17) == 0){
				for (i=17;i>=0;i--){
					if ((switch_val & (0x1<<i)) == 0) {
						green_led = i;
					}
				}
			}else {
				if (switch_val == 0x3FFFF){
					green_led = 31;
				}else{
					for (i=0;i<=17;i++){
						if ((switch_val & (0x1<<i)) == 0) {
							green_led = i;
						}
					}
				}

			}
         } else green_led = on_counter;  // if neither is on, then the number of on switches is displayed


         if (on_counter > 9) green_led |= 0x1e0;
         IOWR(LED_GREEN_O_BASE, 0, green_led);

         IOWR(SEVEN_SEGMENT_N_O_1_BASE, 0,
              disp_seven_seg((on_counter >> 4) & 0xF));
         IOWR(SEVEN_SEGMENT_N_O_0_BASE, 0,
              disp_seven_seg(on_counter & 0xF));
    }
    /* Event loop never exits.
    while (1) {
        switch_val = IORD(SWITCH_I_BASE, 0);
        IOWR(LED_RED_O_BASE, 0, switch_val);
        if (switch_val == 0) {
            IOWR(SEVEN_SEGMENT_N_O_1_BASE, 0, 
                disp_seven_seg(16));
            IOWR(SEVEN_SEGMENT_N_O_0_BASE, 0, 
                disp_seven_seg(16));
        } else {
            for (i = 17; i >= 0; i--) {
                if ((switch_val >> i) != 0) {
                    IOWR(SEVEN_SEGMENT_N_O_1_BASE, 0, 
                        disp_seven_seg((i >> 4) & 0xF));
                    IOWR(SEVEN_SEGMENT_N_O_0_BASE, 0, 
                        disp_seven_seg(i & 0xF));
                    i = 0;
                }
            }
        }
    }*/

    return 0;
}
