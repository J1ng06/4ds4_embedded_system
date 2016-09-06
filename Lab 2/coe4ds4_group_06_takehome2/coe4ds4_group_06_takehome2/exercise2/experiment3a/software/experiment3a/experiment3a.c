
#include "system.h"
#include "io.h"
#include "alt_types.h"
#include "sys/alt_stdio.h"
#include "altera_up_avalon_character_lcd.h"

char *tochar(alt_16 i, char *p)
{
	if (i < -32767) {
		*p++ = '-';
		*p++ = '3';
		*p++ = '2';
		*p++ = '7';
		*p++ = '6';
		*p = '8';
		return p;
	}else if(i < 0){
		*p++ = '-';
		i = -i;
	}
    if (i / 10 == 0) {
        // No more digits.
        *p++ = i + '0';
        *p = '\0';
        return p;
    }

    p = tochar(i / 10, p);
    *p++ = i % 10 + '0';
    *p = '\0';
    return p;
}
void find_max (alt_16 *values, alt_16 *max) {
	alt_8 i;
	max[0] = 0x8000;
	max[1] = 0x8000;

	for (i = 0; i < 16; i++){
		if (values[i] > max[0]) {
			max[1] = max[0];
			max[0] = values[i];
		} else if (values[i] > max[1]) {
			max[1] = values[i];
		}
	}
	//printf("%d, %d\n",max[1], max[0]);
}

alt_u8 find_subseq(alt_16 *values, alt_16 *subseq){
	alt_16 temp_seq[16]={0};
	alt_u8 i,j,l,r;
	alt_u8 index = 0;
	for (i=0;i<15;i++){
		l=i;
		for(r=i+1;r<16;r++){
			if (values[l]>values[r]){
				l=r;
				//printf("i = %d l = %d ,r =%d\n",i,l,r);
			}else{
				//printf("l = %d ,r =%d\n",l,r);
				r=15;
			}
		}
		if ((index<= (l-i+1))&&(i!=l)){
			index =0;
			for(j=i;j<=l;j++){
				subseq[index++]=values[j];
				//printf("1 \n");
			}
		}
	}
	//for (i=0;i<=15;i++){
	//	printf("%d, ",temp_seq[i]);
	//}printf("\n");
	return index;
}

int main()
{ 
    alt_u32 switch_val, prev_switch_val = 0;
    alt_u8 prev_switch_flag = 0;  // Stores the prev value of switch 16
    alt_16 values[16] = { 0 };
    alt_16 max[2];//, min[2];
    alt_16 sub_seq[16] ={0};
    char output_str[17] ;
    alt_u8 length =0;
    //char decreasing_sub[],decreasing_sub_buf[];
    alt_8 counter,counter_buf;
    alt_u8 i,j,j_buf;

    alt_up_character_lcd_dev *lcd_0;

    
    lcd_0 = alt_up_character_lcd_open_dev(CHARACTER_LCD_0_NAME);
    
    if (lcd_0 == NULL) alt_printf("Error opening LCD device\n");
    else alt_printf("LCD device opened.\n");
    
    alt_up_character_lcd_init(lcd_0);
    
    // initialize prev_switch_val so we don't load until the first time the switches change
    prev_switch_val = IORD(SWITCH_I_BASE, 0) & 0xffff;

    /* Event loop never exits. */
    while (1) {
    	if ((switch_val = ((IORD(SWITCH_I_BASE, 0) >> 16) & 0x1)) != prev_switch_flag)
    	{  // Switch 16 has changed
    		if (switch_val) {
    		// Display minimums on LCD
    			find_max(values,max);
    			//sprintf(output_str,"%d",max[0]);
    			tochar(max[0],output_str);
    			alt_up_character_lcd_set_cursor_pos(lcd_0, 0, 0);
    			alt_up_character_lcd_string(lcd_0, "                ");
    		    alt_up_character_lcd_set_cursor_pos(lcd_0, 16-strlen(output_str), 0);
    		    alt_up_character_lcd_string(lcd_0, output_str);
    		    tochar(max[1],output_str);
    		    //sprintf(output_str,"%d",max[1]);
    		    alt_up_character_lcd_set_cursor_pos(lcd_0, 0, 1);
    		    alt_up_character_lcd_string(lcd_0, "                ");
    		    alt_up_character_lcd_set_cursor_pos(lcd_0, 16-strlen(output_str), 1);
    		    alt_up_character_lcd_string(lcd_0, output_str);
    		    //alt_printf("%d, %d\n",max[1], max[0]);
    		    //alt_printf("testing\n");
    		}else {
    			j = 0;
        		alt_printf("Entire Sequence of 16 Values: ");
        		for (i = 0; i < 16; i++) {
        			//sprintf(output_str,"%d",values[i]);
        			tochar(values[i],output_str);
					alt_printf("%s, ",output_str);
        		}
        		alt_printf("\n");
        		length = find_subseq(values,sub_seq);
        		//alt_printf("%d\n", length);
        		if (length ==0){
        			alt_printf("Subsequence does not exist!");
        		}else{
        			alt_printf("Subsequence: ");
        			for (i = 0; i < length; i++) {
					tochar(sub_seq[i],output_str);
					alt_printf("%s, ",output_str);
        			}
        		}alt_printf("\n");
    		}
    		prev_switch_flag = switch_val;
    	}
        if ((switch_val = IORD(SWITCH_I_BASE, 0) & 0xffff) != prev_switch_val)
    	{  // There has been a change in switches 0-15
    		for (j=0;j<15;j++){
    			values[j] = values[j+1];
    		}
        	values[15] = switch_val;
    		prev_switch_val = switch_val;
    	}
    }

    return 0;
}
