// Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
// Developed for the Embedded Systems course (COE4DS4)
// Department of Electrical and Computer Engineering
// McMaster University
// Ontario, Canada

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

module exercise1_GPIO (
	clock_50_i_clk_in_clk,
	clock_50_i_clk_in_reset_reset_n,

	// the_LED_GREEN_O
	led_green_o_external_connection_export,

	// LED_RED_O
	led_red_o_external_connection_export,

	// the_PB_BUTTON_I
	push_button_i_external_connection_export,

	// the_SWITCH_I
	switch_i_external_connection_export,

	// the_sram_0
	sram_0_external_interface_ADDR,
	sram_0_external_interface_CE_N,
	sram_0_external_interface_DQ,
	sram_0_external_interface_LB_N,
	sram_0_external_interface_OE_N,
	sram_0_external_interface_UB_N,
	sram_0_external_interface_WE_N,
	
	seven_segment_n_o_0_external_connection_export
);

output  [ 17: 0] sram_0_external_interface_ADDR;
output           sram_0_external_interface_CE_N;
inout   [ 15: 0] sram_0_external_interface_DQ;
output           sram_0_external_interface_LB_N;
output           sram_0_external_interface_OE_N;
output           sram_0_external_interface_UB_N;
output           sram_0_external_interface_WE_N;
output  [  8: 0] led_green_o_external_connection_export;
output  [ 17: 0] led_red_o_external_connection_export;
input            clock_50_i_clk_in_clk;
input   [  3: 0] push_button_i_external_connection_export;
input   [ 16: 0] switch_i_external_connection_export;
input            clock_50_i_clk_in_reset_reset_n;
output  [  6: 0] seven_segment_n_o_0_external_connection_export;

logic   [ 26: 0] custom_counter_0_value_external_connection_export;
logic custom_counter_0_counter_expire_external_connection_export;
logic custom_counter_0_reset_counter_external_connection_export;
logic custom_counter_0_load_external_connection_export;
logic [1:0] custom_counter_0_load_config_external_connection_export;

logic   [ 26: 0] custom_counter_1_value_external_connection_export;
logic custom_counter_1_counter_expire_external_connection_export;
logic custom_counter_1_reset_counter_external_connection_export;
logic custom_counter_1_load_external_connection_export;
logic [1:0] custom_counter_1_load_config_external_connection_export;

//Example instantiation for system 'nios_system'
    nios_system u0 (
        .clock_50_i_clk_in_clk                                      (clock_50_i_clk_in_clk),                                      //                                   clock_50_i_clk_in.clk
        .clock_50_i_clk_in_reset_reset_n                            (clock_50_i_clk_in_reset_reset_n),                            //                             clock_50_i_clk_in_reset.reset_n
        .sram_0_external_interface_DQ                               (sram_0_external_interface_DQ),                               //                           sram_0_external_interface.DQ
        .sram_0_external_interface_ADDR                             (sram_0_external_interface_ADDR),                             //                                                    .ADDR
        .sram_0_external_interface_LB_N                             (sram_0_external_interface_LB_N),                             //                                                    .LB_N
        .sram_0_external_interface_UB_N                             (sram_0_external_interface_UB_N),                             //                                                    .UB_N
        .sram_0_external_interface_CE_N                             (sram_0_external_interface_CE_N),                             //                                                    .CE_N
        .sram_0_external_interface_OE_N                             (sram_0_external_interface_OE_N),                             //                                                    .OE_N
        .sram_0_external_interface_WE_N                             (sram_0_external_interface_WE_N),                             //                                                    .WE_N
        .switch_i_external_connection_export                        (switch_i_external_connection_export),                        //                        switch_i_external_connection.export
        .push_button_i_external_connection_export                   (push_button_i_external_connection_export),                   //                   push_button_i_external_connection.export
        .led_red_o_external_connection_export                       (led_red_o_external_connection_export),                       //                       led_red_o_external_connection.export
        .led_green_o_external_connection_export                     (led_green_o_external_connection_export),                     //                     led_green_o_external_connection.export
        .seven_segment_n_o_0_external_connection_export             (seven_segment_n_o_0_external_connection_export),             //             seven_segment_n_o_0_external_connection.export
        .custom_counter_1_counter_expire_external_connection_export (custom_counter_1_counter_expire_external_connection_export), // custom_counter_1_counter_expire_external_connection.export
        .custom_counter_1_value_external_connection_export          (custom_counter_1_value_external_connection_export),          //          custom_counter_1_value_external_connection.export
        .custom_counter_1_load_config_external_connection_export    (custom_counter_1_load_config_external_connection_export),    //    custom_counter_1_load_config_external_connection.export
        .custom_counter_1_load_external_connection_export           (custom_counter_1_load_external_connection_export),           //           custom_counter_1_load_external_connection.export
        .custom_counter_1_reset_counter_external_connection_export  (custom_counter_1_reset_counter_external_connection_export),  //  custom_counter_1_reset_counter_external_connection.export
        .custom_counter_0_counter_expire_external_connection_export (custom_counter_0_counter_expire_external_connection_export), // custom_counter_0_counter_expire_external_connection.export
        .custom_counter_0_value_external_connection_export          (custom_counter_0_value_external_connection_export),          //          custom_counter_0_value_external_connection.export
        .custom_counter_0_load_config_external_connection_export    (custom_counter_0_load_config_external_connection_export),    //    custom_counter_0_load_config_external_connection.export
        .custom_counter_0_load_external_connection_export           (custom_counter_0_load_external_connection_export),           //           custom_counter_0_load_external_connection.export
        .custom_counter_0_reset_counter_external_connection_export  (custom_counter_0_reset_counter_external_connection_export)   //  custom_counter_0_reset_counter_external_connection.export
    );


custom_counter_unit custom_counter_0 (
	.clock(clock_50_i_clk_in_clk),
	.resetn(clock_50_i_clk_in_reset_reset_n),
	.reset_counter(custom_counter_0_reset_counter_external_connection_export),
	.load(custom_counter_0_load_external_connection_export),
	.load_config(custom_counter_0_load_config_external_connection_export),
	.counter_value(custom_counter_0_value_external_connection_export),
	.counter_expire(custom_counter_0_counter_expire_external_connection_export)
);

custom_counter_unit custom_counter_1 (
	.clock(clock_50_i_clk_in_clk),
	.resetn(clock_50_i_clk_in_reset_reset_n),
	.reset_counter(custom_counter_1_reset_counter_external_connection_export),
	.load(custom_counter_1_load_external_connection_export),
	.load_config(custom_counter_1_load_config_external_connection_export),
	.counter_value(custom_counter_1_value_external_connection_export),
	.counter_expire(custom_counter_1_counter_expire_external_connection_export)
);
	
endmodule

//synthesis translate_on