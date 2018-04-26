# Author: David Akre
# Description: Helper tcl script for non real time synthesis, implementation,
# and bitstream creation

####################################################################
### RP Module Definitions - Note RM to RP is 1:1 for non-rt
####################################################################

proc synth_module { variant module rtlDir run.rmSynth } {
  add_module $variant
  set_attribute module $variant moduleName   $module
  set_attribute module $variant vlog         [list $rtlDir/$variant/$variant.v]
  set_attribute module $variant synth        ${run.rmSynth}
}

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


