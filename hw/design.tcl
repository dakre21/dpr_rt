# Author: David Akre
# Description: Automated PR process derived from Xilinx tutorial
# but modified for Real Time nature

###############################################################
###   Tcl Variables
###############################################################

# NOTE: Before enabling RT enable bitstream compression in the PRC 

# Forward declarations
# rt = 1 for Real Time 0 Non Real Time
set rt 0

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
set ipDir      "$srcDir/lab"
set prjDir     "$srcDir/prj"
set xdcDir     "$srcDir/xdc"
set coreDir    "$srcDir/cores"
set netlistDir "$srcDir/netlist"

###############################################################
### Top Definition
###############################################################
# NOTE: Top will contain the same connection properties with
# real time and non real time benchmarking

if { ${rt} == 0 } {
  set top_dir "top"
} else {
  set top_dir "top_rt"
}

set top "top"
set static "Static"
add_module $static
set_attribute module $static moduleName    $top
set_attribute module $static top_level     1
set_attribute module $static vlog          [list [glob $rtlDir/$top_dir/*.v]]
set_attribute module $static ip            [list $ipDir/axi_em_ctrl/axi_em_ctrl.xci \
                                                 $ipDir/prc/prc.xci \
                                                 $ipDir/prd/prd.xci \
                                                 $ipDir/axi_dma_ctrl/axi_dma_ctrl.xci \
                                                 $ipDir/axi_rtl/axi_rtl.xci \
                                                 $ipDir/processing_system7_0/processing_system7_0.xci \
                                                 $ipDir/jtag_axi_ctrl/jtag_axi_ctrl.xci \
                                           ]

set_attribute module $static synth         ${run.topSynth}


####################################################################
### RP Module Definitions - Note RM to RP is 1:1 for non-rt
####################################################################

# RP1
set module   "ADD"
set variant1 "add"
set module1_inst "add_1"
synth_module $variant1 $module $rtlDir ${run.rmSynth}

# RP2
set module   "COMP"
set variant2 "comp"
set module2_inst "comp_1"
synth_module $variant2 $module $rtlDir ${run.rmSynth}

# RP3
set module   "DEC"
set variant3 "dec"
set module3_inst "dec_1"
synth_module $variant3 $module $rtlDir ${run.rmSynth}

# RP4
set module   "DIV"
set variant4 "div"
set module4_inst "div_1"
synth_module $variant4 $module $rtlDir ${run.rmSynth}

# RP5
set module   "INC"
set variant5 "inc"
set module5_inst "inc_1"
synth_module $variant5 $module $rtlDir ${run.rmSynth}

# RP6
set module   "MOD"
set variant6 "mod"
set module6_inst "mod_1"
synth_module $variant6 $module $rtlDir ${run.rmSynth}

# RP7
set module   "MUL"
set variant7 "mul"
set module7_inst "mul_1"
synth_module $variant7 $module $rtlDir ${run.rmSynth}

# RP8
set module   "MUX2x1"
set variant8 "mux"
set module8_inst "mux_1"
synth_module $variant8 $module $rtlDir ${run.rmSynth}

# RP9
set module   "REG"
set variant9 "reg"
set module9_inst "reg_1"
synth_module $variant9 $module $rtlDir ${run.rmSynth}

# RP10
set module   "SHL"
set variant10 "shl"
set module10_inst "shl_1"
synth_module $variant10 $module $rtlDir ${run.rmSynth}

# RP11
set module   "SHR"
set variant11 "shr"
set module11_inst "shr_1"
synth_module $variant11 $module $rtlDir ${run.rmSynth}

# RP12
set module   "SUB"
set variant12 "sub"
set module12_inst "sub_1"
synth_module $variant12 $module $rtlDir ${run.rmSynth}


########################################################################
### Configuration (Implementation) Definition - Replicate for each Config
########################################################################
set state "implement"
set config "Config_full_${state}" 

add_implementation $config
set_attribute impl $config top             $top
set_attribute impl $config implXDC         [list $xdcDir/${top}.xdc]
set_attribute impl $config partitions      [list [list $static           $top          $state   ] \
                                                 [list $variant1 $module1_inst implement] \
                                                 [list $variant2 $module2_inst implement] \
                                                 [list $variant3 $module3_inst implement] \
                                                 [list $variant4 $module4_inst implement] \
                                                 [list $variant5 $module5_inst implement] \
                                                 [list $variant6 $module6_inst implement] \
                                                 [list $variant7 $module7_inst implement] \
                                                 [list $variant8 $module8_inst implement] \
                                                 [list $variant9 $module9_inst implement] \
                                                 [list $variant10 $module10_inst implement] \
                                                 [list $variant11 $module11_inst implement] \
                                                 [list $variant12 $module12_inst implement] \
                                           ]

set_attribute impl $config pr.impl         1 
set_attribute impl $config impl            ${run.prImpl} 
set_attribute impl $config verify     	   ${run.prVerify} 
set_attribute impl $config bitstream  	   ${run.writeBitstream} 

if { $rt == 1 } {
  set_attribute impl $config bitstream_settings  [list "BITSTREAM.STARTUP.STARTUPCLK      CCLK"    \
                                                   "BITSTREAM.CONFIG.EXTMASTERCCLK_EN DISABLE" \
                                                   "BITSTREAM.CONFIG.BPI_SYNC_MODE    DISABLE" \
                                                   "BITSTREAM.CONFIG.PERSIST          NO"      \
                                                   "BITSTREAM.GENERAL.COMPRESS        TRUE"   \
                                                 ]
}


########################################################################
### Task / flow portion
########################################################################
# Build the designs
source $tclDir/run.tcl

