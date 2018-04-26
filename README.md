# ECE 506 Project

## Dynamic Partial Reconfiguration Framework for Real-Time Systems
## David Akre

### Dependencies
- You need Xilinx Vivado and Xsdk 2017.1 or greater to run these PR solutions (also will need a valid license file from Xilinx)
  - There's tutorials online on how to use licensing with Xilinx (must have partial reconfiguration license)

### Project Layout
- vivado-boards-master 
  - directory which contains the architecture files for the Digilent Zybo 720 board
  - NOTE: To run Vivado with a new architecture you need to update the Vivado_init.tcl script which gets invoked upon Vivado booting to point to the board_files you want from Digilent (e.g. /home/<your_path>/board_files... example is provided in workspace)
- hw
  - Directory contains all of the FPGA Partial Reconfiguration flows
