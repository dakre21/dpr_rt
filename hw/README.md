# FPGA Partial Reconfiguration Flow

## Steps to run framework
- ```vivado -mode tcl```
- ```source design.tcl```
  - NOTE: In here set rt to 1 to run real time flow (default is 0 for non real time)
  - Additional flow modifications can be made after running assemble.tcl (e.g. setting impl, verify, etc to 1 to run them immediately)
- Exit vivado tcl mode and enter vivado gui mode (e.g. ```vivado -mode gui```)
- ```source assemble.tcl```
  - Similarly set rt to 1 for real time assembly
 
