// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

`timescale 1ns/100ps
`default_nettype none

// This is the top module
// It interfaces to the LCD display and touch panel
module exercise1(
	/////// board clocks                      ////////////
	input logic CLOCK_50_I,                   // 50 MHz clock
	
	/////// pushbuttons/switches              ////////////
	input logic[3:0] PUSH_BUTTON_I,           // pushbuttons
	input logic[17:0] SWITCH_I,               // toggle switches
	
	/////// 7 segment displays/LEDs           ////////////
	output logic[6:0] SEVEN_SEGMENT_N_O[7:0], // 8 seven segment displays
	output logic[8:0] LED_GREEN_O,            // 9 green LEDs
	output logic[17:0] LED_RED_O,             // 18 red LEDs
	
	/////// GPIO connections                  ////////////
	inout wire[35:0] GPIO_0                   // GPIO Connection 0 (LTM)
);

// Signals for LCD Touch Module (LTM)
// LCD display interface
logic 	[7:0]	LTM_R, LTM_G, LTM_B;
logic 			LTM_HD, LTM_VD;
logic 			LTM_NCLK, LTM_DEN, LTM_GRST;

// LCD configuration interface
wire 			LTM_SDA;
logic 			LTM_SCLK, LTM_SCEN;

// LCD touch panel interface
logic 			TP_DCLK, TP_CS, TP_DIN, TP_DOUT;
logic 			TP_PENIRQ_N, TP_BUSY;

// Internal signals
logic 			Clock, Resetn;
logic 	[2:0] 	Top_state;

// For LCD display / touch screen
logic 			LCD_TPn_sel, LCD_TPn_sclk;
logic 			LCD_config_start, LCD_config_done;
logic 			LCD_enable, TP_enable;
logic 			TP_touch_en, TP_coord_en;
logic 	[11:0]	TP_X_coord, TP_Y_coord;

logic 	[9:0] 	Colourbar_X, Colourbar_Y;
logic 	[7:0]	Colourbar_Red, Colourbar_Green, Colourbar_Blue;
logic 	[2:0]	colour_sq;
logic 	[2:0] colour [7:0];
logic 	[2:0] colour_buf [7:0];
logic 	[4:0] 	TP_position[7:0];
logic [7:0]direction; //0 means count-down, 1 means count-up
logic [7:0]direction_buf;
logic [25:0]Timer;
logic [4:0]quantity[7:0];
logic TP_coord_en_buf;
assign Clock = CLOCK_50_I;
assign Resetn = SWITCH_I[17];

assign LCD_TPn_sclk = (LCD_TPn_sel) ? LTM_SCLK : TP_DCLK;
assign LTM_SCEN = (LCD_TPn_sel) ? 1'b0 : ~TP_CS;
assign LTM_GRST = Resetn;

// Connections to GPIO for LTM
assign TP_PENIRQ_N   = GPIO_0[0];
assign TP_DOUT       = GPIO_0[1];
assign TP_BUSY       = GPIO_0[2];
assign GPIO_0[3]	 = TP_DIN;

assign GPIO_0[4]	 = LCD_TPn_sclk;

assign GPIO_0[35]    = LTM_SDA;
assign GPIO_0[34]    = LTM_SCEN;
assign GPIO_0[33]    = LTM_GRST;

assign GPIO_0[9]	 = LTM_NCLK;
assign GPIO_0[10]    = LTM_DEN;
assign GPIO_0[11]    = LTM_HD;
assign GPIO_0[12]    = LTM_VD;

assign GPIO_0[5]     = LTM_B[3];
assign GPIO_0[6]     = LTM_B[2];
assign GPIO_0[7]     = LTM_B[1];
assign GPIO_0[8]     = LTM_B[0];
assign GPIO_0[16:13] = LTM_B[7:4];
assign GPIO_0[24:17] = LTM_G[7:0];
assign GPIO_0[32:25] = LTM_R[7:0];

