// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

`timescale 1ns/100ps
`default_nettype none

// This is the top module
// It interfaces to the LCD display and touch panel
module experiment1a (
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

// Internal signals
logic 			Clock, Resetn;
logic 	[2:0] 	Top_state;

// For LCD display / touch screen
logic 			LCD_TPn_sel, LCD_TPn_sclk;
logic 			LCD_config_start, LCD_config_done;
logic 			LCD_enable;

logic 	[9:0] 	Colourbar_X, Colourbar_Y;
logic 	[7:0]	Colourbar_Red, Colourbar_Green, Colourbar_Blue;

assign Clock = CLOCK_50_I;
assign Resetn = SWITCH_I[17];

assign LCD_TPn_sclk = (LCD_TPn_sel) ? LTM_SCLK : 1'b0;
assign LTM_SCEN = (LCD_TPn_sel) ? 1'b0 : 1'b0;
assign LTM_GRST = Resetn;

// Connections to GPIO for LTM
assign GPIO_0[3]	 = 1'b0;

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

// State machine for generating the colour bars
always_ff @(posedge Clock or negedge Resetn) begin
	if (~Resetn) begin
		Colourbar_Red <= 8'h00; 
		Colourbar_Green <= 8'h00;
		Colourbar_Blue <= 8'h00;
	end else begin
		Colourbar_Red <= {8{Colourbar_X[5]}};
		Colourbar_Green <= {8{Colourbar_X[6]}};
		Colourbar_Blue <= {8{Colourbar_X[7]}};
	end
end

endmodule
