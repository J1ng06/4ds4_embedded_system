Copyright by Phillip Kinsman, Adam Kinsman, Henry Ko and Nicola Nicolici
Developed for the Embedded Systems course (COE4DS4)
Department of Electrical and Computer Engineering
McMaster University, Ontario, Canada

This file contains instructions for using the toolflow for coe4ds4 lab2.

Top Level Toolflow
==================

The toolflow for hardware/software co-design using Altera Nios has 3 main tools:

1. Quartus (for the hardware project)
2. Qsys (for system generation)
3. Nios SDK (for the software project)

Usage of these tools is documented below. Steps for creating a new system from scratch using these 3 tools follow directly, i.e. what you will have to do for experiment 1. At the end, steps for importing an existing project as you will have to do for experiments 2,3a and 3b are given.

IMPORTANT NOTE: The folder names (that includes the entire folder path) should NOT have any spaces and none of the folders in the path should start with a number.

For experiment1, in which a new Nios system is created from scratch
1. Quartus
==========

When creating a new system, a Quartus project should be created in the same way as in previous labs. Use "experiment1" as the project name. Ensure that the correct device (Cyclone II - EP2C35F672C6) is selected.

2. Qsys
===============

Once the project has been created, select "Qsys" from the "Tools" menu, this will launch the system design tool. Before proceeding to build the system, select "Save" from the "File" menu and enter "experiment1" as the system name.  Follow the steps below:

-Select the "System Contents" tab
-Right click on "clk_0" and select "Rename"
	--Change the name to "CLOCK_50_I"
-Adding a program/data memory to the system
	--In the "Component Library", expand "Memories and Memory Controllers"
	--Under "Memories and Memory Controllers" expand "On-Chip"
	--Double-click on "On-Chip Memory (RAM or ROM)"
	--A configuration window will appear, change the memory size to 1536 Bytes
	--Click "Finish"
-Adding a processor to the system
	--In the "Component Library", expand "Embedded Processors"
	--Double-click on "Nios II Processor"
	--A configuration window will appear, select Nios II/e
	--Click "Finish"
-Adding a UART port for STDIO
	--In the "Component Library", expand "Interface Protocols"
	--Under "Interface Protocols" expand "Serial"
	--Double-click "JTAG-UART"
	--The default settings are fine, click "Finish"
-Connect the components
	--Hover over the "Connections" region and connect the signals as follows:
		> connect "CLOCK_50_I:clk_reset" to "on_chip_memory:reset1", "nios2_qsys:reset_n", and "jtag_uart:reset"
		> connect "CLOCK_50_I:clk" to "on_chip_memory:clk1", "nios2_qsys:clk", and "jtag_uart:clk"
		> connect "nios2_qsys:data_master" to "on_chip_memory:s1", "nios2_qsys:jtag_debug_module", and "jtag_uart:avalong_jtag_slave"
		> connect "nios2_qsys:instruction_master" to "on_chip_memory:s1", and "nios2_qsys:jtag_debug_module"
		> connect "nios2_qsys:jtag_debug_module_reset" to "nios2_qsys:reset_n"
	--Hover over the "IRQ" region and connect "jtag_uart:avalon_jtag_slave" to "nios2_qsys:data_master"
	--Your system should be connected like "experiment1_system.pdf" in the "experiment1" folder
-Configure the Nios Processor Memory Vectors
	--Double click the "nios2_qsys" component
	--Set the "Reset vector memory" to "onchip_memory"
	--Set the "Exception vector memory" to "onchip_memory"
-Configuring the address map
	--Select the "Address Map" tab
	--Set "base address" of "onchip_mem" to 0x00004000 for both "data_master" and "instruction_master"
	--Set "base address" of "nios2_qsys" to 0x00003800 for both "data_master" and "instruction_master"
	--Set "base address" of "jtag_uart" to 0x00003000