// Top state machine for controlling resets
always_ff @(posedge Clock or negedge Resetn) begin
	if (~Resetn) begin
		Top_state <= 3'h0;
		TP_enable <= 1'b0;
		LCD_enable <= 1'b0;
		LCD_config_start <= 1'b0;
		LCD_TPn_sel <= 1'b1;
	end else begin
		case (Top_state)
			3'h0 : begin
				LCD_config_start <= 1'b1;
				LCD_TPn_sel <= 1'b1;
				Top_state <= 3'h1;
			end			
			3'h1 : begin
				LCD_config_start <= 1'b0;
				if (LCD_config_done & ~LCD_config_start) begin
					TP_enable <= 1'b1;
					LCD_enable <= 1'b1;
					LCD_TPn_sel <= 1'b0;
					Top_state <= 3'h2;
				end
			end			
			3'h2 : begin
				Top_state <= 3'h2;
			end
		endcase
	end
end				

// LCD Configuration
LCD_Config_Controller LCD_Config_unit(
	.Clock(Clock),
	.Resetn(Resetn),
	.Start(LCD_config_start),
	.Done(LCD_config_done),
	.LCD_I2C_sclk(LTM_SCLK),
 	.LCD_I2C_sdat(LTM_SDA),
	.LCD_I2C_scen()
);

