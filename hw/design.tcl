# Author: David Akre
# Description: Automated PR process derived from Xilinx tutorial
# but modified for Real Time nature

###############################################################
###   Tcl Variables
###############################################################

# Forward declarations
# rt = 1 for Real Time 0 Non Real Time
set rt     0   

source utils.tcl

#Define location for "Tcl" directory. Defaults to "./tcl_HD"
if {[file exists "./Tcl_HD"]} { 
   set tclDir  "./Tcl_HD"
} else {
   error "ERROR: No valid location found for required Tcl scripts. Set \$tclDir in design.tcl to a valid location."
}
puts "Setting TCL dir to $tclDir"

####Source required Tcl Procs
source $tclDir/design_utils.tcl
source $tclDir/log_utils.tcl
source $tclDir/synth_utils.tcl
source $tclDir/impl_utils.tcl
source $tclDir/hd_utils.tcl
source $tclDir/pr_utils.tcl

###############################################################
### Define target demo board
### Valid values are kc705, vc707, vc709, ac701, zybo-z720
### Select one only
###############################################################

check_part $part

###############################################################
###  Setup Variables
###############################################################

####flow control
set run.topSynth       1
set run.rmSynth        1
set run.prImpl         0
set run.prVerify       0
set run.writeBitstream 0

####Report and DCP controls - values: 0-required min; 1-few extra; 2-all
set verbose      1
set dcpLevel     1

####Output Directories
set synthDir  "./Synth"
set implDir   "./Implement"
set dcpDir    "./Checkpoint"
set bitDir    "./Bitstreams"

####Input Directories
set srcDir     "./Sources"
set rtlDir     "$srcDir/hdl"
set prjDir     "$srcDir/prj"
set xdcDir     "$srcDir/xdc"
set coreDir    "$srcDir/cores"
set netlistDir "$srcDir/netlist"

###############################################################
### Top Definition
###############################################################
# NOTE: Top will contain the same connection properties with
# real time and non real time benchmarking
set top "top"
set static "Static"
add_module $static
set_attribute module $static moduleName    $top
set_attribute module $static top_level     1
set_attribute module $static vlog          [list [glob $rtlDir/$top/*.v]]
set_attribute module $static synth         ${run.topSynth}


if { ${rt} == 0 } {
  source nrt/design_nrt.tcl
} else {
  source rt/design_rt.tcl
}

########################################################################
### Task / flow portion
########################################################################
# Build the designs
source $tclDir/run.tcl