-Generating the system
	--Select the "Generation" tab
	--Click "Generate", wait for the message "Info: System generation was successful"
-Pin assignments
	--Return to Quartus
	--Select "Add/Remove Files in Project" from the "Project" menu and add the "experiment1/synthesis/experiment1.qip" file
		--IMPORTANT NOTE: DO NOT ADD THE QSYS FILE TO YOUR QUARTUS PROJECT
	--Select "Start" -> "Start Analysis & Synthesis (Ctrl+K)" from the "Processing" menu
	--When complete, select "Pin Planner" from the "Assignments" menu
	--Set "Location" of "CLOCK_50_I" to "PIN_N2"
	--Set "Location" of "reset_n" to "PIN_G26" for using Push button 0 as the reset
-Synthesis
	--Select "Start Compilation" from the "Processing" menu
	--When compilation is finished, program the device with the new system

3. Nios SDK
===========

-Launching Nios II SDK
	--Start the SDK from within Quartus or from the Desktop
-To start a new project with the newly created system described above:
	--When prompted for the workspace, locate the folder where the new system is placed (i.e. experiment1)
	--Click "OK" and wait for Nios II SDK to be launched
	--Go to "File" -> "New" -> "Project"
	--Select "Nios II Application and BSP from Template" and click "Next"
	--In "SOPC Information File Name", browse for the "sopcinfo" file previously generated by Qsys (experiment1.sopc)
	--In "CPU", select the corresponding CPU from the system
	--Use "experiment1" as the project name
	--Now select project template, for the system created as described above, select "Hello World Small", since only 12KB (1536 x 32 / 4) memory is used
	--Click "Finish" and wait for the project to be created
	--Go to "Project" -> "Build All" to start the compilation	
-To load the compiled software onto the board by
	--Make sure the FPGA is programmed with the Qsys system using Quartus
	--Right click on "experiment1" in the project window
	--Select "Run As" -> "Nios II Hardware"
	--After a short delay you should see "Hello from Nios II!" in the "Terminal" window
-Selecting the target JTAG cable in Nios II SDK
	--For this particular setup (OS/tool versions in the lab), an error may be reported upon loading the software onto the board
	--To address this error:
		--Go to "Run" -> "Run"
		--Click on run profile available under "Nios II Hardware"
		--Select the "Target Connection" panel
		--In "JTAG cable", select "USB-Blaster"
		--Click "Apply" and then "Close"

Working with existing projects
======================================

For experiments 2, 3a and 3b, the SOPC system, Quartus .sof and software project have already been created for you. In order to import and use these existing projects, use the following instructions:

-Quartus project creation
	--Create a Quartus project based on the provided .qsf file in the same way as in lab1
		--IMPORTANT NOTE: do not add the QSYS file during project creation.  If you attempt to regenerate any portions of the
		  system, the toolchain will fail if the QSYS file is added to the project.
	--Directly select "Programmer" from the "Tools" menu and program the device
-Nios SDK project import
	--Launch the Nios SDK and switch the workspace to the appropriate "experiment" folder
	--This folder should contain the "software" folder
	--Select "Import" from the "File" menu
	--Expand "General" and double-click "Existing projects into workspace"
	--Select the appropriate "experiment??_bsp" subfolder from within "software" as the root directory
	--Click Finish
	--If you are prompted to "Remove Debug/Release folders" choose "NO"
	--Select "Import" from the "File" menu again
	--Expand "General" and double-click "Existing projects into workspace"
	--Select the appropriate "experiment??" (without "_bsp") folder
	--Click Finish
	--If prompted to "Remove Debug/Release folders" choose "NO"
	--In the Project Explorer, right click on "experiment??_bsp" and select "Generate BSP" from the "Nios II" submenu
	--Select "Build All" from the "Project" menu
	--After building the project, load the compiled software onto the board the same way as in experiment1
	--Address the JTAG cable selection error as shown in experiment1 if necessary
