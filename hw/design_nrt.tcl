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
set module   "RLE_BlobMerging"
set variant1 "blob_merge"
set module1_inst "bm"
synth_module $variant1 $module $rtlDir ${run.rmSynth}

# RP2
set module  "diffeq_paj_convert"
set variant2 "diffeq1"
set module2_inst "dq1"
synth_module $variant2 $module $rtlDir ${run.rmSynth}

# RP3
set module  "diffeq_f_systemC"
set variant3 "diffeq2"
set module3_inst "dq2"
synth_module $variant3 $module $rtlDir ${run.rmSynth}

# RP4
set module  "sha1"
set variant4 "sha"
set module4_inst "sha"
synth_module $variant4 $module $rtlDir ${run.rmSynth}

########################################################################
### Configuration (Implementation) Definition - Replicate for each Config
########################################################################
set state "implement"
set config "Config_${module1_inst}_${module2_inst}_${module3_inst}_${module4_inst}_${state}" 

add_implementation $config
set_attribute impl $config top             $top
set_attribute impl $config implXDC         [list $xdcDir/${top}.xdc]
set_attribute impl $config partitions      [list [list $static           $top          $state   ] \
                                                 [list $variant1 $module1_inst implement] \
                                                 [list $variant2 $module2_inst implement] \
                                                 [list $variant3 $module3_inst implement] \
                                                 [list $variant4 $module4_inst implement] \
                                           ]
set_attribute impl $config pr.impl         1 
set_attribute impl $config impl            ${run.prImpl} 
set_attribute impl $config verify     	   ${run.prVerify} 
set_attribute impl $config bitstream  	   ${run.writeBitstream} 