// LCD Image
LCD_Data_Controller LCD_Data_unit (
	.Clock(Clock),
	.oClock_en(),
	.Resetn(Resetn),
	.Enable(LCD_enable),
	.iRed(Colourbar_Red),
	.iGreen(Colourbar_Green),
	.iBlue(Colourbar_Blue),
	.oCoord_X(Colourbar_X),
	.oCoord_Y(Colourbar_Y),
	.H_Count(), // not used in this experiment
	.V_Count(), // not used in this experiment
	.LTM_NCLK(LTM_NCLK),
	.LTM_HD(LTM_HD),
	.LTM_VD(LTM_VD),
	.LTM_DEN(LTM_DEN),
	.LTM_R(LTM_R),
	.LTM_G(LTM_G),
	.LTM_B(LTM_B)
);
always_comb begin
	if (Colourbar_Y < 10'd240) begin
		if (Colourbar_X < 10'd200) colour_sq = colour[0];
		else if (Colourbar_X < 10'd400) colour_sq = colour[1];
		else if (Colourbar_X < 10'd600) colour_sq = colour[2];
		else colour_sq = colour[3];
	end else begin
		if (Colourbar_X < 10'd200) colour_sq = colour[4];
		else if (Colourbar_X < 10'd400) colour_sq = colour[5];
		else if (Colourbar_X < 10'd600) colour_sq = colour[6];
		else colour_sq = colour[7];
	end
end

always_ff @(posedge Clock or negedge Resetn) begin
	if (~Resetn) begin
		colour[0] <= 3'd7;
		colour[1] <= 3'd6;
		colour[2] <= 3'd5;
		colour[3] <= 3'd4;
		colour[4] <= 3'd3;
		colour[5] <= 3'd2;
		colour[6] <= 3'd1;
		colour[7] <= 3'd0;
		colour_buf[0] <= 3'd7;
		colour_buf[1] <= 3'd6;
		colour_buf[2] <= 3'd5;
		colour_buf[3] <= 3'd4;
		colour_buf[4] <= 3'd3;
		colour_buf[5] <= 3'd2;
		colour_buf[6] <= 3'd1;
		colour_buf[7] <= 3'd0;
		quantity[0] <= 5'h10;
		quantity[1] <= 5'h10;
		quantity[2] <= 5'h10;
		quantity[3] <= 5'h10;
		quantity[4] <= 5'h10;
		quantity[5] <= 5'h10;
		quantity[6] <= 5'h10;
		quantity[7] <= 5'h10;
		Timer <= 26'd0;
	end else begin
		Timer <= Timer + 26'd1;
		if (Timer == 26'd49999999) begin
			if (~direction[0]) colour[0] <= colour[0]-3'd1;
			else colour[0] <= colour[0]+3'd1;
			if (~direction[1]) colour[1] <= colour[1]-3'd1;
			else colour[1] <= colour[1]+3'd1;
			if (~direction[2]) colour[2] <= colour[2]-3'd1;
			else colour[2] <= colour[2]+3'd1;
			if (~direction[3]) colour[3] <= colour[3]-3'd1;
			else colour[3] <= colour[3]+3'd1;
			if (~direction[4]) colour[4] <= colour[4]-3'd1;
			else colour[4] <= colour[4]+3'd1;
			if (~direction[5]) colour[5] <= colour[5]-3'd1;
			else colour[5] <= colour[5]+3'd1;
			if (~direction[6]) colour[6] <= colour[6]-3'd1;
			else colour[6] <= colour[6]+3'd1;
			if (~direction[7]) colour[7] <= colour[7]-3'd1;
			else colour[7] <= colour[7]+3'd1;
			Timer <= 26'd0;
		   quantity[0] <= 5'h10;
			quantity[1] <= 5'h10;
			quantity[2] <= 5'h10;
			quantity[3] <= 5'h10;
			quantity[4] <= 5'h10;
			quantity[5] <= 5'h10;
			quantity[6] <= 5'h10;
			quantity[7] <= 5'h10;
			
		end
		if (Timer == 26'd0) begin
			colour_buf<=colour;
		end else begin 
			if (Timer < 26'd9 )begin
				case (colour_buf[0])
						3'd0: quantity[0] <= quantity[0] + 1'd1;
						3'd1: quantity[1] <= quantity[1] + 1'd1;
						3'd2: quantity[2] <= quantity[2] + 1'd1;
						3'd3: quantity[3] <= quantity[3] + 1'd1;
						3'd4: quantity[4] <= quantity[4] + 1'd1;
						3'd5: quantity[5] <= quantity[5] + 1'd1;
						3'd6: quantity[6] <= quantity[6] + 1'd1;
						3'd7: quantity[7] <= quantity[7] + 1'd1;
				endcase
				colour_buf[0] <= colour_buf[1];
				colour_buf[1] <= colour_buf[2];
				colour_buf[2] <= colour_buf[3];
				colour_buf[3] <= colour_buf[4];
				colour_buf[4] <= colour_buf[5];
				colour_buf[5] <= colour_buf[6];
				colour_buf[6] <= colour_buf[7];
				colour_buf[7] <= colour_buf[0];
			end
		end
	end
end

// State machine for generating the colour bars
always_ff @(posedge Clock or negedge Resetn) begin
	if (~Resetn) begin
		Colourbar_Red <= 8'h00; 
		Colourbar_Green <= 8'h00;
		Colourbar_Blue <= 8'h00;
	end else begin
		Colourbar_Red <= {8{colour_sq[2]}};
		Colourbar_Green <= {8{colour_sq[1]}};
		Colourbar_Blue <= {8{colour_sq[0]}};
	end
end

// Controller for the TP on the LTM
Touch_Panel_Controller Touch_Panel_unit(
	.Clock_50MHz(Clock),
	.Resetn(Resetn),
	.Enable(~LTM_VD),	
	.Touch_En(TP_touch_en),
	.Coord_En(TP_coord_en),
	.X_Coord(TP_X_coord),
	.Y_Coord(TP_Y_coord),
	.TP_PENIRQ_N_I(TP_PENIRQ_N),
	.TP_BUSY_I(TP_BUSY),
	.TP_SCLK_O(TP_DCLK),
	.TP_MOSI_O(TP_DIN),
	.TP_MISO_I(TP_DOUT),
	.TP_SS_N_O(TP_CS)
);

// State machine for capturing the touch panel coordinates

// and displaying them on the seven segment displays

always_ff @(posedge Clock or negedge Resetn) begin
	if (~Resetn) begin
			direction<= 8'd0;
			direction_buf <= 8'd0;
			TP_coord_en_buf<= 1'd0;

	end else begin
		TP_coord_en_buf <= TP_coord_en; 
		if (TP_coord_en & ~TP_coord_en_buf)begin
			if (TP_Y_coord < 12'h800) begin
				if (TP_X_coord < 12'h400) direction_buf[0] <= ~direction[0];
				else if (TP_X_coord < 12'h800) direction_buf[1] <= ~direction[1];
				else if (TP_X_coord < 12'hc00) direction_buf[2] <= ~direction[2];
				else direction_buf[3] <= ~direction[3];
			end else begin
				if (TP_X_coord < 12'h400) direction_buf[4] <= ~direction[4];
				else if (TP_X_coord < 12'h800) direction_buf[5] <= ~direction[5];
				else if (TP_X_coord < 12'hc00) direction_buf[6] <= ~direction[6];
				else direction_buf[7] <= ~direction[7];
			end
		end
		
		// Direction changes occur in the last clock cycle of each second
		if (Timer == 26'd49999998) begin
			direction <= direction_buf;
		end
end
end

// Seven segment displays
seven_seg_displays display_unit (
	.hex_values(quantity),
	.SEVEN_SEGMENT_N_O(SEVEN_SEGMENT_N_O)
);

endmodule
