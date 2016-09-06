Copyright by Adam Kinsman, Henry Ko and Nicola Nicolici
Developed for the Embedded Systems course (COE4DS4)
Department of Electrical and Computer Engineering
McMaster University, Ontario, Canada

This file contains instructions for creating custom hardware component in Qsys for coe4ds4 lab3 experiment1b.

Creating the component wrapper
================================

- Copy the "custom_counter_unit.sv" from experiment1a to the "custom_counter_component" folder

- Using a text editor (eg. gedit), create a file "custom_counter_component.sv" in the custom_counter_component folder. The content of the file is as follows:

////////////////////////
// CODE SECTION BEGIN //
////////////////////////

// Define the component module
module custom_counter_component (
	input logic clock,
	input logic resetn,

	input  logic [1:0] 	address,
	input  logic 		chipselect,
	input  logic 		read,
	input  logic 		write,
	output logic [31:0]	readdata,
	input  logic [31:0]	writedata,
	
	output logic counter_expire_irq
);

// Declare internal signals for connecting to the custom_counter_unit
logic reset_counter, load;
logic [25:0] counter_value;
logic [1:0] load_config;
logic counter_expire_buf, counter_expire;

// For getting the data from NIOS through IOWR in software
// Offset address 1 is used to reset the counter
// Offset address 3 is used to buffer the "load_config" info
always_ff @ (posedge clock or negedge resetn) begin
	if (!resetn) begin
		reset_counter <= 'd0;
		load <= 1'b0;
		load_config <= 'd0;
	end else begin
		load <= 1'b0;
		if (chipselect & write) begin
			case (address)
			'd1: reset_counter <= writedata[0];
			'd3: begin
				load <= 1'b1;
				load_config <= writedata[1:0];
			end
			endcase
		end
	end
end

// For sending information to NIOS using IORD in software
// Offset address 0 is used to send the counter value
// Offset address 1 is used to send the data in the "reset_counter" signal
// Offset address 2 is used to send the data in the "counter_expire" signal
// Offset address 3 is used to send the data in the "load_config" signal
always_ff @ (posedge clock or negedge resetn) begin
	if (!resetn) begin
		readdata <= 'd0;
	end else begin
		if (chipselect & read) begin
			case (address)
			'd0: readdata <= {6'd0, counter_value};
			'd1: readdata <= {31'd0, reset_counter};
			'd2: readdata <= {31'd0, counter_expire};
			'd3: readdata <= {31'd0, load_config};
			endcase
		end
	end
end

