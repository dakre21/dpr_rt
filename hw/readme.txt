*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    � Copyright 2015 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt Version: 1.7
Date Last Modified:  03FEB2017
Date Created: 01OCT2013

Associated Filename: UG947
Associated Document: Partial Reconfiguration Tutorial for Vivado

Supported Device(s): all 7 series FPGAs
Target Devices as delivered: 7K325TFFG900-2
							 7VX485TFFG1761-2
							 7VX690TFFG1761-2
							 7A200TFBG676-2

*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION (OPTIONAL)
7. SUPPORT


1. REVISION HISTORY 

            Readme  
Date        Version      Revision Description
=========================================================================
11OCT2013	1.0          Initial Xilinx release
15DEC2013	1.1          Update for 2013.4
07MAR2014	1.2          Update for 2014.1
01OCT2014	1.3          Update Tcl directory for 2014.3
01APR2015	1.4	     	 Update for 2015.1
21AUG2015	1.5	     	 Update for 2015.3
15JUL2016	1.6			 Update for 2016.3 with three new devices
03FEB2017	1.7			 Update for 2017.1, move to link_design
=========================================================================


2. OVERVIEW

This readme describes how to use the files that come with UG947, the 
Partial Reconfiguration Tutorial for Vivado.

This design targets the KC705 demonstration platform by default and is used to 
highlight the software flow for Partial Reconfiguration.  It can also be used to 
target the VC707, VC709, and AC701 demonstration platforms.


3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

This tutorial requires Xilinx Vivado 2017.1 or newer.
A Partial Reconfiguration license is required to run the implementation flow.


4. DESIGN FILE HIERARCHY

The directory structure underneath this top-level folder is described below:

\Bitstreams
 |   This folder is empty and will be the target location for bitstream generation.
 |       
\Implement
 |   This folder is the target location for checkpoints and reports for each of
 |   of the design configurations.  Two subfolders are present, ready for 
 |   implementation results.
 |
 +-----  \Config_shift_right_count_up_implement
 |        This is the location for the first configuration results.
 |
 +-----  \Config_shift_left_count_down_import
 |        This is the location for the second configuration results.
 |
\Sources
 |
 +-----  \hdl
 |       Verilog source code is located within these folders.  There are folders
 |       for static logic (top) and each reconfigurable module variant
 |    
 |           +--\count_down
 |           +--\count_up
 |           +--\shift_left
 |           +--\shift_right
 |           +--\top
 |
 +-----  \xdc 
 |        This folder contains the design constraint files.  
 |        Each filename includes an extension to define which device it targets.
 |           top.xdc is the complete constraint file for automatic scripted processing
 |           top_io.xdc contains pinout and clocking constraints
 |           pblocks.xdc contains the PR floorplan
 |           top_io.xdc + pblocks.xdc = top.xdc
 |
\Synth
 |   This folder contains empty folders that will receive the post-synthesis
 |   checkpoints for all the modules of the design.
 |
 +-----  \count_down
 +-----  \count_up
 +-----  \shift_left
 +-----  \shift_right
 +-----  \Static
 |
 \Tcl_HD
 |   This folder contains all the lower-level Tcl scripts invoked by the Tcl
 |   scripts at the top level.  The readme.txt is located here.  Any 
 |   modifications to accommodate user designs should be done to design.tcl or
 |   design_complete.tcl in the top level, not with these scripts here.
 

5. INSTALLATION AND OPERATING INSTRUCTIONS 

Follow the instructions provided in UG947 Lab 1 to run the tutorial.

To compile a full design, open the Tcl Shell from Vivado 2017.1 or newer, 
navigate to this folder, and type the following on the command line:

source design_complete.tcl -notrace

This will compile the entire design, from RTL to bitstreams.  In the tutorial
itself, design.tcl is used instead.  This version only runs synthesis and leaves 
the Tcl Shell open for further actions, otherwise the scripts are identical.

If a device other than the 7K325T is desired, open design_complete.tcl or design.tcl
and change the xboard variable to target a different board/device.


6. OTHER INFORMATION 

For more information on Partial Reconfiguration in Vivado, please consult UG909.


7. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database or to create a WebCase.  