// For generating interrupt when the counter expires
// Offset address 2 is used to clear the interrupt
always_ff @ (posedge clock or negedge resetn) begin
	if (!resetn) begin
		counter_expire_buf <= 1'b0;
	end else begin
		counter_expire_buf <= counter_expire;
			
		if (counter_expire & ~counter_expire_buf) counter_expire_irq <= 1'b1;
		if (chipselect & write & address == 'd2) counter_expire_irq <= 1'b0;
	end
end

// Instantiate the counter
custom_counter_unit custom_counter_unit_inst (
	.clock(clock),
	.resetn(resetn),
	.reset_counter(reset_counter),
	.load(load),
	.load_config(load_config),
	.counter_value(counter_value),
	
	.counter_expire(counter_expire)
);

endmodule

////////////////////////
// CODE SECTION END   //
////////////////////////

- After saving this file, start Quartus, and create a new project with name "experiment1b" in the "experiment1b" folder. Make sure the device "Cyclone II EP2C35F672C6" is chosen

Importing the component in Qsys
========================================

- Start Qsys to create the system. Save the system as "experiment1b".

- To create a component in Qsys
	-- Go to "File"->"New Component"
	-- Change the "Name" and "Display name" to "custom_counter_component"
	-- Click on the "Files" tab
	-- Under "Synthesis Files", click "Add" (or "+") and select "custom_counter_component.sv" that you have created
	-- Click "Add" again and select "custom_counter_unit.sv" that you have copied over from experiment1a
	-- Click on "Analyze Synthesis Files"
	-- When the analysis is done, select "custom_counter_component" as the Top-level Module (this can be achieved through the "Attributes" column, in case it was not done automatically already)
	-- Click on the "Interfaces" tab (note that it is normal to have errors appear in the console)
	-- Change the "Name" option of "clock_reset" to "clock_sink"
	-- Change the "Type" option of "clock_sink" to "Clock Input"
	-- Change the "Clock rate" to "50000000" (note that the interface may have been moved to the bottom when you changed it to a Clock Input)
	-- Click "Add Interface" 
	-- Your new interface appears at the bottom and is named "avalon_slave", change the name to "reset_sink" and the type to "Reset Input"
	-- Now, configure "avalon_slave_0" by changing the "Associated Clock" and "Associated Reset" to "clock_sink" and "reset_sink" respectively
	-- Click "Add Interface" again
	-- Find the new interface at the bottom and change its type to "interrupt_sender"
	-- Change the associated clock of "interrupt_sender" to "clock_sink" and its associated reset to "reset_sink"
	-- Finally, select "avalon_slave_0" as the "Associated addressable interface" for your "interrupt_sender"
	-- Click on the "Signals" tab and make sure all the signals are setup as follows:
		Name			Interface		Signal Type
		clock			clock_sink		clk
		resetn			reset_sink		reset_n
		address			avalon_slave_0		address
		chipselect		avalon_slave_0		chipselect
		read			avalon_slave_0		read
		write			avalon_slave_0		write
		readdata		avalon_slave_0		readdata
		writedata		avalon_slave_0		writedata
		counter_expire_irq	interrupt sender	irq

	-- Click on "Finish"
	-- Click on "Yes, Save" when prompted, this should generate the component description "custom_counter_component_hw.tcl"
	-- You should now see "custom_counter_component" available in the "Component Library"
	
Creating the new system
========================
- Rename the clock component to "CLOCK_50_I"

- Adding a program/data memory to the system
	-- Under the "System Contents" tab expand "University Program"
	-- Expand "Memory"
	-- Double click "SRAM/SSRAM Controller"
	-- Choose "DE2" as the DE board
	-- Click "Finish"

- Adding a processor the the system
	-- Under the "System Contents" tab, expand "Embedded Processors" in the component library and double-click on "Nios II Processor"
	-- A configuration window will appear, select Nios II/e
	-- Click "Finish"
	-- Rename the processor to "cpu_0"

- Adding a UART port for STDIO
	-- Under the "System Contents" tab expand "Interface Protocols" in the component library
	-- Under "Interface Protocols" expand "Serial"
	-- Double-click "JTAG-UART"
	-- The default settings are fine, click "Finish"

- Adding the toggle switches
	-- Under the "System Contents" tab expand "Peripherals"
	-- Expand "Microcontroller Peripherals"
	-- Double-click "PIO (Parallel I/O)"
	-- Put 17 as width even though there are 18 switches on the board. This is because we are using SWITCH[17] as the resetn
	-- Select "Input", then click "Finish"
	-- Rename this module to "SWITCH_I"

- Adding the push buttons
	-- Under the "System Contents" tab expand "Peripherals"
	-- Expand "Microcontroller Peripherals"
	-- Double-click "PIO (Parallel I/O)"
	-- Put 4 as width
	-- Select "Input"
	-- Select "Synchronously capture" and "RISING"
	-- Select "Generate IRQ" and "EDGE"
	-- Click "Finish"
	-- Rename this module to "PUSH_BUTTON_I"

- Adding the red LEDs
	-- Under the "System Contents" tab expand "Peripherals"
	-- Expand "Microcontroller Peripherals"
	-- Double-click "PIO (Parallel I/O)"
	-- Put 18 as width
	-- Select "Output ports only"
	-- Click "Finish"
	-- Rename this module to "LED_RED_O"

- Adding the green LEDs
	-- Under the "System Contents" tab expand "Peripherals"
	-- Expand "Microcontroller Peripherals"
	-- Double-click "PIO (Parallel I/O)"
	-- Put 9 as width
	-- Select "Output ports only"
	-- Click "Finish"
	-- Rename this module to "LED_GREEN_O"

- Adding the custom counter
	-- Double click on the newly created component "custom_counter_component"
	-- Click "Finish"

- Connect the components
	-- Select "Create Global Reset Network" from the "System" menu to connect all the resets
	-- Connect the "Clock Output" of "CLOCK_50_I" to the "Clock Input" of all components
	-- Connect the "data_master" of "cpu_0" to the "Avalon Memory Mapped Slave" of all components
	-- Connect the "instruction_master" of "cpu_0" to the "Avalon Memory Mapped Slave" of "sram_0" only
	-- Connect the "Reset Output" named "jtag_debug_module_reset" of "cpu_0" to the "Reset Input" of "jtag_uart_0"
	-- Scroll right to the "IRQ" column and connect the interrupt senders for "jtag_uart_0", "PUSH_BUTTON_I" and "custom_counter_component"
	-- Under the export column, connect top-level signals:
		- make sure that "clk_in" and "clk_in_reset" for CLOCK_50_I are exported as "clock_50_i_clk_in" and "clock_50_i_clk_in_reset"
		- click to export the "external interface" of "sram_0" (don't change the name)
		- click to export the "external connection" of "SWITCH_I"
		- click to export the "external connection" of "PUSH_BUTTON_I"
		- click to export the "external connection" of "LED_RED_O"
		- click to export the "external connection" of "LED_GREEN_O"
- Configure the memories for "cpu_0"
	-- Double click "cpu_0" to open the configuration page
	-- Select "sram_0.avalon_sram_slave" for the Reset Vector Memory
	-- Select "sram_0.avalon_sram_slave" for the Exception Vector Memory
	-- Click "Finish"

- To automatically configure the base address and IRQ number of the system
	-- Go to "System"->"Assign Base Addresses"
	-- Go to "System"->"Assign Interrupt Numbers"

- Generating the system
	-- Change to the "Generation" tab	
	-- Click "Generate", wait for the message "Generate Completed"

- Pin assignments
	-- Copy the pin location assignments from experiment1a.qsf
	-- Note: If you have chosen to name the modules in Qsys differently than what are used above, you will have to update the name of the PINs accordingly

- Synthesis
	-- Open "Add/Remove Files in Project" from the "Project" menu
	-- Add the "experiment1b/synthesis/experiment1b.qip" file
	-- Select "Start Compilation" from the "Processing" menu
	-- When compilation is finished, program the device with the new system
	
Developing the software for the custom counter component
========================================================
- Launching Nios II SDK
	-- Start the SDK from within Qsys, the Desktop or the Start menu

- To start a new project with the newly created system described above:
	-- Locate the folder where the new system is placed (i.e. "experiment1b")
	-- Click "OK" and wait for Nios II SDK to be relaunched
	-- Go to "File" -> "New" -> "Nios II Application and BSP from Template"
	-- In "SOPC Information File Name", browse for the sopcinfo file previously generated from Qsys "experiment1b.sopcinfo"
	-- In "CPU", select the corresponding CPU from the system
	-- Use "experiment1b" as the project name
	-- Now select project type, for the system created as described above, select "Hello World"
	-- Click "Finish" and wait for the project to be created
	
- To import the C files from experiment1a
	-- Expand the "experiment1b" entry in the "Nios II C/C++ Projects" window
	-- Right click on "hello_world.c" and rename it to "experiment1b.c"
	-- From "experiment1a", copy "PB_Button.h", "PB_Button.c", "define.h", "custom_counter.h" and "custom_counter.c" to this new program located in "<project_directory>/software/experiment1b/"
	-- Copy and paste the content of "experiment1a.c" into "experiment1b.c"
	-- Right click on the "experiment1b" project in the "Project Explorer" and click "Refresh"

- Modifying the C sources for the new component
	-- When compared to experiment1a, the custom counter is directly connected to the NIOS avalon bus. Thus, it is given a different base address in this experiment.
	-- To work with the new component, "custom_counter.c" has to be updated as follows (note, you can refer to the "custom_counter_component.sv" that is previously created to identify how the offset addresses of this new component are defined and used):

////////////////////////
// CODE SECTION BEGIN //
////////////////////////
	
#include "define.h"

// ISR when the counter is expired
void handle_counter_expire_interrupts()
{
	printf("Counter expires\n");
	
	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 2, 0);
}

void reset_counter() {
	printf("Resetting counter value\n");

	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 1, 1);
	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 1, 0);

	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 2, 0);
}

int read_counter() {
	return IORD(CUSTOM_COUNTER_COMPONENT_0_BASE, 0);
}

int read_counter_interrupt() {
	return IORD(CUSTOM_COUNTER_COMPONENT_0_BASE, 2);
}

void load_counter_config(int config) {
	printf("Loading counter config %d\n", config);

	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 3, config);
}

// Function for initializing the ISR of the Counter
void init_counter_irq() {
	IOWR(CUSTOM_COUNTER_COMPONENT_0_BASE, 2, 0);

	alt_irq_register(CUSTOM_COUNTER_COMPONENT_0_IRQ, NULL, (void*)handle_counter_expire_interrupts );
}

////////////////////////
// CODE SECTION END   //
////////////////////////
	
Compilation and loading the software onto the board
===================================================
- Select "Build All" from the "Project" menu
	
- To load the compiled software onto the board
	-- Make sure the FPGA is programmed with the Qsys system using Quartus
	-- Right click on "experiment1b" in the project window
	-- Select "Run As" -> "Nios II Hardware"